
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
                            <a href=""><li><span class="fa fa-line-chart"></span><span>General Report</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=applicationReport"><li><span class="fa fa-line-chart"></span><span>Loan application Report</span><span></span></li></a>
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
                                     ArrayList list4=AD.Print_Loan_Group_List_disbursment();
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
                                            <li><span>Loan Plan:</span><span>&nbsp;&nbsp;::&nbsp;Days&nbsp;<%=lg.getGLoanPlanName()%>&nbsp;[&nbsp;<%=lg.getGLoanInterest()%>&nbsp;%&nbsp;, &nbsp;<%=lg.getGLoanPenalty()%> &nbsp;%]</span></li>
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
 
                                        <a href="menu-panel.jsp?load=group_loan_disbursment&confirm-loan=true&Ref_ID=<%=lg.getGLoanID()%>&loanID=<%=lg.geGtInvoce()%>" class="btn btn-success"><span class="fa fa-pencil-square-o"> &nbsp;&nbsp;View Members</span></a>
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
                             <span><h5><span style="color:  #ffff00; font-weight: bold">LOAN DISBURSEMENT AREA:</span> </h5></span>
                  </div>
                 <form  id="group_disburse_status">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Group Members</a>
                    </li>
                  
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_finish_details" style="border: 1px solid #ccc">
                            Complete Disbursement
                     </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                   <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 01::</span> &nbsp;&nbsp;
                               GROUP MEMBERS LOAN DISBURSEMENT 
                               <%
                                group_details fp = AD.Print_Loan_Group_List_individual_editable(request.getParameter("loanID"));
                                group_details fp2 = AD.Loan_group_disbursement_find_invoice(request.getParameter("loanID"));
                               if(fp!=null){
                               %>
                              
                               <a href="#" name="" class="btn btn-success" style="float: right"  data-toggle="modal" data-target="#adjust_group_loan">Adjust Loan</a>
                               </div>
                            <div class="panel-body">
                                <div id="sms4"></div>
                                
                                <table id="table" class="table">
                                    <thead>
                                    <th>ID</th>
                                    <th>REG-ID</th>
                                    <th>REF ID</th>
                                    <th>MEMBER FULL NAME</th>
                                    <th>LOAN REQUESTED</th>
                                     <th>AMOUNT & INTEREST</th>
                                      <th>DURATION</th>
                                    <th>ACTION</th>
                                    </thead>
                                    <tbody>
                                         <%
                                     ArrayList list401=AD.Print_Loan_Group_List_individual_disbuse(request.getParameter("loanID"));
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
                                            <td><%=lg.getGroupMember_Loan_interest_sunction()%></td>
                                            <td><span class="days1"><%=lg.getGroupMember_Plan_Names_sunction()%></span>&nbsp;&nbsp;<span>Days</span></td>
                                            <td>
                                                <a href="#" class="btn btn-success disburse_member_loan1" id=""  data-toggle="modal" data-target="#disburse_member_loan">Disburse Loan</a>
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
                    
                    <div class="tab-pane fade" id="finish_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 02::</span> &nbsp;&nbsp;
                               FINISH  LOAN DISBURSEMENT 
                            </div>
                            <div class="panel-body">
                                <input type="hidden" name="invoice_approve" id="invoice_approve" value="">
                                <div id="lastsms"></div>
                               
                                <input type="hidden" value="<%=fp2.getInvoiceForDisbursement()%>" name="disburseInvoice" id="accept_loan_group">
                                <div class="alert alert-info" role="alert">
                                    <h4 class="alert-heading">NOTES! </h4>
                                <p>This is the last step to finalize loan Disbursement,please click the button bellow in order to finish the process </p>
                                <hr>
                                <p class="mb-0">.</p>
                                </div>
                                <div class="form-group">
                                    <label>Week day of Collection</label>
                                    <select id="collection" name="collection_day_2" class="form-control">
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
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_finish_details" id="previous_btn_finish_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="previous_btn_finish_details" id="btn_finish_details" class="btn btn-success btn-lg">Finish Loan Disbursement</button>
                                       
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    <%}%>
            </form>
                </div> 
             <div id="adjust_group_loan" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN APPLICATION ADJUSTMENT</h4>
                    </div>
                    <div class="modal-body">
                        <div id="managersms"></div>
                         <form method="POST" id="Manager_update_loan">
                         
                            
                            <input type="submit" name="insert" id="manager_update_loan" value="Change Loan " class="btn btn-success"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
         <div id="disburse_member_loan" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN DISBURSEMENT</h4>
                    </div>
                    <div class="modal-body">
                        <div id="officersms"></div>
                        <div id="officerdisburse"></div>
                         <form  id="officer_disburse_loan_individual">
                             <p id="regid"></p>
                              <p id="regid2"></p>
                               <p id="loanid"></p>
                              <p id="loanid2"></p>
                              <p id="acamount"></p>
                              <%
                                     deposit dp5 = AD.Print_Capital_Balance();
                                     if(dp5!=null){
                                    %>
                                <div class="form-group">
                                    <label>Current account ballance in the Database<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" readonly="true" name="business_name" id="pure_amount" autocomplete="off" value="<%=dp5.getDepositBallance()%>" id="business_name" class="form-control"/>
                                    <span id="error_business_name" class="text-danger"></span>
                                </div>
                                <%} else{%>
                                 <input type="text" readonly="true" name="business_name" id="pure_amount" autocomplete="off" value="0" id="business_name" class="form-control"/>
                                <%}%>
                                
                                 <div class="form-group">
                                    <label>Amount Requested<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <p id="member_request_amount_1" class="form-control"></p>
                                     <p id="member_request_amount_2"></p>
                                    <span id="error_income_amount" class="text-danger"></span>
                                </div>
                                  <div class="form-group">
                                      <p id="processing_fees"></p>
                                      <label>Loan Application Fees &nbsp;&nbsp;[&nbsp;<span id="new_pcent"></span>&nbsp;%&nbsp;For &nbsp;<span id="dd"></span> &nbsp;&nbsp;Days &nbsp;&nbsp; ~&nbsp;&nbsp; <span id="month_proccess_fee"></span>&nbsp;&nbsp;Month / s&nbsp;&nbsp;]</label>
                                    <p id="prs_fee" class="form-control"></p>
                                    <p id="loan_ds_32"></p>
                                    <span class="text-danger" id="error_fee_required"></span>
                                </div>
                                 
                                     <div class="form-group">
                                    <label>Loan Amount required to disburse</label>
                                    <p id="loan_to_disburse" class="form-control"></p>
                                    <p id="loan_to_disburse_process"></p>
                                    <span class="text-danger" id="error_fee_required"></span>
                                </div>
                                <div class="form-group">
                                    <label>New Account ballance after loan Disbursement<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <p id="new_ballance_amount" class="form-control"></p>
                                    <p id="new_ballance_4" ></p>
                                    <span id="error_income_amount" class="text-danger"></span>
                                </div>
                            <div class="form-group">
                                 <label>Date of Confirmation</label>
                                 <input type="text" id="startdate" autocomplete="off"  name="startdate" class="form-control">
                             </div>
                              <div class="form-group">
                                 <label>End of Return</label>
                                 <input type="text" id="enddate" autocomplete="off" name="enddate" class="form-control">
                             <span id="error_enddate" class="text-danger"></span>
                              </div>
                              <div class="form-group">
                                 <label>Total number of days</label>
                                 <input type="text" readonly="true" id="days" autocomplete="off" name="amount_100" class="form-control">
                             </div>
                              <div class="form-group">
                                 <label>Number of day per single team of collection</label>
                                 <input type="number" id="numbers" autocomplete="off" name="total_term_days" class="form-control">
                             <span id="error_numbers" class="text-danger"></span>
                              </div>
                             <div class="form-group">
                                 <label>Next Payment Date</label>
                                 <input type="date" id="nextdate" autocomplete="off" name="nextdate" class="form-control">
                             </div>
                           <input type="submit" name="insert" id="dloan" value="Disburse" class="btn btn-success form-control"/>
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
  $('.disburse_member_loan1').on('click',function(){
     var required = $(this).closest('tr').find('.rqt').text(); 
     //alert(required);
     // amount requested 
     $('#member_request_amount_1').html(required);
     var t2 = '<input type="hidden" id="individual_requested_amount" name="individual_requested_amount" value="'+required+'">';
        $('#member_request_amount_2').html(t2); 
     // end 
    
     // number  of  days 
     var days = $(this).closest('tr').find('.days1').text();
     var t22 = '<input type="hidden" id="processing_fees_days55" name="processing_fees_days" value="'+days+'">';
        $('#processing_fees').html(t22);

    ///  calculation code 
    var amount_requested = $('#individual_requested_amount').val();
    var processing = $('#processing_fees_days55').val();
   /// alert(processing);
    var process_for_all = (processing /30);
      //alert(processing);
      process_for_all.toFixed();
     //alert(process_for_all);

    
     // pure account ballance 
      var pure_ballance = $('#pure_amount').val();
    // alert(pure_ballance);
     var pass = '3';
     $('#new_pcent').html(pass);
 $('#dd').html(processing);
 $('#month_proccess_fee').html(process_for_all.toFixed(0));
 /// application  fees 
 
 var serving = required *(3/100);
 $('#prs_fee').html(serving);
  var t255 = '<input type="hidden" id="individual_requested_amount" name="serving_acc_individual" value="'+serving+'">';
 $('#loan_ds_32').html(t255);
 //var totalcost = 
  var totalcost = parseFloat(amount_requested) - parseFloat(serving); 
  $('#loan_to_disburse').html(totalcost);
  
  
  // account ballance
  var remain_to_disburse = pure_ballance - totalcost;
 $('#new_ballance_amount').html(remain_to_disburse);
  var t2556 = '<input type="hidden" id="individual_requested_amount" name="loan_disburse_new_2" value="'+remain_to_disburse+'">';
 $('#new_ballance_4').html(t2556 );
        // account ballance
 if(remain_to_disburse  < 0){
          document.getElementById('dloan').disabled = true,
         $('#officersms').html("<div class='alert alert-danger alert-dismissible'><span style='background: #ffcccc; padding: .8rem;'><strong>Sorry!!!</strong>Accounnt ballance is not enough please  deposity new collections before continue </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
         
     }
     else{
       document.getElementById('dloan').disabled = false, 
        $('#officersms').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Account Status!!!</strong> Ballance is enough for disbursement</span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
     }
  });
 
 });

        </script>
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
                 var error ='<div class="alert alert-success">Loan Disbursed successfully</div>';
                  $('#officerdisburse').html(error);
                  setTimeout(function(){
                    document.getElementById('officerdisburse').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000);  
              
              }
             
              
          });
          
      });   
    });
</script>