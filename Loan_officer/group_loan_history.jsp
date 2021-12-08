<%@page import="Classes.group_details"%>
<%@page import="Classes.return_amount_2"%>
<%@page import="Classes.loan_payment_view_2"%>
<%@page import="Classes.loan_payment_view"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.return_amount"%>
<%@page import="Classes.deposit"%>
<%@page import="Classes.loan_giving"%>
<%@page import="Classes.loan_type"%>
<%@page import="Classes.loan_plan"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.members"%>
<%@page import="Classes.Users"%>
<jsp:useBean id="AD" class="ClassDB.DBconnection" scope="page"/>
<% 
  members user1 =AD.getMemberDetails(Integer.parseInt(session.getAttribute("UserID").toString()));
%>
<div class="sidebar">
            <div class="sidebar-tital">
                 <span><img src="mselogo.png" width="80px" height="45px"></span>
                <div>
                <span>Administrator panel</span>
                </div>
            </div>
            <div class="sidebar-main">
               <ul>
                    <li>
                        <a href="menu-panel.jsp?load=00011_start"><span class="fa fa-tachometer"></span><span>Dashboard</span><span></span></a>
                    </li>
                    <li>
                        <a href="#" class="user-btn"><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00021_view_all"><li><span class="fa fa-eye"></span><span>View all members</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new_new"><li><span class="fa fa-user"></span><span>New member registration</span><span></span></li></a>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-money"></span><span>Individual Loan Allocation</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=000311_nw_ln"><li><span class="fa fa-user"></span><span>Start New Loan Application</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00033_ln_bursement"><li><span class="fa fa-eye"></span><span>Loan Waiting  Disbursement</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=000333849_ln_history"><li><span class="fa fa-eye"></span><span>View Members Loan History</span><span></span></li></a>
                             
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#" class="active"><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00070_py_acc"><li><span class="fa fa-users"></span><span>Create New Group</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=0077_group_apply"><li><span class="fa fa-user"></span><span>Start new Application </span><span></span></li></a>
                             <a href="menu-panel.jsp?load=group_loan_disbursment"><li><span class="fa fa-user"></span><span>Loan waiting for Disbursement</span><span></span></li></a>
                               <a href="menu-panel.jsp?load=group_loan_history"><li><span class="fa fa-info"></span><span>Group loan History</span><span></span></li></a>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-money"></span><span>Loan Collection</span><span class="fa fa-chevron-down second"></span></a>
                       <ul>
                            <a href="menu-panel.jsp?load=00044_lp_lst"><li><span class="fa fa-money"></span><span>Individual Loan Collection</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=group_loan_collection"><li><span class="fa fa-money"></span><span>Group Loan Collection</span><span></span></li></a>
                            
                        </ul>
                    </li>
                    
                    
                    
                     
                    <li>
                        <a href="#" class="report-btn"><span class="fa fa-bar-chart"></span><span>Report</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <ul>
                            <a href=""><li><span class="fa fa-line-chart"></span><span>General Report</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=applicationReport"><li><span class="fa fa-line-chart"></span><span>Loan application Report</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=disburseReport"><li><span class="fa fa-line-chart"></span><span>Loan disbursement Report</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=collectionReport"><li><span class="fa fa-line-chart"></span><span>Loan Collection Report</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=savingReport"><li><span class="fa fa-line-chart"></span><span>Saving amount  Report</span><span></span></li></a>
                        </ul>
                            
                        </ul>
                    </li>
                <li>
                        <a href="#"><span class="fa fa-folder-open-o"></span><span>Transaction</span><span class="fa fa-chevron-down third"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00080-trs-new"><li><span class="fa fa-folder-open-o"></span><span>New Deposit</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00081-trs-exp"><li><span class="fa fa-folder-open-o"></span><span>New Expenses</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00082-trs-tr"><li><span class="fa fa-eye"></span><span>Deposit Transaction</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00083-trs-sheet"><li><span class="fa fa-eye"></span><span>Expenses Transaction</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00101-ballance"><li><span class="fa fa-money"></span><span>Account Ballance</span><span></span></li></a>
                        </ul>
                </li>
                
                    <li>
                        <a href="controller.jsp?page=logout"><span class="fa fa-power-off"></span><span>Logout</span><span></span></a>
                    </li>
                </ul>
            </div>
            
        </div>
       
        <div class="main-containt">
            <header1>
                <div class="header-dashboad">
                    <h3><label for="moving"><span class="fa fa-list"></span><span>Dashboard</span></label></h3>
                </div>
               <div class="header-tital">
                    <span><h4>MICRO FINANCE FOR  SMALL ENTERPRISES TANZANIA </h4> </span>
                    <span> Email::&nbsp;&nbsp;msetanzania@gmail.com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone::+255 28271 0007</span>
                </div>
               <div class="header-user">
                    <span><img src="user.jpg" width="45px" height="40px"></span>
                    <span><a href="menu-panel.jsp?load=profile">My Profile</a></span>
                    
                </div>
            </header1>
           <div class="uder-header">
                <div class="name">
                    <span>Welcome ::</span>
                    <span><%=user1.getName()%> &nbsp;&nbsp;<%=user1.getLastName()%></span>
                </div>
                <div class="position">
                    <span>Position::</span>
                    <span><%=user1.getType()%></span>
                </div>
                <div class="date">
                    <span>Login Date::</span>
                    <span> </span>
                    <% java.util.Date d = new java.util.Date();
                   //out.println(d.toString()); %>
                   <%
                  DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                   String formattedDate = df.format(new Date());
                   out.println(formattedDate);
                
                   %>
                   
                </div>
            </div>
            <main>
            
            <div class="main-body-menus">
                <div class="palel-1">
                    
               <div class="panel-1-header">
                        <span>LOAN PAYMENT  PANEL</span>  
                    </div>
                  <div class="panel-1-body">
                       <div class="panel-1-body">

                       <div class="panel panel-primary">
                         <div class="panel-heading">
                             <span><h5><span style="color:  #ffff00; font-weight: bold">MEMBER LOAN HISTORY:</span> </h5></span>
                         </div>
                 <form  id="group_disburse_status">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Loan Completed</a>
                    </li>
                  
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_finish_details" style="border: 1px solid #ccc">
                            Loan Rejected
                     </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                   <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">PART A::</span> &nbsp;&nbsp;
                              List of Members Completed loans Collection 
                             
                               </div>
                            <div class="panel-body">
                   <%
                      if(request.getParameter("confirm-loan")== null){
                      %>
                                <div id="sms4"></div>
                                
                                 <table width="100%" class="table" id="rejected_group">
                  <thead>
                  <th>#</th>
                  <th>GROUP DETAILS</th>
                  <th>LOAN DETAILS</th>
                  <th>RETURN DETAILS</th>
                  <th>STATUS</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                     ArrayList list4=AD.Print_Loan_Group_List_completed();
                                     for(int i=0; i<list4.size(); i++){
                                     group_details lg = (group_details)list4.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Name:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGGroupName()%></span></li>
                                            <li><span>Reg_No #:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGBorrowerID()%></span></li>
                                            <li><span>Loan Ref No:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span class="loanrff"><%=lg.geGtInvoce()%></span></li>
                                           
                                        </ul>
                                        </div>
                                        
                                    </td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Loan ID #:</span><span>;&nbsp;::&nbsp;&nbsp;<%=lg.getGLoanID()%></span></li>
                                            <li><span>Loan Type:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGLoanType()%></span></li>
                                            <li><span>Loan Plan:</span><span>&nbsp;&nbsp;::&nbsp;Months&nbsp;<%=lg.getGLoanPlanName()%>&nbsp;[&nbsp;<%=lg.getGLoanInterest()%>&nbsp;%&nbsp;, &nbsp;<%=lg.getGLoanPenalty()%> &nbsp;%]</span></li>
                                            <li><span>Amount:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGLoanAmount()%></span></li>
                                           
                                        </ul>
                                        </div>
                                    </td>
                                    <td>
                                       
                                       
                                          <div class="rt">
                                        <ul>
                                            <li><span>Applied Date:</span><span>&nbsp;:&nbsp;<%=lg.getGDateAppliedForLoan()%></span></li>
                                            <li><span>Return:</span><span>&nbsp;:&nbsp;<%=lg.getGTotalPayWithInterest()%></span></li>
                                            <li><span> + Penalty:</span><span>&nbsp;::&nbsp;<%=lg.getGTotalPayableWithPenalt()%></span></li>
                                            <li><span>Return Day:</span><span>&nbsp;::&nbsp;&nbsp;<%=lg.getDay()%></span></li>
                                        </ul>
                                        </div>
 
                                    </td>
                                   
                                   
                                    <td>
                                    
                                        <div class="loan-status">
                                            <span><a href="" style=""><%=lg.getGLoanStatus()%></a></span> 
                                        </div>
                                  
                                    </td>
                                    <td style="width: 13%">
                                        <a href="menu-panel.jsp?load=group_loan_history&confirm-loan=true&Ref_ID=<%=lg.getGLoanID()%>&loanID=<%=lg.geGtInvoce()%>" class="btn btn-success"><span class="fa fa-pencil-square-o"> &nbsp;&nbsp;View Members</span></a><br><br>
                                        <a href="#" data-toggle="modal" data-target="#delete_m_details"  class="btn btn-danger history_delete_id_1"><span class="fa fa-trash">&nbsp;&nbsp;Remove Record</span></a>

                                    </td>
                                </tr>
                                
                                <%}%>
                              
                            </tbody>
                        </table>
                    <script>
                      $(document).ready(function() {
          $('#rejected_group').DataTable();
                } );
               </script>
             
                                <br>
                               
                                <div align="center">
                                  
                                    <button type="button" name="btn_payment_details" id="btn_payment_details" class="btn btn-info btn-lg">Preview Next</button>   
                                
                                </div>
                    <%
               }else if(request.getParameter("confirm-loan").toString().equals("true")){
                    group_details fp = AD.Print_Loan_Group_List_individual_History(request.getParameter("loanID"));
                  group_details fp2 = AD.Loan_group_disbursement_find_invoice(request.getParameter("loanID"));
                %>

                                <div id="sms4"></div>
                                
                                <table id="table" class="table">
                                    <thead>
                                    <th>S/N</th>
                                    <th>REG-ID</th>
                                    <th>REF ID</th>
                                    <th>MEMBER FULL NAME</th>
                                    <th>REQUESTED</th>
                                     <th>SAVE A/C</th>
                                     <th>TRANSACT</th>
                                    <th>ACTION</th>
                                    </thead>
                                    <tbody>
                                         <%
                                     ArrayList list401=AD.Print_Loan_Group_List_individual_History_MEMBER(request.getParameter("loanID"));
                                     for(int i=0; i<list401.size(); i++){
                                     group_details lg = (group_details)list401.get(i);
                                     if(lg !=null){
                                   %>
                                        <tr>
                                            <td></td>
                                            <td class="member_id"><%=lg.getGroupMember_ID_sunction()%></td>
                                            <td class="member_ref"><%=lg.getGroupMember_Invoice_sunction()%></td>
                                            <td><%=lg.getGroupMember_Fname_sunction()%> &nbsp;&nbsp;<%=lg.getGroupMember_Mname_sunction()%>&nbsp;&nbsp;<%=lg.getGroupMember_Lname_sunction()%></td>
                                            <td class="rqt"><%=lg.getGroupMember_Amount_sunction()%></td>
                                            <td> <a href="" data-toggle="modal" data-target="#loan_serving"  class="btn btn-info form-control serving"><span class="fa fa-eye"></span></a></td>
                                            <td> <a href="" data-toggle="modal" data-target="#loan_collection"  class="btn btn-warning form-control loan_collection_histtory"><span class="fa fa-eye"></span></a></td>
                                         
                                            <td>
                                                <a href="" data-toggle="modal" data-target="#Activate_Mg_details"  class="btn btn-success form-control member_activate_id_1"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Activate</span></a>
                                            </td>
                                        </tr>
                                        <%} else{%>
                                    <p>No </p>
                                        <%}}%>
                                    </tbody>
                                </table>
                                                <script>
                                    $(document).ready(function() {
                        $('#table').DataTable();
                              } );
                             </script>
                                <br>
           <div id="loan_collection" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN COLLECTION HISTORY</h4>
                    </div>
                    <div class="modal-body">
                       
                        <div id="loansms"></div>
                         
                             <div class="group_mb_amount"></div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
             <script>
                   $(document).ready(function(){
                     $('.loan_collection_histtory').on('click',function(){
                       var gid = $(this).closest('tr').find('.member_ref').text();  
                        var regid = $(this).closest('tr').find('.member_id').text();  
                       $.ajax({
                        url:'group_member_transaction_history.jsp',
                         methode:'POST',
                         data:{gid:gid,regid:regid},
                          success:function(data){
                           //$('#view_bill_list').modal('show');
                          $('.group_mb_amount').html(data);
                       }
                     });
                     });  
                   });
               </script> 
               <div id="loan_serving" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">SERVING AMOUNT</h4>
                    </div>
                    <div class="modal-body">
                       
                        <div id="loansms"></div>
                         
                             <div class="group_mb_serving"></div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
             <script>
                   $(document).ready(function(){
                     $('.serving').on('click',function(){
                        var gid = $(this).closest('tr').find('.member_id').text();
                       $.ajax({
                        url:'member_serving.jsp',
                         methode:'POST',
                         data:{gid:gid},
                          success:function(data){
                           //$('#view_bill_list').modal('show');
                          $('.group_mb_serving').html(data);
                       }
                     });
                     });  
                   });
               </script> 
                                <div align="center">
                                  
                                    <button type="button" name="btn_payment_details" id="btn_payment_details" class="btn btn-info btn-lg">Final Step</button>   
                                
                                </div>
                <%}else{%>
                <%}%>
                            </div>
                            </div>
                    </div>
                     
                    
                    <div class="tab-pane fade" id="finish_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">PART B::</span> &nbsp;&nbsp;
                               List of loan Members rejected
                            </div>
                            <div class="panel-body">
                                <table width="100%" class="table" id="rejected_group">
                  <thead>
                  <th>#</th>
                  <th>GROUP DETAILS</th>
                  <th>LOAN DETAILS</th>
                  <th>RETURN DETAILS</th>
                  <th>STATUS</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                      ArrayList list4=AD.Print_Loan_Group_List_rejected();
                                     for(int i=0; i<list4.size(); i++){
                                     group_details lg = (group_details)list4.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Name:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGGroupName()%></span></li>
                                            <li><span>Reg_No #:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGBorrowerID()%></span></li>
                                            <li><span>Loan Ref No:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span class="refno8"><%=lg.geGtInvoce()%></span></li>
                                           
                                        </ul>
                                        </div>
                                        
                                    </td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Loan ID #:</span><span>;&nbsp;::&nbsp;&nbsp;<%=lg.getGLoanID()%></span></li>
                                            <li><span>Loan Type:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGLoanType()%></span></li>
                                            <li><span>Loan Plan:</span><span>&nbsp;&nbsp;::&nbsp;Months&nbsp;<%=lg.getGLoanPlanName()%>&nbsp;[&nbsp;<%=lg.getGLoanInterest()%>&nbsp;%&nbsp;, &nbsp;<%=lg.getGLoanPenalty()%> &nbsp;%]</span></li>
                                            <li><span>Amount:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getGLoanAmount()%></span></li>
                                           
                                        </ul>
                                        </div>
                                    </td>
                                    <td>
                                       
                                       
                                          <div class="rt">
                                        <ul>
                                            <li><span>Applied Date:</span><span>&nbsp;:&nbsp;<%=lg.getGDateAppliedForLoan()%></span></li>
                                            <li><span>Return:</span><span>&nbsp;:&nbsp;<%=lg.getGTotalPayWithInterest()%></span></li>
                                            <li><span> + Penalty:</span><span>&nbsp;::&nbsp;<%=lg.getGTotalPayableWithPenalt()%></span></li>
                                            <li><span>Return Day:</span><span>&nbsp;::&nbsp;&nbsp;<%=lg.getDay()%></span></li>
                                        </ul>
                                        </div>
 
                                    </td>
                                   
                                   
                                    <td>
                                    
                                        <div class="loan-status">
                                            <span><a href="" style=""><%=lg.getGLoanStatus()%></a></span> 
                                        </div>
                                  
                                    </td>
                                    <td>
                                        <div>
                                            <div class="form-group">
                                                <a href="menu-panel.jsp?load=group_loan_history&confirm-loan=true&Ref_ID=<%=lg.getGLoanID()%>&loanID=<%=lg.geGtInvoce()%>" class="btn btn-success"><span class="fa fa-pencil-square-o"> &nbsp;&nbsp;View Members</span></a>
                                                <a href="" data-toggle="modal" data-target="#delete_member_details"  class="btn btn-danger member_delete_id"><span class="fa fa-trash">Delete</span></a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                
                                <%}%>
                              
                            </tbody>
                        </table>
                    <script>
                      $(document).ready(function() {
          $('#rejected_group').DataTable();
                } );
               </script>
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_finish_details" id="previous_btn_finish_details" class="btn btn-warning btn-lg">Go Back</button>
                                   
                                       
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>

            </form>
                </div> 
                     
                </div>
                    
          
             </div> 
                                <script>
                   $(document).ready(function(){
                       $('.history_delete_id_1').on('click', function(){
                           
                     var bill_id = $(this).closest('tr').find('.loanrff').text();
                 // alert(bill_id);
                     var t2 = '<input type="hidden" id="group_loan_id" name="code" value="'+bill_id+'">';
                        $('#newmid_2').html(t2);
                       });
                       
                       $('#pending_bill_delete').on('submit',function(){
                         event.preventDefault();
                         $.ajax({
                             url:'controller.jsp?page=loan_group_giving&operation=Delete_G_History',
                             methode:'POST',
                             data:$('#pending_bill_delete').serialize(),
                             success:function(){
                                  $('#deletesms').html("<div class='alert alert-success alert-dismissible'><strong>Congratullation!</strong> Loan record deleted successfully <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                setTimeout(function()
                                {
                                document.getElementById('deletesms').innerHTML ='';
                              alert("Exit to view  recorde");
                                location.reload();  
                                },3000); 
                             }
                             
                         });
                       });
                   });
               </script>    
     <div id="delete_m_details" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title">Warning!!</h4>
                    </div>
                    <div class="modal-body">
                        <div id="deletesms"></div>
                         <form method="POST" id="pending_bill_delete">
                             <p id="newmid"></p>
                             <p id="newmid_2"></p>
                            
                             <label>Are You sure you want to reject this Member details? </label>
                            <br>
                            <div id="codedelete">
                                
                            </div>
                            <input type="submit" name="insert" id="delete_invoice" value="Delete" class="btn btn-danger"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
          <script>
                   $(document).ready(function(){
                       $('.member_activate_id_1').on('click', function(){
                           
                     var bill_id = $(this).closest('tr').find('.member_id').text();
                //alert(bill_id);
                     var t2 = '<input type="hidden" id="group_loan_id" name="activate_code" value="'+bill_id+'">';
                        $('#active1').html(t2);
                       });
                       
                       $('#Activate_group_members').on('submit',function(){
                         event.preventDefault();
                         $.ajax({
                             url:'controller.jsp?page=member_registration&operation=member_Activate',
                             methode:'POST',
                             data:$('#Activate_group_members').serialize(),
                             success:function(){
                                  $('#activatesms').html("<div class='alert alert-success alert-dismissible'><strong>Congratullation!</strong> Member Activated successfully <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                setTimeout(function()
                                {
                                document.getElementById('activatesms').innerHTML ='';
                              alert("Exit to view  recorde");
                                location.reload();  
                                },3000); 
                             }
                             
                         });
                       });
                   });
               </script>    
     <div id="Activate_Mg_details" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title">Warning!!</h4>
                    </div>
                    <div class="modal-body">
                        <div id="activatesms"></div>
                        
                         <form id="Activate_group_members">
                             <p id="active1"></p>
                             <p id="active2"></p>
                            
                             <label>Are You sure you want to allow this member for new loan offer? </label>
                            <br>
                            <div id="codedelete">
                                
                            </div>
                            <input type="submit" name="insert" id="delete_invoice0" value="Activate " class="btn btn-success form-control"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>                              
          <script>
                
                    $(document).ready(function(){
                        $('#startdate,#enddate').datepicker({
                            changeMonth: true,
                            changeYear:true,
                            firstDay:1,
                            dateFormat: 'mm/dd/yy'
                        });
                        $('#startdate').datepicker({dateFormat: 'mm-dd-yy'});
                        $('#enddate').datepicker({dateFormat: 'mm-dd-yy'});
                        $('#enddate').change(function(){
                            var start = $('#startdate').datepicker('getDate');
                            var end = $('#enddate').datepicker('getDate');

                            if(start<end){
                                var days = (end - start)/(1000*3600*24);
                                if(days >=0 && days<=5){
                                    var riba = '1 %';
                                    $('#interest').val(riba);
                                    $('#days').val(days);
                                }
                                else if(days >=6 && days<=30){
                                     var riba ='5%';
                                    $('#interest').val(riba);
                                    $('#days').val(days);
                                }
                                 else if(days >=31 && days<=60){
                                     var riba = '25%';
                                    $('#interest').val(riba);
                                    $('#days').val(days);
                                }


                            }
                            else{
                                alert("error");
                            }
                        });

                    });
                </script>
        <div id="previw_member_loan" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN APPLICATION ADJUSTMENT</h4>
                    </div>
                    <div class="modal-body">
                       
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
               
                
                </div>
            </div>
            </div>
        
            </main>
        </div>
  <script>
    $('#btn_payment_details').click(function(){
          $('#list_applicant_details').removeClass('active active_tab1');
          $('#list_applicant_details').removeAttr('href data-toggle');
          $('#applicant_details').removeClass('active');
          $('#list_applicant_details').addClass('inactive_tab1');
          $('#list_finish_details').removeClass('inactive_tab1');
          $('#list_finish_details').addClass('active_tab1 active');
          $('#list_finish_details').attr('href','#finish_details');
          $('#list_finish_details').attr('data-toggle', 'tab');
          $('#finish_details').addClass('active in');

    });
    $('#previous_btn_finish_details').click(function(){
        $('#list_finish_details').removeClass('active active_tab1');
        $('#list_finish_details').removeAttr('href data-toggle');
        $('#finish_details').removeClass('active in');
        $('#list_finish_details').addClass('inactive_tab1');
        $('#list_applicant_details').removeClass('inactive_tab1');
        $('#list_applicant_details').addClass('active_tab1 active');
        $('#list_applicant_details').attr('hre','#applicant_details');
        $('#list_applicant_details').attr('data-toggle','tab');
        $('#applicant_details').addClass('active in');
    });
  
     $('#btn_finish_details').click(function(){
          var error_collection ='';
         if($.trim($('#collection').val()).length === 0){
            error_collection = 'Please pick  weekly collection day';
            $('#error_collection').text(error_collection);
            $('#collection').addClass('has-error');
        }
        else{
            error_collection = '';
            $('#error_collection').text(error_collection);
            $('#collection').removeClass('has-error');
        }
        if(error_collection !==''){
              var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                },4000);
            
            return false;
        }
        else{
        event.preventDefault();
           $.ajax({
                  url:'controller.jsp?page=loan_group_giving&operation=Group_loan_status',
                  methode:'POST',
                  data: $('#group_disburse_status').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan rejected successfully</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                    alert("Exit to view  recorde");
                 location.reload();
                },1000); 
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , Loan rejected  failed please try again!!</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                    alert("Exit to view  recorde");
                 location.reload();
                },1000);
                      }
                   
                
               }
              });
          }       
    });
   
    
</script>

<script>
    $('#document').ready(function(){
        $('.disburse_member_loan1').on('click', function(){
          var bill_id = $(this).closest('tr').find('.member_id').text();
          var ref = $(this).closest('tr').find('.member_ref').text();
         // var amount = $(this).closest('tr').find('.new_loan_ind_am').text();
          var bill_id2 = '<input type="hidden" id="servingpay" name="regid001" value="'+bill_id+'">';
          var ref3 = '<input type="hidden" id="servingpay" name="loanid001" value="'+ref+'">';
         $('#regid').html(bill_id2);
         $('#loanid').html(ref3); 
         
         
        });
      $('#officer_disburse_loan_individual').on('submit', function(){
          event.preventDefault();
          $.ajax({
              url:'controller.jsp?page=loan_group_giving&operation=disburse_loan',
              methode:'POST',
              data:$('#officer_disburse_loan_individual').serialize(),
              success:function(data){
                  $('#officersms').html("<div class='alert alert-success alert-dismissible'><strong>Congratullation!</strong> Member loan disbursed successfully <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                 document.getElementById('dloan').disabled = true,
                $('#dloan').val("Starting to disburse wait....");
              setTimeout(function()
               {
                document.getElementById('officersms').innerHTML ='';
                 document.getElementById('dloan').disabled = false;
                 $('#dloan').val("Disburse this loan");
                 alert("Exit to view  recorde");
                     location.reload();  
            },3000); 
              }
          });
          
      });   
    });
</script>