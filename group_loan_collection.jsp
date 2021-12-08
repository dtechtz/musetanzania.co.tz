
<%@page import="Classes.loan_giving"%>
<%@page import="Classes.group_details"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.deposit"%>
<%@page import="Classes.counting"%>
<%@page import="Classes.expenses_transaction"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
                        <a href="menu-panel.jsp?load=00011_start"  ><span class="fa fa-tachometer"></span><span>Dashboard</span><span></span></a>
                    </li>
                    <li>
                        <a href="" class="user-btn"><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00021_view_all"><li><span class="fa fa-eye"></span><span>View all members</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new_new"><li><span class="fa fa-user"></span><span>New member registration</span><span></span></li></a>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-money"></span><span>Individual Loan Allocation</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=000311_nw_ln"><li><span class="fa fa-user"></span><span>Start New Loan Application</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=00033_ln_lst"><li><span class="fa fa-eye"></span><span>Loan Waiting for Sanction</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00033_ln_bursement"><li><span class="fa fa-eye"></span><span>Loan Waiting  Disbursement</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=000333849_ln_history"><li><span class="fa fa-eye"></span><span>View Members Loan History</span><span></span></li></a>
                             
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#" ><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00070_py_acc"><li><span class="fa fa-users"></span><span>Create New Group</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=0077_group_apply"><li><span class="fa fa-user"></span><span>Start new Application </span><span></span></li></a>
                            <a href="menu-panel.jsp?load=0070_loan_group"><li><span class="fa fa-user"></span><span>Groups waiting for sanction</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=group_loan_disbursment"><li><span class="fa fa-user"></span><span>Loan waiting for Disbursement</span><span></span></li></a>
                               <a href="menu-panel.jsp?load=group_loan_history"><li><span class="fa fa-info"></span><span>Group loan History</span><span></span></li></a>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="active"><span class="fa fa-money"></span><span>Loan Collection</span><span class="fa fa-chevron-down second"></span></a>
                       <ul>
                            <a href="menu-panel.jsp?load=00044_lp_lst"><li><span class="fa fa-money"></span><span>Individual Loan Collection</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=group_loan_collection"><li><span class="fa fa-money"></span><span>Group Loan Collection</span><span></span></li></a>
                            
                        </ul>
                    </li>
                    
                    <li>
                        <a href="menu-panel.jsp?load=00050_ln_type"><span class="fa fa-gg"></span><span>Loan Type</span><span></span></a>
                    </li>
                    <li>
                        <a href="menu-panel.jsp?load=00060_ln_pl"><span class="fa fa-sliders"></span><span>Loan Plan</span><span></span></a>
                    </li>
                     
                    <li>
                        <a href="#" class="report-btn"><span class="fa fa-bar-chart"></span><span>Report</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href=""><li><span class="fa fa-line-chart"></span><span>General Report</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=applicationReport"><li><span class="fa fa-line-chart"></span><span>Loan application Report</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=sanctionReport"><li><span class="fa fa-line-chart"></span><span>Loan sanction Report</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=disburseReport"><li><span class="fa fa-line-chart"></span><span>Loan disbursement Report</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=collectionReport"><li><span class="fa fa-line-chart"></span><span>Loan Collection Report</span><span></span></li></a>
                           <a href="menu-panel.jsp?load=savingReport"><li><span class="fa fa-line-chart"></span><span>Saving amount  Report</span><span></span></li></a>
                            
                        </ul>
                    </li>
                <li>
                        <a href="#" class="setting-btn"><span class="fa fa-cogs"></span><span>General setting</span><span class="fa fa-chevron-down fifth"></span></a>
                         <ul>
                            <a href="menu-panel.jsp?load=00090-stg-acc"><li><span class="fa fa-money"></span><span>Create Payment Account</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=001000ac"><li><span class="fa fa-users"></span><span>Users Management</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00091-stg-ctg"><li><span class="fa fa-eye"></span><span>Income Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00100-exp-cate"><li><span class="fa fa-eye"></span><span>Expenses Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00092-pay-method"><li><span class="fa fa-money"></span><span>Payment method</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_new_reg"><li><span class="fa fa-money"></span><span>Upload Tanzania Regional</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_new_dist"><li><span class="fa fa-money"></span><span>Upload new District</span><span></span></li></a>
                        </ul>
                   </li>
                 <li>
                        <a href="#" class="setting-btn"><span class="fa fa-cogs"></span><span>General setting</span><span class="fa fa-chevron-down fifth"></span></a>
                         <ul>
                            <a href="menu-panel.jsp?load=00090-stg-acc"><li><span class="fa fa-money"></span><span>Create Payment Account</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=001000ac"><li><span class="fa fa-users"></span><span>Users Management</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00091-stg-ctg"><li><span class="fa fa-eye"></span><span>Income Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00100-exp-cate"><li><span class="fa fa-eye"></span><span>Expenses Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00092-pay-method"><li><span class="fa fa-money"></span><span>Payment method</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_new_reg"><li><span class="fa fa-money"></span><span>Upload Tanzania Regional</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_new_dist"><li><span class="fa fa-money"></span><span>Upload new District</span><span></span></li></a>
                        </ul>
                   </li>
                     <li>
                         <a href="#"><span class="fa fa-database"></span><span>Database Backup</span><span></span></a>
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
                        <span>LOAN GIVING LIST & LOAN CONFIRMATION</span>  
                    </div>
              
                   <div class="panel-1-body">
                      <%
                      if(request.getParameter("confirm-loan")== null){
                      %>
                 <table width="100%" class="table" id="example">
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
                                      ArrayList list4=AD.Print_Loan_Group_List_collection();
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
                                            <li><span>Loan Ref No:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.geGtInvoce()%></span></li>
                                           
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
                                            <a href="menu-panel.jsp?load=group_loan_collection&confirm-loan=true&Ref_ID=<%=lg.getGLoanID()%>&loanID=<%=lg.geGtInvoce()%>" class="btn btn-success form-control">View Members</a></br></br>
                                               
                                        </div>
                                    </td>
                                </tr>
                                
                                <%}%>
                              
                            </tbody>
                        </table>
                    <script>
                      $(document).ready(function() {
          $('#example').DataTable();
                } );
               </script>
                
              </div>
                <%
               }else if(request.getParameter("confirm-loan").toString().equals("true")){
                loan_giving log = AD.Print_Loan_Group_List_To_Edit();
                %>
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                             <span><h5><span style="color:  #ffff00; font-weight: bold">LOAN COLLECTION AREA:</span> </h5></span>
                  </div>
                 <form  id="group_disburse_status">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Group Members</a>
                    </li>
                  
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_finish_details" style="border: 1px solid #ccc">
                            Complete Collection
                     </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                   <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 01::</span> &nbsp;&nbsp;
                               GROUP MEMBERS LOAN COLLECTION 
                               <%
                                group_details fp = AD.Print_Loan_Group_List_individual_Collection(request.getParameter("loanID"));
                               group_details fp2 = AD.Loan_group_disbursement_find_invoice(request.getParameter("loanID"));
                               if(fp!=null){
                               %>
                              
                               </div>
                            <div class="panel-body">
                                <div id="sms4"></div>
                                
                                <table id="table" class="table">
                                    <thead>
                                    <th>ID</th>
                                    <th>MEMBERS DETAILS</th>
                                    <th>LOAN OFFERED DETAILS</th>
                                     <th>LOAN COLLECTION</th>
                                     <th>STATUS</th>
                                    <th>ACTION</th>
                                    </thead>
                                    <tbody>
                                         <%
                                     ArrayList list401=AD.Print_Loan_Group_List_collection_individual(request.getParameter("loanID"));
                                     for(int i=0; i<list401.size(); i++){
                                     group_details lg = (group_details)list401.get(i);
                                     if(lg !=null){
                                   %>
                                        <tr>
                                            <td></td>
                                            <td>
                                            <div class="rt">
                                            <ul>
                                            <li><span>Name:</span><span>;&nbsp;::&nbsp;&nbsp;<%=lg.getGFname_Collection()%> &nbsp;&nbsp;&nbsp;<%=lg.getGLname_Collection()%></span></li>
                                            <li><span>Group_Name:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span><%=lg.getGGroupName_Collection()%></span></li>
                                            <li><span>Reg_ID:&nbsp;&nbsp;::</span><span class="regid"><%=lg.getGMember_Reg_ID_Collection()%></span></li>
                                            <li><span>Contact:</span><span>&nbsp;&nbsp;::<%=lg.getGphone_Collection()%>&nbsp;</span></li>
                                           
                                        </ul>
                                        </div>
                                            </td>
                                            <td >
                                               <ul>
                                                   <li><span>Loan Ref#:;&nbsp;::&nbsp;&nbsp;</span><span class="b_id"><%=lg.getGIndivial_Invoce_Collection()%></span></li>
                                            <li><span>Loan ID#:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span class="loanid"><%=lg.getGLoanID_Collection()%></span></li>
                                            <li><span>Loan Type:&nbsp;&nbsp;&nbsp;</span><span><%=lg.getGIndivialLoanType_collection()%></span></li>
                                            <li><span>Loan Plan:</span><span>&nbsp;&nbsp;::&nbsp;Days&nbsp;<%=lg.getGIndivial_LoanPlanName_collection()%>&nbsp;[&nbsp;<%=lg.getGIndividal_LoanInterest_collection()%>&nbsp;%&nbsp;, &nbsp;<%=lg.getGIndivial_LoanPenalty_collection()%> &nbsp;%]</span></li>
                                            <li><span>Amount Requested:&nbsp;&nbsp;:</span><span class="lqst"><%=lg.getGInvidual_loan_Collection()%></span></li>
                                        </ul> 
                                            </td>
      
                                                 <td >
                                               <ul>
                                                   <li><span>Released date#:;&nbsp;::</span><span  class="ask_amount"><%=lg.getGApproved_date_Collection()%></span></li>
                                            <li><span>End of return#:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span class="expire"><%=lg.getGEnd_date_Collection()%></span></li>
                                            <li><span>Amount returnable:&nbsp;&nbsp;::&nbsp;</span><span class="pure_request" id="pure_request"><%=lg.getGIndividualTotalPayWithInterest_collection()%></span></li>
                                            <li><span>Amount Collected:&nbsp;&nbsp;::&nbsp;</span><span class="payed"><%=lg.getGIndivial_payable_Collection()%></span></li>
                                            <li><span>Loan duration:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span class="dayss"><%=lg.getGIndivial_LoanPlanName_collection()%></span></li>
                                            <li><span>Day per installment:&nbsp;&nbsp;::</span><span class="deyi"><%=lg.getGDaysInstallment_Collection()%></span></li>
                                            <li><span>Collection day:&nbsp;&nbsp;:</span><span><%=lg.getWeek_Days_Collection()%></span></li>
                                            <li><span>Next Collection Date:&nbsp;&nbsp;:</span><span class="next"><%=lg.getGNextDate_Collection()%></span></li>
                                        </ul> 
                                            </td>
                                            <td>
                                                <div class="loan-status">
                                                     <span><a href="" style=""><%=lg.getGIndividualLoanStatus_Collection()%></a></span>
                                                    
                                                </div>
                                                </td>
                                                <td style="width: 15%">
                                                <a href="#" data-toggle="modal" data-target="#update_serving_amount5" id="sss" class="serving_update btn btn-success">Collect Loan...</a></br></br>
                                                <a href="#"data-toggle="modal" data-target="#loan_collection" class="serving_update btn btn-warning dtc">Collect History</a></br></br>
                                                <a href="#"data-toggle="modal" data-target="#loan_serving" class="serving_update btn btn-info serving">Saving  History</a>
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
                                <%} else{%>
                                <%}%>
                                <div align="center">
                                  
                                    <button type="button" name="btn_payment_details" id="btn_payment_details" class="btn btn-info btn-lg">Final Step</button>   
                                
                                </div>
                            </div>
                            </div>
                    </div>
             <div id="loan_serving" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">SAVING AMOUNT</h4>
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
                        var gid = $(this).closest('tr').find('.regid').text();
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
                     $('.dtc').on('click',function(){
                       var gid = $(this).closest('tr').find('.b_id').text();  
                        var regid = $(this).closest('tr').find('.regid').text();  
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
                     
                    <div class="tab-pane fade" id="finish_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 02::</span> &nbsp;&nbsp;
                               FINISH  LOAN SANCTION 
                            </div>
                            <div class="panel-body">
                                <input type="hidden" name="invoice_approve" id="invoice_approve" value="">
                                <div id="lastsms"></div>
                                <%
                                if(fp2 !=null){
                                %>
                                <input type="hidden" value="<%=fp2.getInvoiceForDisbursement()%>" name="disburse_status" id="accept_loan_group">
                                <%
                                    }else{
                                %>
                                <% }%>
                                <div class="alert alert-info" role="alert">
                                    <h4 class="alert-heading">TAARIFA MUHIMU! </h4>
                                <p>Hii ni hatua  ya mwisho ya kufanya makusanyo ya mkopo katika kikundi hiki , hakikisha kila mwanachama  amekamilisha makusanyo kabla ya kuthibitisha</p>
                                <hr>
                                <p class="mb-0">.</p>
                                </div>
                                
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_finish_details" id="previous_btn_finish_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="previous_btn_finish_details" id="btn_finish_details" class="btn btn-success btn-lg">Finish Group Loan Collection</button>
                                       
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    <%}%>
            </form>
                </div> 
            <div id="update_serving_amount5" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN COLLECTION</h4>
                    </div>
                    <div class="modal-body">
                       
                        <div id="loansms100"></div>
                         <form method="POST" id="loan_pay_disbursement">
                             <p id="userid"></p>
                             <p id="loanid"></p>
                            
                           <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Loan Ref: #</label>
                            <div class="col-sm-8">
                              <p id="INV" class="form-control" style="background:  #f0f0f0"></p>
                                  <p id="INV1"></p>
                            </div>
                          </div>
                              <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Loan + Interest</label>
                            <div class="col-sm-8">
                              <p id="lint" class="form-control" style="background:  #f0f0f0"></p>
                               <p id="deyi"></p>
                            </div>
                          </div>
                              <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Loan Duration (Days)</label>
                            <div class="col-sm-8">
                              <p id="DY" class="form-control" style="background:  #f0f0f0"></p>
                               <p id="deyi"></p>
                            </div>
                          </div>
                           
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Next Collection Date</label>
                            <div class="col-sm-8">
                              <p id="end_date" class="form-control"></p>
                            </div>
                          </div>
                            <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb"></label>
                            <div class="col-sm-8">
                              <p id="penaltyday"  class="form-control" style="background:  #f0f0f0"></p>
                                  <p id="pena2"></p>
                                  <p id="exp"></p>
                                  <span id="error_loan_penaltyday" class="text-danger"></span>
                            </div>
                            
                          </div>
                            
                            <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Returnable Loan Amount</label>
                            <div class="col-sm-8">
                              <p id="PURE_M" class="form-control" style="background: #006666; color:  #ffff00; font-weight: bold; font-size: 18px;"></p>
                                  <span id="error_pay_save" class="text-danger"></span>
                            </div>
                          </div>  
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Collection installment</label>
                            <div class="col-sm-8">
                              <p id="installment"  class="form-control" style="background:  #f0f0f0"></p>
                                  <span id="error_loan_order" class="text-danger"></span>
                            </div>
                          </div>
                         <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Collection  per installment</label>
                            <div class="col-sm-8">
                              <p id="apsm" class="form-control" style="background:  #f0f0f0"></p>
                                  <span id="error_loan_order" class="text-danger"></span>
                            </div>
                          </div>
                          
                          <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Total Loan Collected</label>
                            <div class="col-sm-8">
                              <p id="RIT"></p>
                            </div>
                          </div> 
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Total Loan Collected</label>
                            <div class="col-sm-8">
                               <p id="RIT1"></p>
                            </div>
                          </div> 
                          <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Enter Return amount</label>
                            <div class="col-sm-8">
                              <input type="text" name="loan_disburse1" autocomplete="off" id="loan_disburse1" class="form-control">
                                  <span id="error_loan_disburse" class="text-danger"></span>
                            </div>
                          </div> 
                        <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Enter Serving amount [ Not bellow 5000/= ]</label>
                            <div class="col-sm-8">
                              <input type="text" name="loan_serving" autocomplete="off" id="loan_serving12" class="form-control">
                                  <span id="error_serving" class="text-danger"></span>
                            </div>
                          </div> 
                            <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Collection Date</label>
                            <div class="col-sm-8">
                              <input type="date" name="Collect_date" autocomplete="off" id="Collect_date" class="form-control">
                                  <span id="error_date" class="text-danger"></span>
                            </div>
                          </div> 
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Next Collection Date</label>
                            <div class="col-sm-8">
                              <input type="date" name="next_date" autocomplete="off" id="next_date" class="form-control">
                              <span id="error_next_date" class="text-danger"></span>
                            </div>
                          </div> 
                              <div class="form-group">
                                  <label>Loan Status</label>
                                  <p id="return_update_status" class="form-control" style="background:  #006666; color:  #ffff00; font-weight:  bold"></p>
                                  <p id="return_update_status1"></p>
                                  <span id="error_laon_status" class="text-danger"></span>
                              </div>
                            <input type="submit" name="insert" id="loan_disburse_loan" value="Click me to Collect loan " class="btn btn-success form-control"/>
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
           $('#loan_pay_disbursement').on('submit',function(){
            event.preventDefault();
           var error_loan_disburse ='';
            var error_serving ='';
           if($.trim($('#loan_disburse1').val()).length === 0){
            error_loan_disburse = 'Please indicate amount to collect';
            $('#error_loan_disburse').text(error_loan_disburse);
            $('#loan_disburse1').addClass('has-error');
         }
        else{
            error_loan_disburse = '';
            $('#error_loan_disburse').text( error_loan_disburse);
            $('#loan_disburse1').removeClass('has-error');
        } 
      if($.trim($('#loan_serving12').val()).length === 0 ){
            error_serving = 'No serving amount Uploaded';
            $('#error_serving').text(error_serving);
            $('#loan_serving12').addClass('has-error');
         }
         else if(($.trim($('#loan_serving12').val()) < 5000)){
              error_serving = 'Serving amount must start from 5000/=';
            $('#error_serving').text(error_serving);
            $('#loan_serving12').addClass('has-error');
         }
        else{
            error_serving = '';
            $('#error_serving').text( error_serving);
            $('#loan_serving12').removeClass('has-error');
        } 
      
        if(error_loan_disburse !== ''|| error_serving !=='' ){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms3').html(error);
                  setTimeout(function(){
                    document.getElementById('sms3').innerHTML='';
                },4000);
                return false;
        }
        else{
            event.preventDefault();
          $.ajax({
                  url:'controller.jsp?page=loan_group_giving&operation=collect_loan',
                  methode:'POST',
                  data:$('#loan_pay_disbursement').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Transaction successfully</div>';
                  $('#loansms100').html(error);
                  document.getElementById('loan_disburse_loan').disabled =true;
                  setTimeout(function(){
                    document.getElementById('loansms100').innerHTML='';
                    document.getElementById('loan_disburse_loan').disabled =false;
                    
                      location.reload();
                },2000);
             
                
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , Transaction  failed please try again!!</div>';
                  $('#loansms100').html(error);
                  setTimeout(function(){
                    document.getElementById('loansms100').innerHTML='';
                      $('#update_serving_amount5').modal('hide');  
                },3000);
                //$('#insert_form1')[0].reset();
                //$('#add_patient').modal('hide');   
                          
                      }
                   
                
               }
              });
         
      }
    });
             
         });
     </script>
             <script>
                   $(document).ready(function(){
                    $('.serving_update').on('click',function(){
                   var amount_requested = $(this).closest('tr').find('.lqst').text();
                    var penadays = $(this).closest('tr').find('.dayss').text();
                   var bill_id = $(this).closest('tr').find('.b_id').text();
                   var userid = $(this).closest('tr').find('.regid').text();
                    var loanid = $(this).closest('tr').find('.loanid').text();
                   var amunt = $(this).closest('tr').find('.pure_request').text();
                   var payed = $(this).closest('tr').find('.payed').text();
                    var day = $(this).closest('tr').find('.dayss').text();
                    var day2 = $(this).closest('tr').find('.deyi').text();
                     var lqst = $(this).closest('tr').find('.lqst').text();
                    //date pale
                    var end = $(this).closest('tr').find('.next').text();
                     var exp = '<input type="hidden" id="lipa" name="exp" value="'+end+'">'; 
                     var day1 = new Date(exp); 
                     var todaye = new Date();
                      var dif = todaye.getTime()- day1.getTime();
                      var value = Math.ceil(dif /(1000 * 3600 *24));
                      $('#penaltyday').html(value);
                     //end date 
                     //processing fee
                     var ttr = penadays/30;
                    
                     var pena2 = '<input type="hidden" id="lipa" name="pena2" value="'+value+'">';
                     $('#pena2').html(pena2);
                     var pena3 = $('#penaltyday').text();
                     // end penalt
                     var t1 = '<input type="hidden" id="lipa" name="lipa" value="'+day2+'">';
                     var t2 = '<input type="hidden" id="lipa" name="returned" value="'+payed+'">';
                     var INV1 = '<input type="hidden" id="lipa" name="member_user_bill" value="'+bill_id+'">';
                     var t4 = '<input type="hidden" id="lipa" name="member_user" value="'+userid+'">';
                     var t3 = '<input type="hidden" id="lipa" name="loan_id" value="'+loanid+'">';
                     
                     $('#ps').html(t1);
                      $('#INV').html(bill_id); 
                      $('#INV1').html(INV1);  
                      $('#userid').html(t4); 
                      $('#loanid').html(t3); 
                      $('#RIT').html(payed);
                     $('#RIT1').html(payed);
                    $('#DY').html(day);  
                    $('#deyi').html(t1); 
                     $('#end_date').html(end);
                     $('#exp').html(exp);
                    var  installment = day / day2;
                   $('#installment').html(installment.toFixed(0));
                     if(pena3 < 0){
                          var lb = 'Days left';
                        $('#lb').html(lb);
                     }else{
                         var lb = 'Days Passed';
                        $('#lb').html(lb); 
                     }
                       
                        var ttt = amunt;
                         $('#lint').html(ttt);
                         var retunable = parseFloat(ttt); 
                        $('#PURE_M').html(retunable.toFixed(0)); 
                        // amount per installmeny
                         var amount_per_installment = retunable /installment.toFixed(0);
                         $('#apsm').html(amount_per_installment.toFixed(0));
                        var x = $(this).closest('tr').find('.deyi').text();
                     var t1 = '<input type="hidden" id="lipa" name="lipa" value="'+amount_per_installment+'">';
                        
                        // emd of installment
                       
                                var ttt = amunt;
                                $('#lint').html(ttt);
                             var retunable = parseFloat(ttt); 
                             $('#PURE_M').html(retunable.toFixed(0)); 
                             
                              // amount per installmeny
                               var amount_per_installment = retunable /installment.toFixed(0);
                               $('#apsm').html(amount_per_installment.toFixed(0));
                               var x = $(this).closest('tr').find('.deyi').text();
                               var t1 = '<input type="hidden" id="lipa" name="lipa" value="'+amount_per_installment+'">';
                        
                        //   emd of installment
                             var pena_cent ='<div class="alert alert-success"> No Penalty</div>';
                             var exp_cent = "Penalty percentage";
                             $('#pena_cent').html(pena_cent);
                             $('#exp_cent').html(exp_cent);
                             
                             // statement for no amount added as penalty
                             var am1 = '0.0';
                             $('#apsm_pena').html(am1);

                        
                    });
                   });
       </script>
       
       <script>
           function calc() {
                        
              var request = $('#PURE_M').text();
              var collected = $('#RIT1').text();
              var pay = $('#loan_disburse1').val();
              var todate = (parseFloat(collected) + parseFloat(pay));
              var rs = '<input type="text" id="servingpay" class="form-control" name="uploan_collected_am" value="'+todate+'">';  
              $('#RIT').html(rs);
              var todate2 = (parseFloat(todate)- parseFloat(request));
            
                 //var return_status = '<input type="hidden" id="servingpay" name="loan_ap_status" value="'+paid+'">';
            if(todate2 < 0){
               
               var ss = 'RELEASED';
               $('#return_update_status').html(ss);
               var return_status = '<input type="hidden" id="servingpay" name="alert" value="'+ss+'">';  
            $('#return_update_status1').html(return_status);
            }
            else if(todate2 >= 0){
               var ss1 = 'COMPLETED';
               $('#return_update_status').html(ss1);
                var return_status = '<input type="hidden" id="servingpay" name="alert" value="'+ss1+'">';  
            $('#return_update_status1').html(return_status);
            }
            else{
                 var ss = 'RELEASED';
               $('#return_update_status').html(ss);
               var return_status = '<input type="hidden" id="servingpay" name="alert" value="'+ss+'">';  
            $('#return_update_status1').html(return_status);
            }
           
             
          }
           $("#loan_disburse1").keyup(function() {
                calc();
         });
         
     </script>
     
         <div id="disburse_member_loan" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN DISBURSEMENT</h4>
                    </div>
                    <div class="modal-body">
                        <div id="officersms"></div>
                         <form method="POST" id="officer_disburse_loan_individual">
                             <p id="regid"></p>
                              <p id="regid2"></p>
                               <p id="loanid"></p>
                              <p id="loanid2"></p>
                            <div class="form-group">
                                 <label>Date of Confirmation</label>
                                 <input type="text" id="startdate" autocomplete="off"  name="startdate" class="form-control">
                             </div>
                              <div class="form-group">
                                 <label>End of Return</label>
                                 <input type="text" id="enddate" autocomplete="off" name="enddate" class="form-control">
                             </div>
                              <div class="form-group">
                                 <label>Total number of days</label>
                                 <input type="text" readonly="true" id="days" autocomplete="off" name="amount_100" class="form-control">
                             </div>
                              <div class="form-group">
                                 <label>Number of day per single team of collection</label>
                                 <input type="number" autocomplete="off" name="total_term_days" class="form-control">
                             </div>
                            
                           <input type="submit" name="insert" id="dloan" value="Disburse this loan" class="btn btn-success form-control"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
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
        event.preventDefault();
           $.ajax({
                  url:'controller.jsp?page=loan_group_giving&operation=Group_loan-Finish_status',
                  methode:'POST',
                  data: $('#group_disburse_status').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan collection completed successfully</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                    alert("Exit to view  recorde");
                 location.reload();
                },1000); 
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , Completeing laon collection failed please try again!!</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                    alert("Exit to view  recorde");
                 location.reload();
                },1000);
                      }
                   
                
               }
              });
                
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