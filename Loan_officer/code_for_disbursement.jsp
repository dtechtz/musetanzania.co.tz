
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

             pst = con.prepareStatement("SELECT ( members.ID) AS MemberID,members.Reg_ID,members.Fname,members.Mname,members.Lname,members.Phone,members.Group_name, loan_group.ID, (loan_group.Name) AS LoanGroup,group_loan_giving_individual.RegID,group_loan_giving_individual.Invoice,group_loan_giving_individual.Amount,group_loan_giving_individual.Status,group_loan_giving.Invoice,group_loan_giving.Date,group_loan_giving.Status from members  INNER JOIN  loan_group ON members.Group_name = loan_group.ID INNER JOIN group_loan_giving_individual ON group_loan_giving_individual.RegID = members.Reg_ID INNER JOIN group_loan_giving ON group_loan_giving.Invoice = group_loan_giving_individual.Invoice WHERE group_loan_giving_individual.Status = 'RELEASED' AND  group_loan_giving.Date BETWEEN '"+startdate+"' AND '"+enddate+"' ");
           // pst.setString(1, Name);
            rs = pst.executeQuery();
             %>
<p style="color: #006666; padding: 1rem; font-weight: bold; background: #f0f0f0" > GROUP  MEMBER LOAN DISBURSEMENT<span style="float: right"> <a href="PDF.jsp?Report=groupdisburse&startdate=<%=startdate%>&enddate=<%=enddate%>" target="_black" class="btn btn-success"><span class="fa fa-download">&nbsp;&nbsp;Generate Printable Report</span></a></span></p>
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

             pst = con.prepareStatement("SELECT ( members.ID) AS MemberID,members.Reg_ID,members.Fname,members.Mname,members.Lname,members.Phone,members.Group_name, loan_group.ID, (loan_group.Name) AS LoanGroup,loan_giving.Invoice,loan_giving.Reg_ID,loan_giving.Date,loan_giving.Loan_Amount,loan_giving.Status from members  INNER JOIN  loan_group ON members.Group_name = loan_group.ID INNER JOIN loan_giving  ON loan_giving.Reg_ID = members.ID  WHERE loan_giving.Status = 'RELEASED'  AND loan_giving.Date BETWEEN '"+startdate+"' AND '"+enddate+"' ");
           // pst.setString(1, Name);
            rs = pst.executeQuery();
             %>
             <p style="color: #006666; padding: 1rem; font-weight: bold; background: #f0f0f0" > INDIVIDUAL MEMBER LOAN  DISBURSEMENT<span style="float: right"> <a href="PDF.jsp?Report=privatedisburse&startdate=<%=startdate%>&enddate=<%=enddate%>" target="_black" class="btn btn-success"><span class="fa fa-download">&nbsp;&nbsp;Generate Printable Report</span></a></span></p>
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
                                                        <td class="gmember_id"><%=rs.getString("Loan_Amount")%></td>
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
        $('.uploan_loan').click(function(){
      document.getElementById('Member_Upload_loan3').disabled = false;
         var bill_id = $(this).closest('tr').find('.gmember_id').text();
         var refe_id = $(this).closest('tr').find('.ref_id').text();
         var BILL = '<input type="hidden" id="delete_bill" name="app_m_id" value="'+refe_id+'">';
          var REG = '<input type="hidden" id="delete_bill" name="registrationID" value="'+bill_id+'">';
       $('#member_reg').html(bill_id);
       $('#MBID').html(BILL);
       $('#registrationID').html(REG);
      var ginvoice = $('.givo1').val();
      var GroupINVOICE = '<input type="hidden" id="delete_bill" name="Group_invoiceID" value="'+ginvoice+'">';
      $('#ginvoice2').html(GroupINVOICE);
         $('#loan_ref').html(refe_id);
         var group_loan = $('#lamount').val();
         $('#group_loan_re').html(group_loan);
           
        });
        $('#Member_Upload_loan2').on('submit',function(){
             
            event.preventDefault();
            //
        var error_indi_amount ='';
        var error_indi_fee ='';
        var error_indi_fee_payed ='';
        var error_indi_status ='';

        if($.trim($('#amount_payed_individual').val()).length === 0){
            error_indi_amount = 'Indicate member loan amount';
            $('#error_indi_amount').text(error_indi_amount);
            $('#amount_payed_individual').addClass('has-error');
        }
        else{
            error_indi_amount = '';
            $('#error_indi_amount').text( error_indi_amount);
            $('#amount_payed_individual').removeClass('has-error');
        }
        
        //End
        //Lname
         if($.trim($('#ams_new').val()).length === 0){
            error_indi_fee_payed = 'Pay loan application fee';
            $('#error_indi_fee_payed').text(error_indi_fee_payed);
            $('#ams_new').addClass('has-error');
        }
        else{
            error_indi_fee_payed = '';
            $('#error_indi_fee_payed').text(error_indi_fee_payed);
            $('#ams_new').removeClass('has-error');
        }
        
        if(error_indi_amount !=='' || error_indi_fee_payed  !==''){
              var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#membersms').html(error);
                  setTimeout(function(){
                    document.getElementById('membersms').innerHTML='';
                },4000);
            
            return false;
        }
        else{
            
            //
            $.ajax({
                url:"controller.jsp?page=loan_group_giving&operation=individual_appy",
                method:"POST",
                data:$('#Member_Upload_loan2').serialize(),
                success:function(data){
                    $('#membersms').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Member loand successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                document.getElementById('Member_Upload_loan3').disabled = true,
                      $('#Member_Upload_loan3').val("Uploading.....");
                    setTimeout(function()
                                {
                                 document.getElementById('membersms').innerHTML ='';
                                 document.getElementById('Member_Upload_loan3').disabled = true;
                                 $('#Member_Upload_loan3').val("Upload Loan Amount");
                                // $('.members_load_upload_new2').modal('hide');uploan_loan
                                 //document.getElementById('uploan_loan').disabled = true;
                               },3000); 
                         }
                      });
                   }
                 });
    
        /// Group member privew before upload new loan
   $('.group_member_prieview').click(function(){
      var refe_id = $(this).closest('tr').find('.ref_id').text();
     //alert(refe_id);
       $.ajax({
           url:'group-member-list-preview.jsp',
           methode:'POST',
          data:{refe_id:refe_id},
          success:function(data){
            //alert(refe_id);
             $('.ml_pr').html(data);
             alert(data);
          }
       });
   });   
    });
</script>