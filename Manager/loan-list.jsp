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
                        <a href="#" class="active"><span class="fa fa-money"></span><span>Individual Loan Allocation</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                             <a href="menu-panel.jsp?load=00033_ln_lst"><li><span class="fa fa-eye"></span><span>Loan Waiting for Sanction</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=000333849_ln_history"><li><span class="fa fa-eye"></span><span>View Members Loan History</span><span></span></li></a>
                             
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00070_py_acc"><li><span class="fa fa-users"></span><span>Create New Group</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=0070_loan_group"><li><span class="fa fa-user"></span><span>Groups waiting for sanction</span><span></span></li></a>
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
                        <a href="#"><span class="fa fa-cogs"></span><span>General setting</span><span class="fa fa-chevron-down fifth"></span></a>
                         <ul>
                            <a href="menu-panel.jsp?load=00091-stg-ctg"><li><span class="fa fa-eye"></span><span>Income Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00100-exp-cate"><li><span class="fa fa-eye"></span><span>Expenses Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_new_reg"><li><span class="fa fa-money"></span><span>Upload Tanzania Regional</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_new_dist"><li><span class="fa fa-money"></span><span>Upload new District</span><span></span></li></a>
                        </ul>
                   </li>
                     <li>
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
                  <th>S/N</th>
                  <th>MEMBER DETAILS</th>
                  <th>LOAN DETAILS</th>
                  <th>RETURN DETAILS</th>
                  <th>STATUS</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                     ArrayList list4=AD.Print_Loan_List();
                                     for(int i=0; i<list4.size(); i++){
                                     loan_giving lg = (loan_giving)list4.get(i);
                                 %>
                                <tr>
                                    <td></td>
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
                                            <li><span>Loan A/C #:;&nbsp;::&nbsp;&nbsp;</span><span  class="bll_id"><%=lg.getInvoice()%></span></li>
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
                                        <a href="menu-panel.jsp?load=00033_ln_lst&confirm-loan=true&Ref_ID=<%=lg.getInvoice()%>" class="btn btn-success"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Process request...</span></a></br></br>
                                                <a href="#" data-toggle="modal" data-target="#update_serving_amount5" class="serving_update btn btn-warning"><span class="fa fa-money">&nbsp;&nbsp;10 % Re-payment</span></a>
                                                
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
                             <span><h5><span style="color:  #ffff00; font-weight: bold">LOAN SUNCTION AREA:</span> Please review all loan applicant details very carefully </h5></span>
                         </div>
                 <form  id="register_form">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Applicant Details</a>
                    </li>
                    <li class="nav-item">
                        <a class ="inactive_tab1" id="list_income_details" style="border: 1px solid #ccc">
                            Source of Income
                        </a></li>
                    <li class="nav-item">
                        <a class ="inactive_tab1" id="list_referee_details" style="border: 1px solid #ccc">
                            Referees
                     </a></li>
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_bond_details" style="border: 1px solid #ccc">
                            Collateral
                     </a></li>
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_payment_details" style="border: 1px solid #ccc">
                            Loan Apply & Payment Made
                     </a></li>
                     
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_finish_details" style="border: 1px solid #ccc">
                            Manager Recommendation
                     </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 01::</span> &nbsp;&nbsp;FILL ALL BASIC APPLICANT DETAILS</span></div>
                            <div class="panel-body">
                                 
                                <div class="form-group">
                                    <label>First Name <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="fname" autocomplete="off" id="fname" readonly="true" value="<%=log1.manager_view_getFname()%> " class="form-control"/>
                                    <span id="error_fname" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Middle Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="mname" readonly="true" autocomplete="off" value="<%=log1.manager_view_getMname()%>" id="mname" class="form-control"/>
                                    <span id="error_mname" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Last Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="lname" id="lname" readonly="true" value="<%=log1.manager_view_getLname()%>" autocomplete="off" class="form-control">
                                    <span id="error_lname" class="text-danger"></span>
                                </div>
                               <div class="form-group">
                                    <label>Gender</label>
                                    <label class="radio-inline">
                                        <input type="radio" name="gender" value="Male" checked>Male
                                    </label>
                                    <label class="radio-inline">
                                      <input type="radio" name="gender" value="Female" checked>Female  
                                    </label>
                                    <span id="error_gender" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Date of Birth <span style="color:  #ff0000; font-size: 18px;">*</span>
                                    </label>
                                    <input type="date" id="date" readonly="true" autocomplete="off" value="<%=log1.manager_view_getDateAppliedForLoan()%>" name="date" class="form-control">
                                 <span id="error_date" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Regional of Residence<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select id="regional" readonly="true"  autocomplete="off" name="regional"  class="form-control finddistrict">
                                        <option><%=log1.manager_view_getRegional()%></option>
                                         <%
                                        ArrayList list = AD.Print_regionals();
                                        for(int i =0; i<list.size(); i++){
                                         regionals lg = (regionals)list.get(i); 
                                        %>
                                        <option value="<%=lg.getID()%>"><%=lg.getRegional()%></option>
                                        <%}%>
                                    </select>
                                    <span id="error_regional" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>District of Residence<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select id="district" readonly="true" autocomplete="off" name="dist" class="form-control">
                                        <option><%=log1.manager_view_getDistrict()%></option>
                                    </select>
                                     <span id="error_district" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Wards / Village<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" readonly="true" autocomplete="off" value="<%=log1.manager_view_getWard()%>" name="ward" id="ward" class="form-control">
                                    <span id="error_ward" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Phone Number<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" autocomplete="off" name="phone" readonly="true" value="<%=log1.manager_view_getPhoneNumber()%>" id="phone" class="form-control">
                                     <span id="error_phone" class="text-danger"></span>
                                </div>
                                  <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="text" readonly="true" name="email" id="email" value="<%=log1.manager_view_getEmailID()%>" autocomplete="off" class="form-control"/>
                                    <span id="error_email"  class="text-danger"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Identity Card Type</label>
                                    <select id="idtype" readonly="true" name="card-type" autocomplete="off" class="form-control">
                                        <option ><%=log1.manager_view_getId_Type()%></option>
                               <option value="NIDA" >National Identity Card</option>
                               <option value="VOTER ID" >Voter Identity Card</option>
                               <option value="PASSPORT" >Traveling Passport Number</option>
                               <option value="DRIVING LINCENSE" >Driving License</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Enter Identity Card Number</label>
                                    <input type="text" readonly="true" name="card-number" id="email" value="<%=log1.manager_view_getIdNo()%> " autocomplete="off" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Working Status</label>
                                   
                               <select readonly="true" name="working" class="form-control">
               
                                   <option ><%=log1.manager_view_getWorkStatus()%></option>
                                    <option >Self-employed</option>
                                    <option >Employee</option>
                                    <option >Employer</option>
                                    </select>
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
                                OTHER SOURCE OF INCOME 
                            </div>
                            <div class="panel-body">
                                <div id="sms1"></div>
                                <div class="form-group">
                                    <label>Enter your Business Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" readonly="true" name="business_name" autocomplete="off" value="<%=log1.manager_view_getBusinessName()%>" id="business_name" class="form-control"/>
                                    <span id="error_business_name" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Monthly Income approximation<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" readonly="true" name="mincome" value="<%=log1.manager_view_getBusinessIncome()%>" autocomplete="off" id="business_income" class="form-control"/>
                                    <span id="error_income_amount" class="text-danger"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Other Source of Income (if any)</label>
                                    <input type="text" readonly="true" name="other_source" autocomplete="off" value="<%=log1.manager_view_getOtherSource()%>"id="other_source" class="form-control"/>
                                    <span id="error_other" class="text-danger"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Monthly Approximation income for other source</label>
                                    <input type="number" readonly="true" name="other_income" autocomplete="off" value="<%=log1.manager_view_getOtherSourceIncome()%>" id="other_source" class="form-control"/>
                                    <span id="error_other" class="text-danger"></span>
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
                               APPLICANT REFEREES
                            </div>
                            <div class="panel-body">
                                <div id="sms2"></div>
                                <div class="form-group">
                                    <label>Select Group Name <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select id="member_group" name="group" class="form-control">
                                        <option><%=log1.manager_view_getGroup()%></option>
                                         <%
                                     ArrayList list2=AD.Print_Group_Details();
                                     for(int i=0; i<list2.size(); i++){
                                    loan_group_details lp = (loan_group_details)list2.get(i);
                                     %>
                                     <option value="<%=lp.getGroupID()%>"><%=lp.getGroupName()%></option>
                                     <%}%>
                                    </select>
                                    <span class="text-danger" id="error_member_group"></span>
                                </div>
                               
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_referee_details" id="previous_btn_referee_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="btn_referee_details" id="btn_referee_details" class="btn btn-info btn-lg">next</button>   
                                </div>
                            </div>
                            </div>
                        </div> 
                    <div class="tab-pane fade" id="bond_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 04::</span> &nbsp;&nbsp;
                               LOAN BONDING PROPERTIES
                            </div>
                            <div class="panel-body">
                                <div id="sms3"></div>
                                <div class="form-group">
                                    <label>First Property Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" autocomplete="off" readonly="true" name="fpropety" value="<%=log1.manager_view_GetFirstProppt()%>" id="fproperty" class="form-control">
                                    <span class="text-danger" id="error_fproperty"></span>
                                </div>
                                <div class="form-group">
                                    <label>Second Property Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" autocomplete="off" readonly="true" value="<%=log1.manager_view_getSProperty()%>" name="mpropety" id="mproperty" class="form-control">
                                    <span class="text-danger" id="error_mproperty"></span>
                                </div>
                                <div class="form-group">
                                    <label>Third Property Name</label>
                                    <input type="text" name="lpropety" readonly="true" autocomplete="off" id="lproperty" value="<%=log1.manager_view_getLastProperty()%>" class="form-control">
                                    <span class="text-danger" id="error_lproperty"></span>
                                </div>
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_bond_details" id="previous_btn_bond_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="btn_bond_details" id="btn_bond_details" class="btn btn-info btn-lg">Next</button>   
                                </div>
                            </div>
                            </div>
                        </div>
                    <div class="tab-pane fade" id="payment_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 05::</span> &nbsp;&nbsp;
                               PAYMENT AREA 
                               <a href="#" name="" class="btn btn-success" style="float: right"  data-toggle="modal" data-target="#delete_patient_bill">Adjust Loan</a>
                               </div>
                            <div class="panel-body">
                                <div id="sms4"></div>
                                <div class="form-group">
                                    <label>Loan Amount Requested</label>
                                    <input type="text" name="fee_required" id="loan_requested" readonly="true" value="<%=log1.manager_view_getLoanAmount()%>" class="form-control loanpopo">
                                    <span class="text-danger" id="error_fee_required"></span>
                                </div>
                                <div class="form-group">
                                    <label>Registration Fees payed<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" autocomplete="off" readonly="true" name="fee_amount" id="fee_amount" value="<%=log1.manager_view_getFees()%>" class="form-control">
                                    <span class="text-danger" id="error_fee_amount"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Serving Amount payed (10 %)<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" autocomplete="off" readonly="true" name="10_payed" id="10_payed" value="<%=log1.manager_view_getServing()%>" class="form-control">
                                    <p id="tt"></p>
                                    <p id="ppp" ></p>
                                    <span class="text-danger" id="error_fee_amount"></span>
                                </div>
                                    <div class="form-group">
                                    <label>Loan Type Applied<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                   <label>Loan Type<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control loan_type_view" name="type" id="">
                                        <option><%=log1.manager_view_getLoanType()%></option>
                                    </select>
                                    <span id="error_ltype" class="text-danger"></span>
                                   
                                </div>
                               <div class="form-group">
                                    <label>Loan Plan<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control">
                                      <option>Interest: &nbsp;<%=log1.manager_view_getLoanInterest()%> &nbsp; Penalty: &nbsp;<%=log1.manager_view_getLoanPenalty()%>&nbsp;%</option>
                                    
                                    </select>
                                    
                                    <span class="text-danger" id="error_fee_amount"></span>
                                </div>
                                    <div class="form-group">
                                        <label>Payment Status</label>
                                        <input type="text" id="st_secure" name="" value="<%=log1.manager_view_getLoanStatus()%>" class="form-control st_secure" readonly="true" style="background:  #006666; color:  #cccc00; font-weight:  bold">
                                        <div id="status_security">
                                            
                                        </div>
                                    </div>
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_payment_details" id="previous_btn_payment_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="btn_payment_details" id="btn_payment_details" class="btn btn-info btn-lg">Next</button>   
                                
                                </div>
                            </div>
                            </div>
                        </div>
                    <div class="tab-pane fade" id="finish_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 06::</span> &nbsp;&nbsp;
                               FINISH  LOAN SANCTION 
                            </div>
                            <div class="panel-body">
                                <input type="hidden" name="invoice_approve" id="invoice_approve" value="<%=log1.manager_view_getInvoice()%>">
                                <div id="lastsms"></div>
                               <div class="alert alert-success" role="alert">
                                <h4 class="alert-heading">Taarifa Muhimu!</h4>
                                <p>Hii ni hatua ya mwisho kabisa ya kufanya uhakiki wa mkopo, Tafadhali hakikisha  umejiridhisha  na taarifa zote za mwombaji kuwa ni sahihi kabula ya kuidhinisha mkopo wake</p>
                                <hr>
                                <p class="mb-0">Kama hujaridhika na taarifa za mwombaji una uwezo wa kukataa au kurudi nyuma kufanya mabadiliko.</p>
                                </div>
                               <div class="row">
                                <div class="col-sm-6">
                                  <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>Loan rejection</strong></h5>
                                      <p class="card-text">I disagree to confirm this loan due to different reasons.</p>
                                      <a href="#" id="loan_reject" class="btn btn-danger">Reject</a>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-sm-6">
                                  <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>Loan Accept</strong></h5>
                                      <p class="card-text">I accept and confirm this loan application.</p>
                                      <a href="#" id="loan_accept" class="btn btn-primary">Approve</a>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_finish_details" id="previous_btn_finish_details" class="btn btn-warning btn-lg">Previous</button>
                                       
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
            </form>
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
       
       
                <%} else if(request.getParameter("confirm-loan").toString().equals("view")){%>

              <div class="panel-2">
                  <%
                  members mb5 = AD.PrintMemberDetails_To_Edit(Integer.parseInt(request.getParameter("ID")));
                  %>
                  <table class="table-2" style="width: 100%">
                  <thead>
                  <th colspan="6">MEMBER FULL DETAILS</th>
                  </thead>
                  
                  <tbody>
                      <tr>
                          <td style="color: #999999">First Name</td><td><%=mb5.getFname()%></td>
                          <td style="color: #999999">Middle Name</td><td><%=mb5.getMname()%></td>
                          <td style="color: #999999">Last Name</td><td><%=mb5.getLname()%></td>
                      </tr> 
                      <tr>
                          <td style="color: #999999">Gender</td><td><%=mb5.getgender()%></td>
                          <td style="color: #999999">Date of Birth</td><td><%=mb5.getdate()%></td>
                          <td style="color: #999999">Regional</td><td><%=mb5.getregional()%></td>
                      </tr> 
                      <tr>
                          <td style="color: #999999">District</td><td><%=mb5.getdisst()%></td>
                          <td style="color: #999999">Phone number</td><td><%=mb5.getphone()%></td>
                          <td style="color: #999999">Email</td><td><%=mb5.getemail()%></td>
                      </tr> 
                      <tr>
                          <td style="color: #999999">Identity Type</td><td><%=mb5.getidtype()%></td>
                          <td style="color: #999999">Identity Number</td><td><%=mb5.getidno()%></td>
                          <td style="color: #999999">Member Group</td><td><%=mb5.getgroup()%></td>
                      </tr> 
                      <tr>
                          <td style="color: #999999">Work status</td><td><%=mb5.getwork()%></td>
                          <td style="color: #999999">Physical Address</td><td><%=mb5.getaddress()%></td>
                      </tr> 
                  </tbody>
              </table>
                  
                <%
                     return_amount rtam = AD.Print_preview_Individual_loan(Integer.parseInt(request.getParameter("ID")));
               deposit dp = AD.Print_Capital_Balance();
               if(rtam!=null){
               %>  
            
                  
                    <div class="panel-2-header-3">
                        <span> Payment Overview  Break Down[ Summary ]</span>
                        <span><a href="report_generation.jsp?member_loan_report=individual&MID=<%=rtam.getBorrowerID()%>" style="color: #ffffff; background:  #006666; padding: .4rem"  target="_black">Print Report</a></span>
                    </div>
                    <div class="panel-2-body">
                    <form action="controller.jsp">
                     <input type="hidden" name="page" value="Return_loan">
                     <input type="hidden" name="operation" value="user_return">
                        <table class="table" id="example" style="width: 100%">
                            <thead>
                            <th>#</th>
                                  <th>Reference #</th>
                                  <th>Borrower</th>
                                  <th>Amount Requested</th>
                                     <th>Return</th>
                                  <th>Date</th>
                            </thead>
                            <tbody>
                                <%
                                ArrayList list4 = AD.Print_preview_Individual_loan_1(Integer.parseInt(request.getParameter("ID")));
                                 for(int i=0; i<list4.size(); i++){
                                  return_amount lg = (return_amount)list4.get(i);
                                  if(lg!=null){
                                
                                %>
                                <tr>
                                    <td></td>
                                    <td><%=lg.getLoanID()%></td>
                                    <td><%=lg.getFname()%> &nbsp;&nbsp;<%=lg.getMname()%> &nbsp;&nbsp;<%=lg.getLname()%></td>
                                    <td><%=lg.getLoanAmount()%></td>
                                    <td><%=lg.getSingleAmount()%></td>
                                    <td><%=lg.getDate_Returned()%></td>
                                </tr> 
                                <%} else{%>
                                
                                <%}}%>
                            </tbody>
                        </table>
                           <script>
                      $(document).ready(function() {
          $('#example').DataTable();
                } );
               </script>  
               <div class="user-return"> 
                   <div class="panel-2-header-3">
                       <span><h3 style="color:  #cc0066"> Most recently Loan History [ Last transaction]</h3></span>
                        
                    </div>
                   <ul>
                       <li><span><input type="text"  class="text" value="<%=rtam.getLoanAmount()%>"style="width: 13rem; height: 2.6rem; background:  #0099cc; color:  #ffffff; font-weight:  bold" required></span><span>&nbsp;Loan Offer</span> </li>
                       <li> <span> <input type="text"  class="text" value="<%=rtam.getTotalPayWithInterest()%>"style="width: 13rem; height: 2.6rem; background:  #009999; color:  #ffffff; font-weight: bold" required></span><span>&nbsp;Payable Amount with Interest</span></li>
                       <li> <span> <input type="text"   class="text"readonly="true" value="<%=rtam.getTotalPayableWithPenalt()%>" style="width: 13rem; height: 2.6rem; background:  #cc0033; color:  #ffffff; font-weight: bold" placeholder="Pick return Date" required></span><span>&nbsp;Payable Amount with Interest and Penalty</span></li>
                        <li> <span><input type="text"  class="text" readonly="true" value="<%=rtam.getDateApprove()%>" style="width: 13rem; height: 2.6rem;  background:  #cccccc; font-weight: bold"   required></span><span>&nbsp;Date Loan Confirmed</span></li>
                        <li><span> <input type="text"  class="text" readonly="true" value="<%=rtam.getDateExpire()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;End of Loan Return</span></li>
                   </ul>
                   
                   </div> 
                        
                        
                    </form>
                     </div>
                   </div>
                <%} else{%>
                
             <%}} else{%> 
                
             <%}%> 
                </div>
            </div>
            </div>
             
            </main>
  </div>
  
  <script>
      $(document).ready(function(){
   var st = $('.st_secure').val();
   var st1 = $('.st_secure').val();
   var st2 = $('.st_secure').val();
   var st3 = $('.st_secure').val();
  // alert(st);
   if(st !== 'RELEASED' && st1 !== 'APPROVED' && st2 !== 'PENDING' && st3 !== 'REJECTED' ){
      var error ="<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> loan payment(10 %) done, continue to the next last step </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
       $('#status_security').html(error);
       document.getElementById('btn_payment_details').disabled = false;
   }
  
   else{
     
           var error ="<div class='alert alert-danger alert-dismissible'><span style='background:  #ffcccc; padding: .8rem;'><strong>Sorry!!!</strong> Loan applicant either not completed serving amount (10%) OR Sunction for this loan already made </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
       $('#status_security').html(error);
        document.getElementById('btn_payment_details').disabled = true;
   }
// Jquery to change loam detail during loan sunction 
 function calc() {
              // $('#paystatus').text('NOT PAYED');  
              var required = $("#loan_requested").val();
              var pay =  $("#10_payed").val();   
              var remain =  required *(10/100);
              var text = 'New';
                   //var t2 = '<input type="hidden" id="servingpay" name="loan_ap_status" value="'+paid+'">';
                  $('#ppp').html(remain);
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
        var error_email ='';
        var error_mname ='';
        var error_fname ='';
        var error_lname ='';
        var error_gender ='';
        var error_date ='';
        var error_regional ='';
        var error_district ='';
        var error_ward ='';
        var error_phone ='';
        var error_member_group ='';
        
        var filter =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if($.trim($('#email').val()).length === 0){
            error_email = 'Email Address is Required';
            $('#error_email').text(error_email);
            $('#email').addClass('has-error');
            
        }
        else{
            if(!filter.test($('#email').val())){
                error_email = 'Invalid email address';
                $('#error_email').text(error_email);
                $('#email').addClass('has-error');
                
            }
            else{
                error_email = '';
                $('#error_email').text(error_email);
                $('#email').removeClass('has-error');
            }
        }
        if($.trim($('#mname').val()).length === 0){
            error_mname = 'Middle name can not be Empty';
            $('#error_mname').text(error_mname);
            $('#mname').addClass('has-error');
        }
        else{
            error_fname = '';
            $('#error_mname').text(error_fname);
            $('#mname').removeClass('has-error');
        }
        //Fbane
         if($.trim($('#fname').val()).length === 0){
            error_fname = 'Fist name can not be Empty';
            $('#error_fname').text(error_fname);
            $('#fname').addClass('has-error');
        }
        else{
            error_fname = '';
            $('#error_fname').text(error_fname);
            $('#fname').removeClass('has-error');
        }
        //End
        //Lname
         if($.trim($('#lname').val()).length === 0){
            error_fname = 'Last name can not be Empty';
            $('#error_lname').text(error_fname);
            $('#lname').addClass('has-error');
        }
        else{
            error_lname = '';
            $('#error_lname').text(error_lname);
            $('#lname').removeClass('has-error');
        }
        //lname END
        //Date
         var age = $('#date').val();
         if(age === ''){
            error_date = 'Please Select Date of Birth';
            $('#error_date').text(error_date);
            $('#date').addClass('has-error');
        }
        else{
            error_date = '';
            $('#error_date').text(error_date);
            $('#date').removeClass('has-error');
        }
        //END
         //Regional
         var regional = $('#regional').val();
         if(regional === ''){
            error_regional = 'Please Select Regional where Client found';
            $('#error_regional').text(error_regional);
            $('#regional').addClass('has-error');
        }
        else{
            error_regional = '';
            $('#error_regional').text(error_regional);
            $('#regional').removeClass('has-error');
        }
        //END
         //District
         var district = $('#district').val();
         if(district === ''){
            error_district = 'Please Select District where Client found';
            $('#error_district').text(error_district);
            $('#district').addClass('has-error');
        }
        else{
            error_district = '';
            $('#error_district').text(error_regional);
            $('#district').removeClass('has-error');
        }
        //END
         //Wards / Village
         var ward = $('#ward').val();
         if(ward === ''){
            error_ward = 'Please  Enter Wards / Village where Client found';
            $('#error_ward').text(error_ward);
            $('#ward').addClass('has-error');
        }
        else{
            error_ward = '';
            $('#error_ward').text(error_ward);
            $('#ward').removeClass('has-error');
        }
        //END
        //Phone number 
         var phone = /^[0-9]*$/;
      var phone2 = $('#phone').val();
      var phone3 = $('#phone').val().length;
      if(phone3 >10){
          error_phone = 'Phone number digit must be Ten (10), please correct your nummber';
            $('#error_phone').text(error_phone);
            $('#phone').addClass('has-error');
      }
     
      else if(phone.test(phone2) && phone !== '' && phone3 >9){
         error_phone = '';
            $('#error_phone').text(error_phone);
            $('#phone').removeClass('has-error');
      }
      
      else{
         error_phone = 'Phone number is not Valid';
            $('#error_phone').text(error_phone);
            $('#phone').addClass('has-error');
      }
        // End 
        if(error_fname !=='' || error_mname !==''|| error_lname !==''|| error_date !==''|| error_regional !==''|| error_district !==''|| error_ward !==''|| error_phone !==''){
              var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms').html(error);
                  setTimeout(function(){
                    document.getElementById('sms').innerHTML='';
                },4000);
            
            return false;
        }
        else{
            $('#list_applicant_details').removeClass('active active_tab1');
            $('#list_applicant_details').removeAttr('href data-toggle');
            $('#applicant_details').removeClass('active');
            $('#list_applicant_details').addClass('inactive_tab1');
            $('#list_income_details').removeClass('inactive_tab1');
            $('#list_income_details').addClass('active_tab1 active');
            $('#list_income_details').attr('href', '#income_details');
            $('#list_income_details').attr('data-toggle','tab');
            $('#income_details').addClass('active in');
        } 
        
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
        var error_first_name ='';
        var error_last_name ='';
        if($.trim($('#business_name').val()).length === 0){
            error_first_name ='Enter Your Business Name';
            $('#error_business_name').text(error_first_name);
            $('#business_name').addClass('has-error');
        }
        else{
            error_first_name = '';
            $('#error_business_name').text(error_first_name);
            $('#business_name').removeClass('has-error');
        }
      if($.trim($('#business_income').val()).length === 0){
          error_last_name = 'Business Approximation Income amount kis required';
          $('#error_income_amount').text(error_last_name);
          $('#business_income').addClass('has-error');
          
      }
      else{
         error_last_name = '';
         $('#error_income_amount').text(error_last_name);
         $('#business_income').removeClass('has-error');
      }
      if(error_first_name !=='' || error_last_name !== ''){
          
           var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms1').html(error);
                  setTimeout(function(){
                    document.getElementById('sms1').innerHTML='';
                },4000);
                return false;
      }
      else{
          $('#list_income_details').removeClass('active active_tab1');
          $('#list_income_details').removeAttr('href data-toggle');
          $('#income_details').removeClass('active');
          $('#list_income_details').addClass('inactive_tab1');
          $('#list_referee_details').removeClass('inactive_tab1');
          $('#list_referee_details').addClass('active_tab1 active');
          $('#list_referee_details').attr('href','#referee_details');
          $('#list_referee_details').attr('data-toggle', 'tab');
          $('#referee_details').addClass('active in');
          
      }
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
        var error_member_group ='';
        var error_mobile_no = '';
        var mobile_validation = /^\d{10}$/;
        if($.trim($('#member_group').val()).length === 0){
           error_member_group ='Please Select Group member as refrees'; 
           $('#error_member_group').text(error_member_group);
           $('#member_group').addClass('has-error');
        }
        else{
            error_member_group ='';
            $('#error_member_group').text(error_member_group);
            $('#member_group').removeClass('has-error');
            
        }
        if($.trim($('#mobile_no').val()).length===0){
            error_mobile_no = 'Mobile Number is required';
            $('#error_mobile_no').text(error_mobile_no);
            $('#mobile_no').addClass('has-error');
            
        }
        else{
            if(!mobile_validation.test($('#mobile_no').val())){
                error_mobile_no = 'Invalide Mobile Number';
                $('#error_mobile_no').text(error_mobile_no);
                $('#mobile_no').addClass('hass-error');
            }
        }
        if(error_member_group !== ''){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms2').html(error);
                  setTimeout(function(){
                    document.getElementById('sms2').innerHTML='';
                },4000);
                return false;
        }
        else{
         
          
          $('#list_referee_details').removeClass('active active_tab1');
          $('#list_referee_details').removeAttr('href data-toggle');
          $('#referee_details').removeClass('active');
          $('#list_referee_details').addClass('inactive_tab1');
          $('#list_bond_details').removeClass('inactive_tab1');
          $('#list_bond_details').addClass('active_tab1 active');
          $('#list_bond_details').attr('href','#referee_details');
          $('#list_bond_details').attr('data-toggle', 'tab');
          $('#bond_details').addClass('active in');
        }
    });
    $('#previous_btn_bond_details').click(function(){
        $('#list_bond_details').removeClass('active active_tab1');
        $('#list_bond_details').removeAttr('href data-toggle');
        $('#bond_details').removeClass('active in');
        $('#list_bond_details').addClass('inactive_tab1');
        $('#list_referee_details').removeClass('inactive_tab1');
        $('#llist_referee_details').addClass('active_tab1 active');
        $('#list_referee_details').attr('hre','#income_details');
        $('#list_referee_details').attr('data-toggle','tab');
        $('#referee_details').addClass('active in');
    });
     $('#btn_bond_details').click(function(){
           var error_fproperty ='';
           var error_mproperty ='';
           var error_lproperty ='';
           
           if($.trim($('#fproperty').val()).length === 0){
            error_fproperty = 'Please register your first Propert';
            $('#error_fproperty').text(error_fproperty);
            $('#fproperty').addClass('has-error');
         }
        else{
            error_fproperty = '';
            $('#error_fproperty').text( error_fproperty);
            $('#fproperty').removeClass('has-error');
        } 
         if($.trim($('#mproperty').val()).length === 0){
            error_fproperty = 'Please register your Second Propert';
            $('#error_mproperty').text(error_fproperty);
            $('#mproperty').addClass('has-error');
         }
        else{
            error_fproperty = '';
            $('#error_mproperty').text( error_fproperty);
            $('#mproperty').removeClass('has-error');
        }
        if(error_fproperty !== '' ||error_mproperty !== '' ){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms3').html(error);
                  setTimeout(function(){
                    document.getElementById('sms3').innerHTML='';
                },4000);
                return false;
        }
        else{
          
          $('#list_bond_details').removeClass('active active_tab1');
          $('#list_bond_details').removeAttr('href data-toggle');
          $('#bond_details').removeClass('active');
          $('#list_bond_details').addClass('inactive_tab1');
          $('#list_payment_details').removeClass('inactive_tab1');
          $('#list_payment_details').addClass('active_tab1 active');
          $('#list_payment_details').attr('href','#referee_details');
          $('#list_payment_details').attr('data-toggle', 'tab');
          $('#payment_details').addClass('active in');
      }
    });
     $('#previous_btn_payment_details').click(function(){
        $('#list_payment_details').removeClass('active active_tab1');
        $('#list_payment_details').removeAttr('href data-toggle');
        $('#payment_details').removeClass('active in');
        $('#list_payment_details').addClass('inactive_tab1');
        $('#list_bond_details').removeClass('inactive_tab1');
        $('#llist_bond_details').addClass('active_tab1 active');
        $('#list_bond_details').attr('hre','#income_details');
        $('#list_bond_details').attr('data-toggle','tab');
        $('#bond_details').addClass('active in');
    });
     $('#btn_payment_details').click(function(){
          var error_fee_required ='';
           var error_fee_amount ='';
           
           if($.trim($('#loan_requested').val()).length === 0){
            error_fee_required = 'Sorry!! No Fee Payment detected!! you can not continue to the Next step';
            $('#error_fee_required').text(error_fee_required);
            $('#loan_requested').addClass('has-error');
         }
        else{
            error_fee_amount = '';
            $('#error_fee_required').text( error_fee_amount);
            $('#loan_requested').removeClass('has-error');
        } 
        if($.trim($('#fee_amount').val()).length === 0){
            error_fee_required = 'Make payment please!! you can not continue to the Next step before payment';
            $('#error_fee_amount').text(error_fee_required);
            $('#fee_amount').addClass('has-error');
         }
        else{
            error_fee_amount = '';
            $('#error_fee_amount').text( error_fee_amount);
            $('#fee_amount').removeClass('has-error');
        } 
        
        if(error_fee_required !== '' ||error_fee_amount !== '' ){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms4').html(error);
                  setTimeout(function(){
                    document.getElementById('sms4').innerHTML='';
                },4000);
                return false;
        }
        else{
          
          $('#list_payment_details').removeClass('active active_tab1');
          $('#list_payment_details').removeAttr('href data-toggle');
          $('#payment_details').removeClass('active');
          $('#list_payment_details').addClass('inactive_tab1');
          $('#list_finish_details').removeClass('inactive_tab1');
          $('#list_finish_details').addClass('active_tab1 active');
          $('#list_finish_details').attr('href','#referee_details');
          $('#list_finish_details').attr('data-toggle', 'tab');
          $('#finish_details').addClass('active in');
      }
    });
     $('#btn_finish_details').click(function(){
        var error_finish ='';
        var agree = $('#agree').val();
        if(agree === ''){
           error_finish ='Please Select Group member as refrees'; 
           $('#error_finish').text(error_finish);
           $('#agree').addClass('has-error');
        }
        else{
            error_finish ='';
            $('#error_finish').text(error_finish);
            $('#agree').removeClass('has-error');
            
        }
        
       
        if(error_finish !== ''){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms6').html(error);
                  setTimeout(function(){
                    document.getElementById('sms6').innerHTML='';
                },4000);
                return false;
        }
        else{
           // $('#register_form').on('submit',function(){
                $.ajax({
                  url:'controller.jsp?page=member_registration&operation=add_new',
                  methode:'POST',
                  data:$('#register_form').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Member Details Registered successfully</div>';
                  $('#regsms').html(error);
                  setTimeout(function(){
                    document.getElementById('regsms').innerHTML='';
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
            //});
             
        }
    });
     $('#previous_btn_finish_details').click(function(){
        $('#list_finish_details').removeClass('active active_tab1');
        $('#list_finish_details').removeAttr('href data-toggle');
        $('#finish_details').removeClass('active in');
        $('#list_finish_details').addClass('inactive_tab1');
        $('#list_payment_details').removeClass('inactive_tab1');
        $('#llist_payment_details').addClass('active_tab1 active');
        $('#list_payment_details').attr('hre','#income_details');
        $('#list_payment_details').attr('data-toggle','tab');
        $('#payment_details').addClass('active in');
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

  