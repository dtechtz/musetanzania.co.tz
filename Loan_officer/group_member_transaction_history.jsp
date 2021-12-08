
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

       String  Name=request.getParameter("gid");
       String  id=request.getParameter("regid");
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

             pst = con.prepareStatement("SELECT * FROM group_return WHERE Invoice = ? AND UserID =?");
            pst.setString(1, Name);
             pst.setString(2, id);
            rs = pst.executeQuery();
             %>

               <table id="table4" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>S/N</th>
                                                        <th>Invoice</th>
                                                        <th>Return_Amount:</th>
                                                        <th class="text-center">Return Date</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                
                                                 <%
                                                  while(rs.next()){
                                                 %>
                                                    <tr>
                                                        <td></td>
                                                        <td class="ref_id"><%=rs.getString("Invoice")%></td>
                                                        <td class="gmember_id"><%=rs.getString("Return_Amount")%></td>
                                                        <td><%=rs.getString("Date")%> </td>
                                                        
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