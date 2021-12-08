<%@page import="Classes.regionals"%>
<%@page import="Classes.deposit"%>
<%@page import="Classes.return_amount"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.loan_group_details"%>
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
                        <a href="#" class="active"><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00021_view_all"><li><span class="fa fa-eye"></span><span>View all members</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new_new"><li><span class="fa fa-user"></span><span>New member registration</span><span></span></li></a>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-money"></span><span>Individual Loan Allocation</span><span class="fa fa-chevron-down first"></span></a>
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
                            <a href=""><li><span class="fa fa-line-chart"></span><span>General Report</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=applicationReport"><li><span class="fa fa-line-chart"></span><span>Loan application Report</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=sanctionReport"><li><span class="fa fa-line-chart"></span><span>Loan sanction Report</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=disburseReport"><li><span class="fa fa-line-chart"></span><span>Loan disbursement Report</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=collectionReport"><li><span class="fa fa-line-chart"></span><span>Loan Collection Report</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=savingReport"><li><span class="fa fa-line-chart"></span><span>Saving amount  Report</span><span></span></li></a>
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
                            <a href=""><li><span class="fa fa-eye"></span><span>Members report</span><span></span></li></a>
                            <a href=""><li><span class="fa fa-user"></span><span>Expenses report</span><span></span></li></a>
                            
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
                    <span><%=user1.getName()%> &nbsp;&nbsp; <%=user1.getLastName()%></span>
                </div>
                <div class="position">
                    <span>Position::</span>
                    <span><%=user1.getType()%></span>
                </div>
                <div class="date">
                    <span>Current Date:</span>
                    <span>
                        <%
                        
                     DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                   String formattedDate = df.format(new Date());
                   out.println(formattedDate);
                        %>
                    </span>
                </div>
            </div>
            <main>
            
            <div class="main-body-menus">
                <div class="palel-1">
                <% 
                if(request.getParameter("redirect")==null){
                %>    
               <div class="panel-1-header-3">
                   <span>LIST FOR  ALL REGISTERED MEMBERS </span> 
                    </div>
                    <div class="panel-1-body">
                 <table width="100%" class="table" id="example">
                  <thead>
                  <th>S/N</th>
                  <th>REG ID</th>
                  <th>FIRST NAME</th>
                  <th>LAST NAME</th>
                  <th>PHONE</th>
                  <th>GROUP</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                     ArrayList list4=AD.PrintMemberDetails_ALL();
                                      for(int i=0; i<list4.size(); i++){
                                     members mb = (members)list4.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td><%=mb.getMemberRegistrationAutoID()%></td>
                                    <td>
                                        <span><%=mb.getFname()%></span>
                                    </td>
                                    <td><%=mb.getLname()%></td>
                                    <td><%=mb.getphone()%></td>
                                    <td><%=mb.getgroup()%></td>
                                    <td>
                                        <a href="menu-panel.jsp?load=00021_view_all&redirect=Edit&code=<%=mb.getMemberRegistrationAutoID()%>" class="btn btn-success"><span class="fa fa-pencil-square-o"></span></a>
                                       
                                                <a href="" class="delete_bill btn btn-danger"><span class="fa fa-trash"></span></a>
                                                <a href="menu-panel.jsp?load=00021_view_all&redirect=view&code=<%=mb.getMemberRegistrationAutoID()%>" class="btn btn-info" ><span class="fa fa-eye"></span></a>
                                    </td>
                                </tr>
                                
                                <%}%> 
                              
                            </tbody>
                        </table>
                   
               <script>
                      $(document).ready(function() {
                $('#example').DataTable({
                    dom: 'lBfrtip',
                    buttons:[
                        'print',
                        'excel',
                        'pdf'
                    ]
                });
                 } );
               </script>
               
              </div>
                </div>
           <div id="delete_patient_bill" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title">Warning!!</h4>
                    </div>
                    <div class="modal-body">
                        <div id="deletesms"></div>
                         <form method="POST" id="pending_bill_delete">
                          
                            
                             <label>Are You sure you want to reject this patient appointment ? </label>
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
               <%
                   } else if(request.getParameter("redirect").equals("Edit")){
                 members mb2 = AD.PrintMemberDetails_To_Edit(Integer.parseInt(request.getParameter("code")));
               %>
               <div class="panel-1-header">
                        <span>EDIT MEMBER DETAILS </span>  
              </div>
                    <div class="panel-1-body">
                       
                      <form  id="register_form">
                <input type="hidden" name="page" value="member_registration">
                       <input type="hidden" name="operation" value="Edit">
                       <input type="hidden" name="memberID" value="<%=mb2.getuserID()%>">
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
                            Collateral Properties
                     </a></li>
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_payment_details" style="border: 1px solid #ccc">
                            Registration Fees
                     </a></li>
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_finish_details" style="border: 1px solid #ccc">
                            Finish
                     </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 01::</span> &nbsp;&nbsp;PREVIEW BASIC APPLICANT DETAILS</span></div>
                            <div class="panel-body">
                                 
                                <div class="form-group">
                                    <label>First Name <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="fname" autocomplete="off" id="fname" value="<%=mb2.getFname()%>" class="form-control"/>
                                    <span id="error_fname" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Middle Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="mname" autocomplete="off" value="<%=mb2.getMname()%>" id="mname" class="form-control"/>
                                    <span id="error_mname" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Last Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="lname" value="<%=mb2.getLname()%>" id="lname" autocomplete="off" class="form-control">
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
                                    <input type="date" id="date" autocomplete="off" name="date" value="<%=mb2.getdate()%>" class="form-control">
                                 <span id="error_date" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Regional of Residence<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select id="regional"  autocomplete="off" name="regional" class="form-control finddistrict">
                                       <option value="<%=mb2.getregional()%>" ><%=mb2.getRegionalsNameinCountry()%></option>
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
                                    <select id="district" autocomplete="off" name="dist" class="form-control">
                                       <option value="<%=mb2.getregional()%>" ><%=mb2.getDistrictNameinCountry()%></option>
                                    </select>
                                     <span id="error_district" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Wards / Village<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" autocomplete="off" value="<%=mb2.getWards()%>" name="ward" id="ward" class="form-control">
                                    <span id="error_ward" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Phone Number<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" autocomplete="off" value="<%=mb2.getphone()%>" name="phone" id="phone" class="form-control">
                                     <span id="error_phone" class="text-danger"></span>
                                </div>
                                  <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="text" name="email" id="email" value="<%=mb2.getemail()%> "autocomplete="off" class="form-control"/>
                                    <span id="error_email"  class="text-danger"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Identity Card Type</label>
                                    <select id="idtype" name="card-type" autocomplete="off" class="form-control">
                                         <option value="<%=mb2.getidtype()%>"><%=mb2.getidtype()%></option>
                               <option value="NIDA" >National Identity Card</option>
                               <option value="VOTER ID" >Voter Identity Card</option>
                               <option value="PASSPORT" >Traveling Passport Number</option>
                               <option value="DRIVING LINCENSE" >Driving License</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Enter Identity Card Number</label>
                                    <input type="text" name="card-number" id="email" value="<%=mb2.getidno()%>" autocomplete="off" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Working Status</label>
                                   
                               <select name="working" class="form-control">
               
                                    <option value="<%=mb2.getwork()%>"><%=mb2.getwork()%></option>
                                    <option >Self-employed</option>
                                    <option >Employee</option>
                                    <option >Employer</option>
                                    </select>
                                </div>
                                <br>
                                <div align="center">
                                    <button type="button" name="btn_applicant_details" id="btn_applicant_details" class="btn btn-info btn-lg">Next</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="income_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 02::</span> &nbsp;&nbsp;
                                PREVIEW OTHER SOURCE OF INCOME 
                            </div>
                            <div class="panel-body">
                                <div id="sms1"></div>
                                <div class="form-group">
                                    <label>Enter your Business Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" name="business_name" value="<%=mb2.getBusinessName()%>" autocomplete="off" id="business_name" class="form-control"/>
                                    <span id="error_business_name" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Monthly Income approximation<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" name="mincome" value="<%=mb2.getBusinessIncome()%>" autocomplete="off" id="business_income" class="form-control"/>
                                    <span id="error_income_amount" class="text-danger"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Other Source of Income (if any)</label>
                                    <input type="text" name="other_source" value="<%=mb2.getOtherSource()%>" autocomplete="off" id="other_source" class="form-control"/>
                                    <span id="error_other" class="text-danger"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Monthly Approximation income for other source</label>
                                    <input type="number" name="other_income" value="<%=mb2.getOtherSourceIncome()%>" autocomplete="off" id="other_source" class="form-control"/>
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
                               PREVIEW APPLICANT REFEREES
                            </div>
                            <div class="panel-body">
                                <div id="sms2"></div>
                                <div class="form-group">
                                    <label>Select Group Name <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select id="member_group" name="group" class="form-control">
                                         <option value="<%=mb2.getGroupId()%>"><%=mb2.getgroup()%></option>
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
                               PREVIEW LOAN COLLATERAL PROPERTIES
                            </div>
                            <div class="panel-body">
                                <div id="sms3"></div>
                                <div class="form-group">
                                    <label>First Property Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" autocomplete="off" value="<%=mb2.getFproperty()%>" name="fpropety" id="fproperty" class="form-control">
                                    <span class="text-danger" id="error_fproperty"></span>
                                </div>
                                <div class="form-group">
                                    <label>Second Property Name<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="text" autocomplete="off" value="<%=mb2.getSecondaProperty()%>" name="mpropety" id="mproperty" class="form-control">
                                    <span class="text-danger" id="error_mproperty"></span>
                                </div>
                                <div class="form-group">
                                    <label>Third Property Name</label>
                                    <input type="text" name="lpropety" value="<%=mb2.getLastProperty()%>" autocomplete="off" id="lproperty" class="form-control">
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
                               PREVIEW PAYMENT AREA 
                            </div>
                            <div class="panel-body">
                                <div id="sms4"></div>
                                <div class="form-group">
                                    <label>Amount Required To pay</label>
                                    <input type="text" name="fee_required" id="fee_required" value="2000" readonly="true" class="form-control">
                                    <span class="text-danger" id="error_fee_required"></span>
                                </div>
                                <div class="form-group">
                                    <label>Enter amount<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" autocomplete="off" value="<%=mb2.getRegFees()%>" name="fee_amount" id="fee_amount" class="form-control">
                                    <span class="text-danger" id="error_fee_amount"></span>
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
                               FINISH EDITING (UPDATE) 
                            </div>
                            <div class="panel-body">
                                <div id="regsms"></div>
                               <div id="sms5"></div>
                                <div class="form-group">
                                    <label>
                                        <input type="checkbox" name="agree" id="agree" required>
                                        Agree For applicant registration
                                    </label>
                                    <span class="text-danger" id="error_fpropety"></span>
                                </div>
                                
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_finish_details" id="previous_btn_finish_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="btn_finish_details" id="btn_finish_details" class="btn btn-success btn-lg">Confirm & Update</button>   
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
            </form>
              <div class="form-group" id="process" style="display: none">
                    <small>Member record start to update ! please wait...</small>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                            
                        </div>
                    </div>
                </div>                         
                 </div> 
               
               
              <%} else if(request.getParameter("redirect").equals("view")){
               members mb5 = AD.PrintMemberDetails_To_Edit(Integer.parseInt(request.getParameter("code")));
               %>
               <div class="panel panel-primary" id="prtmembers">
                   <div class="panel-heading">
                       TAARIFA KAMILI ZA MWANACHAMA 
                   </div>
                   <table class="table-2" style="width: 100%">
                       <tbody>
                        <tr>
                         <td>Jina la kikundi:: &nbsp;&nbsp;&nbsp;<%=mb5.getgroup()%></td>
                       </tr>
                        <tr>
                           <td>Namba ya Utambulisho::&nbsp;&nbsp;&nbsp;<%=mb5.getMemberRegistrationAutoID()%></td>
                       </tr>
                       <tr>
                           <td colspan="6" style="background-color:  #006666; color:  #ffffff"> TAARIKA KAMILI ZA MTEJA</td>
                       </tr>
                      </tbody> 
                </table>
                       <table class="table-2" id="tbs" style="width: 100%"> 
                 <tbody>
                      <tr>
                          <td style="color: #999999">First Name</td><td><%=mb5.getFname()%></td>
                          <td style="color: #999999">Middle Name</td><td><%=mb5.getMname()%></td>
                          <td style="color: #999999">Last Name</td><td><%=mb5.getLname()%></td>
                      </tr> 
                      <tr>
                          <td style="color: #999999">Gender</td><td><%=mb5.getgender()%></td>
                          <td style="color: #999999">Date of Birth</td><td><%=mb5.getdate()%></td>
                          <td style="color: #999999">Regional</td><td><%=mb5.getRegionalsNameinCountry()%></td>
                      </tr> 
                       <tr>
                          <td style="color: #999999">District</td><td><%=mb5.getDistrictNameinCountry()%></td>
                          <td style="color: #999999">Phone number</td><td><%=mb5.getphone()%></td>
                          <td style="color: #999999">Email</td><td><%=mb5.getemail()%></td>
                      </tr> 
                      <tr>
                         <td style="color: #999999">Identity Type</td><td><%=mb5.getidtype()%></td>
                         <td style="color: #999999">Identity Number</td><td><%=mb5.getidno()%></td>
                         <td style="color: #999999">Work status</td><td><%=mb5.getwork()%></td>
                       </tr> 
                   <tr>
                           <td colspan="6" style="background-color:  #006666; color:  #ffffff"> VYANZO  VINGINE VYA MAPATO</td>
                  </tr>
                  <tr>
                          <td style="color: #999999">Biashara / Kazi yake</td><td><%=mb5.getBusinessName()%></td>
                          <td style="color: #999999">Mapato kwa Mwezi</td><td><%=mb5.getBusinessIncome()%></td>
                          <td style="color: #999999">Chanzo kingine cha mapato</td><td><%=mb5.getOtherSource()%></td> 
                  </tr>
                  <tr>
                          <td style="color: #999999">Maingizo kwa mwezi</td><td><%=mb5.getOtherSourceIncome()%></td> 
                  </tr>
                   <tr>
                           <td colspan="6" style="background-color:  #006666; color:  #ffffff"> MALI ALIZO WEKEA DHAMANA KATIKA MKOPO</td>
                  </tr>
                   <tr>
                     <td style="color: #999999">Mali ya Kwanza</td><td><%=mb5.getFproperty()%></td>
                          <td style="color: #999999">Mali ya pili</td><td><%=mb5.getSecondaProperty()%></td>
                          <td style="color: #999999">Mali ya Tatu</td><td><%=mb5.getLastProperty()%></td> 
                  </tr>
                  <tr>
                           <td colspan="6" style="background-color:  #006666; color:  #ffffff"> MALIPO YA GHARAMA ZA USAJIRI</td>
                  </tr>
                  <td style="color: #999999">Jumla ya Pesa</td><td><%=mb5.getRegFees()%></td>
                  </tbody>
               </table> 
                  <span><a href="PDF.jsp?Report=members&code=<%=mb5.getMemberRegistrationAutoID()%>" target="_black" class="btn btn-success">Generate PDF Document</a></span>
        </div>
                 
             <%} else{%>
            
             <%}%>
            </div>
            </div>
            
        
            </main>
  </div>
  <script>
      $(document).ready(function(){
         
       $('.delete_bill').click(function(){
          event.preventDefault();  
       var bill_id = $(this).closest('tr').find('.bll_id').text();
        var t2 = '<input type="hidden" id="delete_bill" name="bill_id" value="'+bill_id+'">';
        $('#codedelete').html(t2);
        $('#delete_patient_bill').modal('show');
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
            
        })
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
           
           if($.trim($('#fee_required').val()).length === 0){
            error_fee_required = 'Sorry!! No Fee Payment detected!! you can not continue to the Next step';
            $('#error_fee_required').text(error_fee_required);
            $('#fee_required').addClass('has-error');
         }
        else{
            error_fee_amount = '';
            $('#error_fee_required').text( error_fee_amount);
            $('#fee_required').removeClass('has-error');
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
                  url:'controller.jsp?page=member_registration&operation=Edit',
                  methode:'POST',
                  data:$('#register_form').serialize(),
                    beforeSend: function(){
                        $('#btn_finish_details').attr('disabled','disabled');
                        $('#process').css('display','block');
                    },
                  success:function(data){
                        var percentage = 0;
                       var timer = setInterval(function(){
                           percentage = percentage +20;
                           progress_bar_process(percentage, timer);
                       },1000);
               }
              });
        }
    });
    function progress_bar_process(percentage, timer){
           $('.progress-bar').css('width', percentage + '%');
           if(percentage > 100){
               clearInterval(timer);
               $('#register_form')[0].reset();
               $('#process').css('display','none');
               $('.progress-bar').css('width','0%');
               $('#btn_finish_details').attr('disabled',true);
               $('#regsms').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Data Edited successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
               setTimeout(function(){
                   $('#regsms').html('');
                    alert("Exit to view  recorde");
                     location.reload();
               },1000);
           }
       }
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
   