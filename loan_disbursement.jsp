<%@page import="Classes.regionals"%>
<%@page import="Classes.loan_group_details"%>
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
                        <a href="menu-panel.jsp?load=00011_start" ><span class="fa fa-tachometer"></span><span>Dashboard</span><span></span></a>
                    </li>
                    <li>
                        <a href="" class="user-btn"><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00021_view_all"><li><span class="fa fa-eye"></span><span>View all members</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new_new"><li><span class="fa fa-user"></span><span>New member registration</span><span></span></li></a>
                            
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#" class="active"><span class="fa fa-money"></span><span>Individual Loan Allocation</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=000311_nw_ln"><li><span class="fa fa-user"></span><span>Start New Loan Application</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=00033_ln_lst"><li><span class="fa fa-eye"></span><span>Loan Waiting for Sanction</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00033_ln_bursement"><li><span class="fa fa-eye"></span><span>Loan Waiting  Disbursement</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=000333849_ln_history"><li><span class="fa fa-eye"></span><span>View Members Loan History</span><span></span></li></a>
                             
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00070_py_acc"><li><span class="fa fa-users"></span><span>Create New Group</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=0077_group_apply"><li><span class="fa fa-user"></span><span>Start new Application </span><span></span></li></a>
                            <a href="menu-panel.jsp?load=0070_loan_group"><li><span class="fa fa-user"></span><span>Groups waiting for sanction</span><span></span></li></a>
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
                        <span>LOAN DISBURSEMENT PANEL</span>  
                    </div>
                     
                  <div class="panel-1-body">
                      <%
                      if(request.getParameter("confirm-loan")== null){
                      %>
                 <table width="100%" class="table" id="example">
                  <thead>
                  <th>#</th>
                  <th>A/C #</th>
                  <th>MEMBER DETAILS</th>
                  <th>LOAN DETAILS</th>
                  <th>RETURN DETAILS</th>
                  <th>STATUS</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                     ArrayList list4=AD.Print_Loan_List_Appoved();
                                     for(int i=0; i<list4.size(); i++){
                                     loan_giving lg = (loan_giving)list4.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                     <td class="bll_id"><%=lg.getInvoice()%></td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Name:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getFname()%>&nbsp;&nbsp;<%=lg.getLname()%></span></li>
                                            <li><span>Reg_ID #:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getBorrowerID()%></span></li>
                                            <li><span>Contact No:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getPhoneNumber()%></span></li>
                                           
                                        </ul>
                                        </div>
                                        
                                    </td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Loan A/C #:</span><span>;&nbsp;::&nbsp;&nbsp;<%=lg.getInvoice()%></span></li>
                                            <li><span>Loan Type:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getLoanType()%></span></li>
                                            <li><span>Loan Plan:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getLoanPlanName()%> &nbsp;month / s [<%=lg.getLoanInterest()%>&nbsp; % ,<%=lg.getLoanPenalty()%>&nbsp;%]</span></li>
                                            <li><span>Amount:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="ask_amount"><%=lg.getLoanAmount()%> &nbsp;</span>/=</li>
                                           
                                        </ul>
                                        </div>
                                    </td>
                                    <td>
                                       
                                       
                                          <div class="rt">
                                        <ul>
                                            <li><span>Applied Date:</span><span>&nbsp;:&nbsp;&nbsp;<%=lg.getDateAppliedForLoan()%></span></li>
                                            <li><span>Return:</span><span>&nbsp;:&nbsp;&nbsp;<%=lg.getTotalPayWithInterest()%></span></li>
                                           <li><span> + Penalty:</span><span>&nbsp;::&nbsp;&nbsp;<%=lg.getTotalPayableWithPenalt()%></span></li>
                                           
                                        </ul>
                                        </div>
 
                                    </td>
                                   
                                   
                                    <td>
                                    
                                        <div class="loan-status">
                                            <span><a href="" style=""><%=lg.getLoanStatus()%></a></span> 
                                        </div>
                                  
                                    </td>
                                   
                                    <td>

                                        <a href="menu-panel.jsp?load=00033_ln_bursement&confirm-loan=true&Ref_ID=<%=lg.getInvoice()%>" class="btn btn-success"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Disburse Loan</span></a>&nbsp;
                                                
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
                <div id="update_serving_amount5" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN APPLICATION ADJUSTMENT</h4>
                    </div>
                    <div class="modal-body">
                        <div id="repesms"></div>
                         <form method="POST" id="repay_save_amount">
                         
                            <br>
                            <div class="form-group">
                                <label>Loan A/C #</label>
                                <p id="loan_bill_id" class="form-control"></p>
                                <p id="loan_bill_id_2"></p>
                               
                              </div>
                             
                              <div class="form-group">
                                  <label>Re-Pay Serving Amount</label>
                                  <input type="text" name="loan_save3" id="loan_save3" class="form-control">
                                  <span id="error_pay_save" class="text-danger"></span>
                              </div>
                              
                              
                              
                              <div class="form-group">
                                  <label>Loan Status</label>
                                  <select class="form-control" id="repay_status" name="repay_status_10">
                                      <option></option>
                                      <option value="PAID">PAID</option>
                                      <option value="PENDING">PENDING</option>
                                  </select>
                                  <span id="error_status_repay" class="text-danger"></span>
                              </div>
                            <input type="submit" name="insert" value="Change Loan " class="btn btn-success"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
              </div>
                                           
                <%
               }else if(request.getParameter("confirm-loan").toString().equals("true")){
               loan_giving log = AD.Edit_Loan_List_and_Confirm(Integer.parseInt(request.getParameter("Ref_ID")));
             loan_giving log1 = AD.Manager_Loan_List_Confirm(Integer.parseInt(request.getParameter("Ref_ID")));
                %>
                <div class="panel panel-primary">
                         <div class="panel-heading">
                             <span><h5><span style="color:  #ffff00; font-weight: bold">LOAN DISBURSEMENT AREA:</span></h5></span>
                         </div>
                 <form  id="disburse_loan">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Loan Details</a>
                    </li>
                    <li class="nav-item">
                        <a class ="inactive_tab1" id="list_income_details" style="border: 1px solid #ccc">
                            Collection A / C status
                        </a></li>
                    <li class="nav-item">
                        <a class ="inactive_tab1" id="list_referee_details" style="border: 1px solid #ccc">
                            Disburse
                     </a></li>
                     
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Form# FA01::</span> &nbsp;&nbsp;FILL ALL BASIC APPLICANT DETAILS</span></div>
                            <div class="panel-body">
                                 <div class="form-group">
                                    <label>Loan reference ID <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="disbuse_invoice" autocomplete="off"  id="fname" readonly="true" value="<%=log1.manager_view_getInvoice()%>" class="form-control"/>
                                    <input type="hidden" name="member_update_status" value="<%=log1.manager_view_getBorrowerID()%>">
                                    <span id="error_fname" class="text-danger"></span>
                                </div> 
                                <div class="form-group">
                                    <label>Applicant Full Name <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="fname" autocomplete="off" id="fname" readonly="true" value="<%=log1.manager_view_getFname()%> &nbsp;&nbsp;<%=log1.manager_view_getMname()%>&nbsp;&nbsp;<%=log1.manager_view_getLname()%>" class="form-control"/>
                                    <span id="error_fname" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Loan Amount Requested</label>
                                    <input type="text" name="fee_required" id="loan_requested" readonly="true" value="<%=log1.manager_view_getLoanAmount()%>" class="form-control loanpopo">
                                    <span class="text-danger" id="error_fee_required"></span>
                                </div>
                                     <div class="form-group">
                                    <label>Loan Application Fees (3 %)</label>
                                    <p id="loan_ds_3" class="form-control"></p>
                                    <p id="loan_ds_32"></p>
                                    <span class="text-danger" id="error_fee_required"></span>
                                </div>
                                     <div class="form-group">
                                    <label>Loan Amount required to disburse</label>
                                    <p id="disburse_remain" class="form-control"></p>
                                    <span class="text-danger" id="error_fee_required"></span>
                                </div>
                                <br>
                                <div align="center">
                                    <button type="button" name="btn_applicant_details" id="btn_applicant_details" class="btn btn-info btn-lg">Continue to Preview</button>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="income_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 02::</span> &nbsp;&nbsp;
                                COLLECTION ACCOUNT BALLANCE 
                            </div>
                            <div class="panel-body">
                                <div id="sms1"></div>
                                    <%
                                     deposit dp5 = AD.Print_Capital_Balance();
                                    %>
                                <div class="form-group">
                                    <label>Current account ballance in the Database<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" readonly="true" name="business_name" id="pure_amount" autocomplete="off" value="<%=dp5.getDepositBallance()%>" id="business_name" class="form-control"/>
                                    <span id="error_business_name" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>New Account ballance after loan Disbursement<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <p id="new_bala" class="form-control"></p>
                                    <p id="new_ballance" ></p>
                                    <span id="error_income_amount" class="text-danger"></span>
                                </div>
                                
                                <br>
                                <div align="center">
                                    <button type="button" name="previous_btn_income_details" id="previous_btn_income_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="btn_income_details" id="btn_income_details" class="btn btn-info btn-lg">Next</button> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="referee_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 03::</span> &nbsp;&nbsp;
                               FINALIZE LOAN DISBURSEMENT
                            </div>
                            <div class="panel-body">
                                <div id="dissms"></div>
                                <div class="alert alert-success" role="alert">
                                <h4 class="alert-heading">Taarifa Muhimu!</h4>
                                <p>Hii ni hatua ya mwisho kabisa ya kufanya uhakiki wa mkopo, Tafadhali hakikisha  umejiridhisha  na taarifa zote za mwombaji kuwa ni sahihi kabula ya kuidhinisha mkopo wake</p>
                                <hr>
                                <p class="mb-0">Kama hujaridhika na taarifa za mwombaji una uwezo wa kukataa au kurudi nyuma kufanya mabadiliko.</p>
                                </div>
                                <div class="form-group">
                                    <label>Date of Confirmation</label>
                                    <input type="text" class="form-control" autocomplete="off"  id="startdate" placeholder="day / month/Year" name="startdate">
                                    <span class="text-danger" id="error_startdate"></span>
                                </div>
                               <div class="form-group">
                                    <label>End of Loan return</label>
                                    <input type="text" autocomplete="off" class="form-control" id="enddate" name="enddate" placeholder="day / month/Year">
                                    <span class="text-danger" id="error_enddate"></span>
                                </div>
                                <div class="form-group">
                                    <label>Total number of days</label>
                                    <input type="number" class="form-control" id="days" name="">
                                    <span class="text-danger" id="error_member_group"></span>
                                </div>
                              
                                <div class="form-group">
                                    <label>Number of day per single team of collection</label>
                                    <input type="number" autocomplete="off"  class="form-control" id="total_term_days" name="total_term_days">
                                    <span class="text-danger" id="error_days_per_collection"></span>
                                </div>
                                <div class="form-group">
                                    <label>Week day of Collection</label>
                                    <select id="collection" name="collection_day" class="form-control">
                                        <option></option>
                                        <option value="MONDAY">Monday</option>
                                        <option value="TUESDAY">Tuesday</option>
                                        <option value="WEDNESDAY">Wednesday</option>
                                        <option value="THURSDAY">Thursday</option>
                                        <option value="FRIDAY">Friday</option>
                                        <option value="SATUDAY">Satuday</option>
                                        <option value="SUNDAY">Sunday</option>
                                    </select>
                                    <span class="text-danger" id="error_collection"></span>
                                </div>
                                <div class="form-group">
                                    <label>Next Collection Date [First Installment collection Date]</label>
                                    <input type="date" autocomplete="off" class="form-control" id="Next_Date" name="Next_Date" placeholder="day / month/Year">
                                    <span class="text-danger" id="error_enddate"></span>
                                </div>
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_referee_details" id="previous_btn_referee_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="btn_referee_details" id="btn_referee_details" class="btn btn-info btn-lg">RELEASE LOAN</button>   
                                </div>
                            </div>
                            </div>
                        </div> 
                   
                   
                    </div>
            </form>
            <script>
                
                    $(document).ready(function(){
                        $('#startdate,#enddate').datepicker({
                            changeMonth: true,
                            changeYear:true,
                            firstDay:1,
                            dateFormat: 'dd/mm/yy'
                        });
                        $('#startdate').datepicker({dateFormat: 'dd-mm-yy'});
                        $('#enddate').datepicker({dateFormat: 'dd-mm-yy'});
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
                                    
                <div id="delete_patient_bill" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN APPLICATION ADJUSTMENT</h4>
                    </div>
                    <div class="modal-body">
                        <div id="managersms"></div>
                         <form method="POST" id="Manager_update_loan">
                         
                            <br>
                            <div class="form-group">
                                <label>Loan A/C #</label>
                              
                                <input type="text" readonly="true" name="loan_invoice_m" value="<%=log1.manager_view_getInvoice()%>" class="form-control">
                              </div>
                              <div class="form-group">
                                  <label>Loan requested</label>
                                  <input type="number"  id="loan_order" name="loan_order" class="form-control">
                                  <span id="error_loan_order" class="text-danger"></span>
                              </div>
                               <div class="form-group">
                                  <label>Serving amount (10 %)</label>
                                  <p id="loan_save_status" class="form-control"></p>
                                  <p id="loan_save_status2"></p>
                                  <span id="error_serving" class="text-danger"></span>
                              </div>
                              <div class="form-group">
                                  <label>Pay Serving Amount</label>
                                  <input type="text" name="loan_save2" id="loan_save2" class="form-control">
                                  <span id="error_pay_save" class="text-danger"></span>
                              </div>
                               <div class="form-group">
                                    <label>Loan Type Applied<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control loan_type_view" name="m_type" id="loan_type_view">
                                        <option value="<%=log1.manager_view_getTypeID()%>"><%=log1.manager_view_getLoanType()%></option>
                                         <%
                                     ArrayList list9=AD.Print_Loan_Type();
                                     for(int i=0; i<list9.size(); i++){
                                     loan_type tp = (loan_type)list9.get(i);
                                     %>
                                     <option value="<%=tp.getLoanID()%>"><%=tp.getLoanType()%></option>
                                     <%}%>
                                    </select>
                                    <span id="error_ltype" class="text-danger"></span>
                                   
                                </div>
                               <div class="form-group">
                                    <label>Loan Plan<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select id="newloanplan" name="m_plan" class="form-control">
                                        <option value="<%=log1.manager_view_getPlanID()%>">Interest: &nbsp;<%=log1.manager_view_getLoanInterest()%> &nbsp; Penalty: &nbsp;<%=log1.manager_view_getLoanPenalty()%>&nbsp;%</option>
                                    
                                    </select>
                                    
                                    <span class="text-danger" id="error_lplan"></span>
                                </div>
                              
                              
                              <div class="form-group">
                                  <label>Loan Status</label>
                                  <p id="loan_update_status" class="form-control" style="background:  #006666; color:  #ffff00; font-weight:  bold"></p>
                                  <p id="loan_update_status_1"></p>
                                  <span id="error_laon_status" class="text-danger"></span>
                              </div>
                            <input type="submit" name="insert" id="manager_update_loan" value="Change Loan " class="btn btn-success"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
      
 <%}%>    
                </div>
            </div>
            </div>
             
            </main>
  </div>
  
  <script>
      $(document).ready(function(){
    var required = $("#loan_requested").val();
    var disburse =  $("#10_payed").val();   
    var disburse  =  required *(3/100);
        var t2 = '<input type="hidden" id="loan_disburse_new" name="loan_disburse_new_fee" value="'+disburse+'">';
        $('#loan_ds_3').html(disburse); 
        $('#loan_ds_32').html(t2); 
      var st = $('#st_secure').val();
      //alert(disburse);

   var newone = required - disburse;
    
      $('#disburse_remain').html(newone);
       var t2 = '<input type="hidden" id="loan_disburse_new" name="loan_disburse_new" value="'+newone+'">';
       $('#new_bala').html(t2);
       var acc = $('#pure_amount').val();
        var finalize = newone;
      var new_amount_to_date = acc - finalize;
     $('#new_bala').html(new_amount_to_date);
    var t233 = '<input type="hidden" id="loan_disburse_new" name="balance_new_account" value="'+new_amount_to_date+'">';
       $('#new_ballance').html(t233);   
 

   if(st !== 'PENDING'){
      var error ="<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> loan payment(10 %) done, continue to the next last step </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
       $('#status_security').html(error);
       document.getElementById('btn_payment_details').disabled = false;
   }
   else{
     
           var error ="<div class='alert alert-danger alert-dismissible'><span style='background:  #ffcccc; padding: .8rem;'><strong>Sorry!!!</strong> Loan applicant required to finish all payment for loan serving amount (10%) </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
       $('#status_security').html(error);
        document.getElementById('btn_payment_details').disabled = true;
   }
// Jquery to change loam detail during loan sunction 
 function calc() {
              // $('#paystatus').text('NOT PAYED');  
              var required = $("#loan_requested").val();
              var disburse =  $("#10_payed").val();   
              var disburse  =  required *(3/100);
              var text = 'New';
                   //var t2 = '<input type="hidden" id="servingpay" name="loan_ap_status" value="'+paid+'">';
                  $('#loan_ds_3').html(disburse);
                  $('#tt').html(text);
              var st = $('#ppp').text();
              // alert(st);
            if(st<=pay){
                var ss = 'PAID';
               $('#st_secure').html(ss);
                
            }
            else{
              var ss = 'NOT PAID';
               $('#st_secure').html(ss);
            }
                  //$('#paystatus2').html(t2);
                  // document.getElementById('btn_income_details').disabled = false;

             
             
          }
           $("#loan_requested").keyup(function() {
                calc();
         });
     // end of loan update by manager during loan sunction
   $('.view_bill').click(function(){
       var bill_id = $(this).closest('tr').find('.bll_id').text();
       //console.log(bill_id);
       //alert(bill_id);
       $.ajax({
           url:'bill_list_code.jsp',
           methode:'POST',
           data:{bill_id:bill_id},
           success:function(data){
              $('#view_bill_list').modal('show');
              $('.bill_data').html(data);
           }
       });
   });
  $('.pay_bill').click(function(){
       var bill_id = $(this).closest('tr').find('.bll_id').text();
       var total_pay = $(this).closest('tr').find('.total_pay').text();
       $('#rq_total').html(total_pay);
        var t2 = '<input type="hidden" id="ivoice" name="ivoice" value="'+bill_id+'">';
        var t1 = '<input type="text" id="lipa" name="lipa" value="'+total_pay+'">';
         $('#ps').html(t2);
         $('#rq_total2').html(t1);
        $('#ps').append(bill_id);
          $('#ps').append(bill_id).hide();
        $('#bill_payment').modal('show');
      
   });
    $('.xyz').on('click',function(){
       var bill_id = $(this).closest('tr').find('.bll_id').text();
        alert (bill_id);
        var t2 = '<input type="text" id="delete_bill" name="bill_id" value="'+bill_id+'">';
        $('#ff').html(t2);
        $('#add_data_Modal').modal('show');
        
   });
    $('#pending_bill_delete').click(function(){
        event.preventDefault();
       $.ajax({
           url:'controller.jsp?page=delete_bill',
           methode:'POST',
           data: $(this).serialize(),
           success:function(data){
               if(data){
                     var error ='<div class="alert alert-success">Patient Appointment Rejected Completed</div>';
                  $('#deletesms').html(error);
                  setTimeout(function(){
                    document.getElementById('sms').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000);
               }
               else{
                    alert("Not deleted");
               }
            
             
           }
       });
   }); 
     $(document).on('change','.loan_type_view', function(){
        var loan_type = $("#loan_type_view").val();
        $.ajax({
           url:"loan_plan_code.jsp",
            method:"POST",
            data:{loan_type:loan_type},
            success:function(data){
                if(data){
                    var html ='<option value="">[Select loan Plans]</option>';
               html += data;
                $('#newloanplan').html(html); 
                }
                else{
               var html2 ='<option value="">[No District Found]</option>';
               html2 += data;
                $('#newloanplan').html(html2);
                }
              
             
            }
            
        });
    });
   
 });
  </script>
  <script>
    $(document).ready(function(){
         $(document).on('change','.finddistrict', function(){
        var reg_reg = $("#regional").val();
        $.ajax({
           url:"district_code.jsp",
            method:"POST",
            data:{reg:reg_reg},
            success:function(data){
                if(data){
                    var html ='<option value="">[Pick District of Residence]</option>';
               html += data;
                $('#district').html(html); 
                }
                else{
               var html2 ='<option value="">[No District Found]</option>';
               html2 += data;
                $('#district').html(html2);
                }
              
             
            }
            
        });
    });
     $('.serving_update').on('click', function(){
       var bill_id = $(this).closest('tr').find('.bll_id').text();
       $('#loan_bill_id').html(bill_id);
       var t2 = '<input type="hidden" id="invoice_repay" name="invoice_repay" value="'+bill_id+'">';
        $('#loan_bill_id_2').html(t2);
    });
        
    });
    $('#btn_applicant_details').click(function(){
       
      
            $('#list_applicant_details').removeClass('active active_tab1');
            $('#list_applicant_details').removeAttr('href data-toggle');
            $('#applicant_details').removeClass('active');
            $('#list_applicant_details').addClass('inactive_tab1');
            $('#list_income_details').removeClass('inactive_tab1');
            $('#list_income_details').addClass('active_tab1 active');
            $('#list_income_details').attr('href', '#income_details');
            $('#list_income_details').attr('data-toggle','tab');
            $('#income_details').addClass('active in');

        
    });
    $('#previous_btn_income_details').click(function(){
        $('#list_income_details').removeAttr('active active_tab1');
        $('#list_income_details').removeAttr('href data-toggle');
        $('#income_details').removeClass('active in');
        $('#list_income_details').addClass('inactive_tab1');
        $('#list_applicant_details').addClass('active_tab1 active');
        $('#list_applicant_details').attr('href', '#applicant_details');
        $('#list_applicant_details').attr('data-toggle','tab');
        $('#applicant_details').addClass('active in');
        
    });
    $('#btn_income_details').click(function(){

          $('#list_income_details').removeClass('active active_tab1');
          $('#list_income_details').removeAttr('href data-toggle');
          $('#income_details').removeClass('active');
          $('#list_income_details').addClass('inactive_tab1');
          $('#list_referee_details').removeClass('inactive_tab1');
          $('#list_referee_details').addClass('active_tab1 active');
          $('#list_referee_details').attr('href','#referee_details');
          $('#list_referee_details').attr('data-toggle', 'tab');
          $('#referee_details').addClass('active in');

    });
    $('#previous_btn_referee_details').click(function(){
        $('#list_referee_details').removeClass('active active_tab1');
        $('#list_referee_details').removeAttr('href data-toggle');
        $('#referee_details').removeClass('active in');
        $('#list_referee_details').addClass('inactive_tab1');
        $('#list_income_details').removeClass('inactive_tab1');
        $('#llist_income_details').addClass('active_tab1 active');
        $('#list_income_details').attr('hre','#income_details');
        $('#list_income_details').attr('data-toggle','tab');
        $('#income_details').addClass('active in');
    });
    
    $('#btn_referee_details').click(function(){
        var error_days_per_collect ='';
        var error_collection = '';
        var error_startdate = '';
        var error_enddate = '';
        var error_days_per_collection = '';
         if($.trim($('#collection').val()).length === 0){
            error_days_per_collection = 'Indicate number of days per single collection term';
            $('#error_days_per_collection').text(error_days_per_collection);
            $('#total_term_days').addClass('has-error');
         }
        else{
            error_days_per_collection = '';
            $('#error_days_per_collection').text(error_collection);
            $('#total_term_days').removeClass('has-error');
        } 
         if($.trim($('#collection').val()).length === 0){
            error_collection = 'Pleas indicate the day of Collect loan per week';
            $('#error_collection').text(error_collection);
            $('#collection').addClass('has-error');
         }
        else{
            error_collection = '';
            $('#error_collection').text(error_collection);
            $('#collection').removeClass('has-error');
        } 
       
        if($.trim($('#startdate').val()).length === 0){
            error_startdate = 'Pick confirmation date';
            $('#error_startdate').text(error_startdate);
            $('#startdate').addClass('has-error');
         }
        else{
            error_startdate  = '';
            $('#error_startdate').text(error_startdate);
            $('#startdate').removeClass('has-error');
        } 
         if($.trim($('#enddate').val()).length === 0){
            error_enddate = 'Pick End of return date';
            $('#error_enddate').text(error_enddate);
            $('#enddate').addClass('has-error');
         }
        else{
            error_enddate = '';
            $('#error_enddate').text(error_enddate);
            $('#enddate').removeClass('has-error');
        } 
        if(error_collection !== ''|| error_startdate !== '' || error_enddate !== '' ){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms2').html(error);
                  setTimeout(function(){
                    document.getElementById('sms2').innerHTML='';
                },4000);
                return false;
        }
        else{
         
          $.ajax({
                  url:'controller.jsp?page=loan_giving&operation=disburse_loan',
                  methode:'POST',
                  data:$('#disburse_loan').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan Disbursed successfully</div>';
                  $('#dissms').html(error);
                  setTimeout(function(){
                    document.getElementById('dissms').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000);
               // $('#insert_form1')[0].reset();
                //$('#add_patient').modal('hide');    
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , Member registration failed please try again!!</div>';
                  $('#regsms').html(error);
                  setTimeout(function(){
                    document.getElementById('regsms').innerHTML='';
                },1000);
                //$('#insert_form1')[0].reset();
                //$('#add_patient').modal('hide');   
                          
                      }
                   
                
               }
              });
        }
    });
   
    
</script>
<script>
    $(document).ready(function(){
        var amount = $('#loan_order').val();
          
            
         function calc() { 
             var serving = $('#loan_order').val();
             var ten = serving *( 10/100);
             var t2 = '<input type="hidden" id="loan_10_update" name="servingpay" value="'+ten.toFixed(0)+'">';
            $('#loan_save_status2').html(t2);
            $('#loan_save_status').html(ten.toFixed(0)); 
             
             
             
              var save = $("#loan_10_update").val();
              var pay =  $("#loan_save_status").val();   
              var remain = save - pay;
              if(remain === 0){
                  var paid = "PAID";
                   var t2 = '<input type="hidden" id="loan_10_update" name="loan_ap_status1" value="'+paid+'">';
                  $('#loan_update_status').text(paid);
                 $('#loan_update_status_1').html(t2);
                  // document.getElementById('btn_income_details').disabled = false;
                  
              }
              else if(remain < 0){
                  var paid = "Processing rejected, amount required to pay is TSH '"+save+"' /= Only";
                   $('#loan_update_status').text(paid);
                 // document.getElementById('btn_income_details').disabled = true;
                  
              }
              else{
                   var paid = "PENDING";
                  $('#loan_update_status').text(paid);
                  // document.getElementById('btn_income_details').disabled = false;
                    var t2 = '<input type="hidden" id="servingpay" name="loan_ap_status1" value="'+paid+'">';
                     $('#loan_update_status_1').html(t2);
              }
             
          }
           $("#loan_order").keyup(function() {
                calc();
         });
           function status() { 
          
              var save = $("#loan_10_update").val();
              var pay =  $("#loan_save2").val();   
              var remain = save - pay;
              if(remain === 0){
                  var paid = "PAID";
                   var t2 = '<input type="hidden" id="servingpay" name="loan_ap_status1" value="'+paid+'">';
                  $('#loan_update_status').text(paid);
                 $('#loan_update_status_1').html(t2);
                  document.getElementById('manager_update_loan').disabled = false;
                  
              }
              else if(remain < 0){
                  var paid = "Processing rejected, amount required to pay is TSH '"+save+"' /= Only";
                   $('#loan_update_status_1').text(paid);
                  document.getElementById('manager_update_loan').disabled = true;
                  
              }
              else{
                   var paid = "PENDING";
                  $('#loan_update_status').text(paid);
                   document.getElementById('manager_update_loan').disabled = false;
                   var t2 = '<input type="hidden" id="servingpay" name="loan_ap_status1" value="'+paid+'">';
                    $('#loan_update_status_1').html(t2);
              }
             
          }
           $("#loan_save2").keyup(function() {
                status();
         });
        
    });
</script>
<script>
     $('#manager_update_loan').click(function(){
        var error_loan_order ='';
        var error_serving ='';
        var error_pay_save ='';
        var error_ltype ='';
        var error_lplan ='';
        var error_laon_status ='';
       
         if($.trim($('#loan_order').val()).length === 0){
            error_loan_order = 'Enter new Applicant loan';
            $('#error_loan_order').text(error_loan_order);
            $('#loan_order').addClass('has-error');
        }
        else{
            error_loan_order = '';
            $('#error_loan_order').text(error_loan_order);
            $('#loan_order').removeClass('has-error');
        }
        //End
        //Lname
         if($.trim($('#loan_10_update').val()).length === 0){
            error_serving = 'No Serving amount detected';
            $('#error_serving').text(error_serving);
            $('#loan_10_update').addClass('has-error');
        }
        else{
            error_serving = '';
            $('#error_serving').text(error_serving);
            $('#loan_10_update').removeClass('has-error');
        }
        //lname END
        //Date
         var age = $('#loan_save2').val();
         if(age === ''){
            error_pay_save = 'Indicate amount payed by applicant as serving amount for this loan';
            $('#error_pay_save').text(error_pay_save);
            $('#loan_save2').addClass('has-error');
        }
        else{
           error_pay_save = '';
            $('#error_pay_save').text(error_pay_save);
            $('#loan_save2').removeClass('has-error');
        }
        //END
         //Regional
         var type = $('#loan_type_view').val();
         if(type === ''){
            error_ltype = 'No loan type selected';
            $('#error_ltype').text(error_ltype);
            $('#loan_type_view').addClass('has-error');
        }
        else{
            error_ltype = '';
            $('#error_ltype').text(error_ltype);
            $('#loan_type_view').removeClass('has-error');
        }
        //END
         //District
         var plan = $('#newloanplan').val();
         if(plan === ''){
            error_lplan = 'No loan plan detected';
            $('#error_lplan').text(error_lplan);
            $('#newloanplan').addClass('has-error');
        }
        else{
            error_lplan = '';
            $('#error_lplan').text(error_lplan);
            $('#newloanplant').removeClass('has-error');
        }
        //END
         //Wards / Village
         var status = $('#servingpay').val();
         if(status === ''){
            error_laon_status = 'Loan status is not loaded succesfully, please try again';
            $('#error_laon_status').text(error_laon_status);
            $('#servingpay').addClass('has-error');
        }
        else{
            error_laon_status = '';
            $('#error_laon_status').text(error_laon_status);
            $('#servingpay').removeClass('has-error');
        }
       
        if(error_loan_order !=='' || error_serving !==''|| error_pay_save !==''|| error_ltype !==''|| error_lplan !==''|| error_laon_status !==''){
              var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#managersms').html(error);
                  setTimeout(function(){
                    document.getElementById('managersms').innerHTML='';
                },4000);
            
            return false;
        }
        else{
               event.preventDefault();
              $.ajax({
                  url:'controller.jsp?page=loan_giving&operation=manager_update',
                  methode:'POST',
                  data:$('#Manager_update_loan').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan plan Details Registered successfully</div>';
                  $('#managersms').html(error);
                  setTimeout(function(){
                    document.getElementById('managersms').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000); 
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , loan plan registration failed please try again!!</div>';
                  $('#managersms').html(error);
                  setTimeout(function(){
                    document.getElementById('managersms').innerHTML='';
                },1000);
                }
               }
              });
           
        } 
        
    });
     $('#repay_save_amount').on('submit',function(){
        var error_pay_save ='';
        var error_status_repay ='';
        
         if($.trim($('#loan_save3').val()).length === 0){
            error_pay_save = 'Please indicate amount you want to repay';
            $('#error_pay_save').text(error_pay_save);
            $('#loan_save3').addClass('has-error');
        }
        else{
            error_pay_save = '';
            $('#error_pay_save').text(error_pay_save);
            $('#loan_save3').removeClass('has-error');
        }
        //End
        //Lname
         if($.trim($('#repay_status').val()).length === 0){
            error_status_repay = 'Select Status';
            $('#error_status_repay').text(error_status_repay);
            $('#repay_status').addClass('has-error');
        }
        else{
           error_status_repay = '';
            $('#error_status_repay').text(error_status_repay);
            $('#repay_status').removeClass('has-error');
        }
        
        
       
        if(error_status_repay !=='' || error_pay_save !==''){
              var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#repesms').html(error);
                  setTimeout(function(){
                    document.getElementById('repesms').innerHTML='';
                },4000);
            
            return false;
        }
        else{
               event.preventDefault();
              $.ajax({
                  url:'controller.jsp?page=loan_giving&operation=loan_save_repayment',
                  methode:'POST',
                  data:$('#repay_save_amount').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan plan Details Registered successfully</div>';
                  $('#repesms').html(error);
                  setTimeout(function(){
                    document.getElementById('repesms').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000); 
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , loan plan registration failed please try again!!</div>';
                  $('#repesms').html(error);
                  setTimeout(function(){
                    document.getElementById('repesms').innerHTML='';
                },1000);
                }
               }
              });
           
        } 
        
    });
</script>
<script>
    $(document).ready(function(){
        $('#loan_accept').on('click',function(){
             event.preventDefault();
             var approve = $('#invoice_approve').val();
              $.ajax({
                  url:'controller.jsp?page=loan_giving&operation=manager_approve',
                  methode:'POST',
                  data:{approve:approve},
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan Approved successfully</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000); 
                      }else{
                    var error ='<div class="alert alert-danger">Sorry ,  failed please try again!!</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                },1000);
                }
               }
              });
        });
         $('#loan_reject').on('click',function(){
             event.preventDefault();
             var approve = $('#invoice_approve').val();
              $.ajax({
                  url:'controller.jsp?page=loan_giving&operation=manager_reject',
                  methode:'POST',
                  data:{approve:approve},
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
                    var error ='<div class="alert alert-danger">Sorry ,failed please try again!!</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                },1000);
                }
               }
              });
        });
        
    });
</script>

  