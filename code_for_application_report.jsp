
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include  file="repoconnect.jsp" %>
<%

       String  startdate = request.getParameter("stardate");
       String  enddate = request.getParameter("enddate");
        PreparedStatement pst =null;   
        ResultSet rs;
        try {
            if(con.isClosed()){
               try {
            
                 Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://musetz_db/msetz_db","root","@musetz_db");
               } catch (Exception ex) {
                  
               }
            }

             pst = con.prepareStatement("SELECT ( members.ID) AS MemberID,members.Reg_ID,members.Fname,members.Mname,members.Lname,members.Phone,members.Group_name, loan_group.ID, (loan_group.Name) AS LoanGroup,group_loan_giving_individual.RegID,group_loan_giving_individual.Invoice,group_loan_giving_individual.Amount,group_loan_giving_individual.Status,group_loan_giving.Invoice,group_loan_giving.Date,group_loan_giving.Status from members  INNER JOIN  loan_group ON members.Group_name = loan_group.ID INNER JOIN group_loan_giving_individual ON group_loan_giving_individual.RegID = members.Reg_ID INNER JOIN group_loan_giving ON group_loan_giving.Invoice = group_loan_giving_individual.Invoice WHERE group_loan_giving.Status = 'For Approval' AND  group_loan_giving.Date BETWEEN '"+startdate+"' AND '"+enddate+"' ");
           // pst.setString(1, Name);
            rs = pst.executeQuery();
             %>
             <p style="color: #006666; padding: 1rem; font-weight: bold; background: #f0f0f0" > GROUP  MEMBER   <span style="float: right"><a href="PDF.jsp?Report=groupapplication&startdate=<%=startdate%>&enddate=<%=enddate%>" target="_black" class="btn btn-success"><span class="fa fa-download">&nbsp;&nbsp;Generate Printable Report</span></a></span></p>
               <table id="table4" class="table">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 3%">#</th>
                                                        <th  style="width: 8%">Member_ID</th>
                                                        <th  style="width: 10%">Loan_ID:</th>
                                                         <th  style="width: 16%">Group Name:</th>
                                                        <th class="text-center">Client Name</th>
                                                        <th style="width:3%">Amount</th>
                                                        <th style="width:3%">Date</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                 <%
                                                  while(rs.next()){
                                                 %>
                                                    <tr>
                                                        <td></td>
                                                        <td class="gmember_id"><%=rs.getString("Reg_ID")%></td>
                                                        <td><%=rs.getString("Invoice")%> </td>
                                                        <td><%=rs.getString("LoanGroup")%> </td>
                                                        <td><%=rs.getString("Fname")%> &nbsp;&nbsp;<%=rs.getString("Mname")%>&nbsp;&nbsp;<%=rs.getString("Lname")%></td>
                                                        <td class="gmember_id"><%=rs.getString("Amount")%></td>
                                                        <td><%=rs.getString("Date")%> </td>
                                                         <td><%=rs.getString("Status")%> </td>
                                                    </tr>
                                                    <%}%>  
                                                    
                                                    </tbody>
                                               
                                            </table>
                                   <script>
                      $(document).ready(function() {
                $('#table4').DataTable({
                     dom: 'lBfrtip',
                    buttons:[
                        'print',
                        'excel',
                        'pdf'
                    ]
                });
                 } );
               </script>
  
       <%
           
        } catch (SQLException ex) {
             //Logger.getLogger(class.getName()).log(Level.SEVERE, null, ex);
        }
      finally{
                if(con != null)  try {
                         con.close();
                        
                       } catch (SQLException ex) {
                // Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
             }
             if(pst != null)  try {
                        pst.close();
                        
                      } catch (SQLException ex) {
                  //Logger.getLogger(ClassDB.class.getName()).log(Level.SEVERE, null, ex);
             }
             if(pst != null)  try {  
              pst.close();
                 } catch (SQLException ex) {
                 // Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
              }   
                       
                    
         }
%>


<%

        try {
            if(con.isClosed()){
               try {
                 Class.forName("com.mysql.jdbc.Driver");
                  con = DriverManager.getConnection("jdbc:mysql://localhost/mse_db","root","");
               } catch (Exception ex) {
                  
               }
            }

             pst = con.prepareStatement("SELECT ( members.ID) AS MemberID,members.Reg_ID,members.Fname,members.Mname,members.Lname,members.Phone,members.Group_name, loan_group.ID, (loan_group.Name) AS LoanGroup,loan_giving.Invoice,loan_giving.Reg_ID,loan_giving.Date,loan_giving.Loan_Amount,loan_giving.Status from members  INNER JOIN  loan_group ON members.Group_name = loan_group.ID INNER JOIN loan_giving  ON loan_giving.Reg_ID = members.ID  WHERE loan_giving.Status = 'PAID'  AND loan_giving.Date BETWEEN '"+startdate+"' AND '"+enddate+"' ");
           // pst.setString(1, Name);
            rs = pst.executeQuery();
             %>
             <p style="color: #006666; padding: 1rem; font-weight: bold; background: #f0f0f0" > INDIVIDUAL MEMBER <span style="float: right"><a href="PDF.jsp?Report=memberapplication&startdate=<%=startdate%>&enddate=<%=enddate%>" target="_black" class="btn btn-success"><span class="fa fa-download">&nbsp;&nbsp;Generate Printable Report</span></a></span></p>
               <table id="table47" class="table">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 3%">#</th>
                                                        <th  style="width: 8%">Member_ID</th>
                                                        <th  style="width: 10%">Loan_ID:</th>
                                                        <th class="text-center">Client Name</th>
                                                        <th style="width:6%">Amount</th>
                                                        <th style="width:4%">Date</th>
                                                        <th>Status</th>
                                                       
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                 <%
                                                  while(rs.next()){
                                                 %>
                                                    <tr>
                                                        <td></td>
                                                        <td class="gmember_id"><%=rs.getString("Reg_ID")%></td>
                                                        <td><%=rs.getString("Invoice")%> </td>
                                                        <td><%=rs.getString("Fname")%> &nbsp;&nbsp;<%=rs.getString("Mname")%>&nbsp;&nbsp;<%=rs.getString("Lname")%></td>
                                                        <td class="appam"><%=rs.getString("Loan_Amount")%></td>
                                                        <td><%=rs.getString("Date")%> </td>
                                                        <td><%=rs.getString("Status")%> </td>
                                                       
                                                    </tr>
                                                   
                                                    <%}%>  
                                                    </tbody>
                                               
                                            </table>
                                   <script>
                      $(document).ready(function() {
                $('#table47').DataTable({
                     dom: 'lBfrtip',
                    buttons:[
                        'print',
                        'excel',
                        'pdf'
                    ]
                });
                 } );
               </script>
  
       <%
           
        } catch (SQLException ex) {
             //Logger.getLogger(class.getName()).log(Level.SEVERE, null, ex);
        }
      finally{
                if(con != null)  try {
                         con.close();
                        
                       } catch (SQLException ex) {
                // Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
             }
             if(pst != null)  try {
                        pst.close();
                        
                      } catch (SQLException ex) {
                  //Logger.getLogger(ClassDB.class.getName()).log(Level.SEVERE, null, ex);
             }
             if(pst != null)  try {  
              pst.close();
                 } catch (SQLException ex) {
                 // Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
              }   
                       
                    
         }
%>

<script>
$(document).ready(function(){
     var total = 0;   
     $('tbody tr td').each(function(){
         total += parseFloat($(this).find('.appam').text());
     });
    // alert(total);
});
</script>