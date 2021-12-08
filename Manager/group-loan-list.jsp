<%@page import="Classes.member_group_loan_update"%>
<%@page import="Classes.group_individual_satus"%>
<%@page import="Classes.group_loan_div_remain"%>
<%@page import="Classes.member_allocate"%>
<%@page import="Classes.member_appload"%>
<%@page import="Classes.loan_group_details"%>
<%@page import="Classes.group_details_2"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.group_return_amount"%>
<%@page import="Classes.group_details"%>
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
                             <a href="menu-panel.jsp?load=00033_ln_lst"><li><span class="fa fa-eye"></span><span>Loan Waiting for Sanction</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=000333849_ln_history"><li><span class="fa fa-eye"></span><span>View Members Loan History</span><span></span></li></a>
                             
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#" class="active"><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
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
                  <th>#</th>
                  <th>GROUP DETAILS</th>
                  <th>LOAN DETAILS</th>
                  <th>RETURN DETAILS</th>
                  <th>STATUS</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                     ArrayList list4=AD.Print_Loan_Group_List();
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
                              
                                        <a href="menu-panel.jsp?load=0070_loan_group&confirm-loan=true&Ref_ID=<%=lg.getGLoanID()%>&loanID=<%=lg.geGtInvoce()%>" class="btn btn-success"><span class="fa fa-eye">&nbsp;&nbsp;Show Members</span></a>
                                             

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
                loan_giving log = AD.Print_Loan_Group_List_To_Edit(Integer.parseInt(request.getParameter("Ref_ID")));
                %>
                  <div class="panel panel-primary">
                         <div class="panel-heading">
                             <span><h5><span style="color:  #ffff00; font-weight: bold">LOAN SANCTION AREA:</span> Please review all loan applicant details very carefully </h5></span>
                         </div>
                 <form  id="accept_reject_group">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Group Members</a>
                    </li>
                  
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_payment_details" style="border: 1px solid #ccc">
                            Loan Adjustment
                     </a></li>
                     
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_finish_details" style="border: 1px solid #ccc">
                            Manager Recommendation
                     </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 01::</span> &nbsp;&nbsp;GROUP MEMBERS LIST</span></div>
                            <div class="panel-body">
                                <table id="table" class="table">
                                    <thead>
                                    <th>ID</th>
                                    <th>REG-ID</th>
                                    <th>MEMBER FULL NAME</th>
                                    <th>GROUP NAME</th>
                                    <th>LOAN REQUESTED</th>
                                    <th>STATUS</th>
                                    <th>ACTION</th>
                                    </thead>
                                    <tbody>
                                         <%
                                      ArrayList list40=AD.Print_Loan_Group_List_individual(request.getParameter("loanID"));
                                     for(int i=0; i<list40.size(); i++){
                                     group_details lg = (group_details)list40.get(i);
                                     if(lg != null){
                                   %>
                                        <tr>
                                            <td></td>
                                            <td><%=lg.getGroupMember_ID_sunction()%></td>
                                            <td><%=lg.getGroupMember_Fname_sunction()%> &nbsp;&nbsp;<%=lg.getGroupMember_Mname_sunction()%>&nbsp;&nbsp;<%=lg.getGroupMember_Lname_sunction()%></td>
                                            <td><%=lg.getGroupMember_GroupName_sunction()%></td>
                                            <td><%=lg.getGroupMember_Amount_sunction()%></td>
                                            <td></td>
                                            <td>
                                                <a href="#"  class="btn btn-success"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Re-Pay [ 10 %]</span></a>
                                            </td>
                                        </tr>
                                       <%}else{%>
                                        <%}}%>
                                    </tbody>
                                </table>
                                  <script>
                                $(document).ready(function() {
                    $('#table').DataTable();
                          } );
                         </script>
                                <br>
                                <div align="center">
                                    <button type="button" name="btn_applicant_details" id="btn_applicant_details" class="btn btn-info btn-lg">Continue to Preview</button>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                   
                    <div class="tab-pane fade" id="payment_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 02::</span> &nbsp;&nbsp;
                               LOAN ADJUSTMENT  
                               <%
                                group_details fp = AD.Print_Loan_Group_List_individual_adjust(request.getParameter("loanID"));
                               if(fp!=null){
                               %>
                               <a href="#" name="" class="btn btn-success" style="float: right"  data-toggle="modal" data-target="#adjust_group_loan"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Adjust Group loan</span></a>
                               </div>
                            <div class="panel-body">
                                <div id="sm"></div>
                                <div class="form-group">
                                    <label>Amount Requested</label>
                                    <input type="text" id="grequested" name="grequested" value="<%=fp.getGroup_Pure_amount_sunction()%>" class="form-control">
                                    
                                </div>
                                <div class="form-group">
                                    <label>Group loan Requested + Interest</label>
                                    <input type="text" name="grequested" value="<%=fp.getGroupMember_Gamount_interest_sunction()%>" class="form-control">
                                    
                                </div>
                                    <input type="hidden" name="cram_invoice" id="cram_invoice" value="<%=fp.getGroupMember_Invoice_sunction()%>">
                                    <%}else{%> 
                                    <%}%>
                                <table id="table" class="table">
                                    <thead>
                                    <th>ID</th>
                                    <th>REG-ID</th>
                                    <th>REF ID</th>
                                    <th>MEMBER FULL NAME</th>
                                    <th>GROUP NAME</th>
                                    <th>LOAN REQUESTED</th>
                                     <th>AMOUNT & INTEREST</th>
                                    <th>ACTION</th>
                                    </thead>
                                    <tbody>
                                         <%
                                     ArrayList list401=AD.Print_Loan_Group_List_individual(request.getParameter("loanID"));
                                     for(int i=0; i<list401.size(); i++){
                                     group_details lg = (group_details)list401.get(i);
                                     if(lg!=null){
                                   %>
                                        <tr>
                                            <td></td>
                                            <td class="member_id"><%=lg.getGroupMember_ID_sunction()%></td>
                                            <td class="member_ref"><%=lg.getGroupMember_Invoice_sunction()%></td>
                                            <td><%=lg.getGroupMember_Fname_sunction()%> &nbsp;&nbsp;<%=lg.getGroupMember_Mname_sunction()%>&nbsp;&nbsp;<%=lg.getGroupMember_Lname_sunction()%></td>
                                            <td><%=lg.getGroupMember_GroupName_sunction()%></td>
                                            <td><%=lg.getGroupMember_Amount_sunction()%></td>
                                            <td><%=lg.getGroupMember_Loan_interest_sunction()%></td>
                                            <td>
                                                <a href="#" class="btn btn-success adjust_member_loan1" id=""  data-toggle="modal" data-target="#adjust_member_loan"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Adjust individual loan</span></a>
                                            </td>
                                        </tr>
                                        <%} else{%>
                                        <%}}%>
                                    </tbody>
                                </table>
                                                <script>
                                    $(document).ready(function() {
                        $('#table').DataTable();
                              } );
                             </script>
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
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 03::</span> &nbsp;&nbsp;
                               FINISH  LOAN SANCTION 
                            </div>
                            <div class="panel-body">
                                <input type="hidden" name="invoice_approve" id="invoice_approve" value="">
                                <div id="lastsms"></div>
                                <%
                                    if(fp!=null){
                                %>
                                <input type="hidden" value="<%=fp.geGtInvoce()%>" name="acept_to_reject" id="accept_loan_group">
                                <%} else{%>
                                <%}%> 
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
                                      <a href="#" id="loan_reject_new" class="btn btn-danger">Reject</a>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-sm-6">
                                  <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>Loan Accept</strong></h5>
                                      <p class="card-text">I accept and confirm this loan application.</p>
                                      <a href="#" id="loan_accept_new" class="btn btn-primary">Approve</a>
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
             <div id="adjust_group_loan" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN APPLICATION ADJUSTMENT</h4>
                    </div>
                    <div class="modal-body">
                        <div id="managersms00"></div>
                         <form id="Manager_update_loan_group23">
                              <%
                                    if(fp!=null){
                                %>
                                <input type="text" name="adjust_g_loan_am" id="adjust_g_loan_am_00" value="<%=fp.geGtInvoce()%>">
                                <%} else{%>
                                <%}%> 
                                <p id="ds1"></p>
                             <div class="form-group">
                                 <label>Current amount</label>
                                 <p id="cram" class="form-control"></p>
                             </div>
                             <div class="form-group">
                                 <label>Adjust amount</label>
                                 <input type="number" id="adjam2" name="adjam54" class="form-control">
                                 <span id="error_adjam" class="text-danger"></span>
                             </div>
                            
                            <input type="submit"  value="Now click to adjust " class="btn btn-success">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
                                
         <div id="adjust_member_loan" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN APPLICATION ADJUSTMENT</h4>
                    </div>
                    <div class="modal-body">
                        <div id="managersms1"></div>
                         <form method="POST" id="Manager_update_loan_individual">
                             <div class="form-group">
                                 <label>New amount</label>
                                 <input type="number" id="ccc" name="amount_100" class="form-control">
                                  <span id="error_ccc" class="text-danger"></span>
                             </div>
                             
                             <p id="member_id1"></p>
                             <p id="member_ref1"></p>
                             <p id="member_amount"></p>
                           <input type="submit" name="insert" id="manager_update_loan90" value="Complete Confirmation" class="btn btn-success"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
         
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
                <%} else{%>
                    <span>No record found</span>
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
     
           var error ="<div class='alert alert-danger alert-dismissible'><span style='background:  #ffcccc; padding: .8rem;'><strong>Sorry!!!</strong> Loan applicant either not completed loan application fee OR Sunction for this loan already made </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
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
     
            $('#list_applicant_details').removeClass('active active_tab1');
            $('#list_applicant_details').removeAttr('href data-toggle');
            $('#applicant_details').removeClass('active');
            $('#list_applicant_details').addClass('inactive_tab1');
            $('#list_payment_details').removeClass('inactive_tab1');
            $('#list_payment_details').addClass('active_tab1 active');
            $('#list_payment_details').attr('href', '#payment_details');
            $('#list_payment_details').attr('data-toggle','tab');
            $('#payment_details').addClass('active in');

        
    });
    $('#previous_btn_payment_details').click(function(){
        $('#list_payment_details').removeAttr('active active_tab1');
        $('#list_payment_details').removeAttr('href data-toggle');
        $('#payment_details').removeClass('active in');
        $('#list_payment_details').addClass('inactive_tab1');
        $('#list_applicant_details').addClass('active_tab1 active');
        $('#list_applicant_details').attr('href', '#applicant_details');
        $('#list_applicant_details').attr('data-toggle','tab');
        $('#applicant_details').addClass('active in');
    });
    $('#btn_payment_details').click(function(){
          $('#list_payment_details').removeClass('active active_tab1');
          $('#list_payment_details').removeAttr('href data-toggle');
          $('#payment_details').removeClass('active');
          $('#list_payment_details').addClass('inactive_tab1');
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
        $('#list_referee_details').addClass('inactive_tab1');
        $('#list_finish_details').removeClass('inactive_tab1');
        $('#list_payment_details').addClass('active_tab1 active');
        $('#list_payment_details').attr('hre','#payment_details');
        $('#list_payment_details').attr('data-toggle','tab');
        $('#payment_details').addClass('active in');
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
     $('#loan_reject_new').click(function(){
             event.preventDefault();
                $.ajax({
                  url:'controller.jsp?page=loan_group_giving&operation=loan_reject',
                  methode:'POST',
                  data: $('#accept_reject_group').serialize(),
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
             
    });
    $('#loan_accept_new').click(function(){
             event.preventDefault();
                $.ajax({
                  url:'controller.jsp?page=loan_group_giving&operation=loan_accept',
                  methode:'POST',
                  data: $('#accept_reject_group').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan sanction successfully</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                    alert("Exit to view  recorde");
                 location.reload();
                },1000); 
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , Loan sanction unsuccessfully try again!!</div>';
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
            
             if(serving <= 500000){
               var ten = serving *( 1/100);
             var five = '5000';
                 var t2 = '<input type="hidden" id="loan_10_update" name="servingpay" value="'+five+'">';
            $('#loan_save_status2').html(t2);
            $('#loan_save_status').html(five);  
             }
             else if(serving > 500000){
                  var ten = serving *( 1/100);
             var five = '5000';
                 var t2 = '<input type="hidden" id="loan_10_update" name="servingpay" value="'+ten.toFixed(0)+'">';
            $('#loan_save_status2').html(t2);
            $('#loan_save_status').html(ten.toFixed(0));    
             }
             else{
                  var ten = serving *( 1/100);
             var five = '5000';
                  var t2 = '<input type="hidden" id="loan_10_update" name="servingpay" value="'+five+'">';
            $('#loan_save_status2').html(t2);
            $('#loan_save_status').html(five);   
             }
     
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
<script>
    $('#document').ready(function(){
         var amount = $('#grequested').val();
          $('#cram').html(amount);
        $('.adjust_member_loan1').on('click', function(){
          var bill_id = $(this).closest('tr').find('.member_id').text();
         var ref = $(this).closest('tr').find('.member_ref').text();
         // var amount = $(this).closest('tr').find('.new_loan_ind_am').text();
          var bill_id2 = '<input type="hidden" id="servingpay" name="bill_id_100" value="'+bill_id+'">';
          var ref3 = '<input type="hidden" id="servingpay" name="ref_id_100" value="'+ref+'">';
         $('#member_id1').html(bill_id2);
         $('#member_ref1').html(ref3); 
         
         
        });
      $('#Manager_update_loan_individual').on('submit', function(){
          event.preventDefault();
          var error_ccc ='';
         
           if($.trim($('#ccc').val()).length === 0){
            error_ccc = 'Please Intiate new amount';
            $('#error_ccc').text(error_ccc);
            $('#ccc').addClass('has-error');
         }
        else{
            error_ccc = '';
            $('#error_loan_disburse').text( error_ccc);
            $('#loan_disburse').removeClass('has-error');
        } 
      
        if(error_ccc !== '' ){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#managersms1').html(error);
                  setTimeout(function(){
                    document.getElementById('managersms1').innerHTML='';
                },4000);
                return false;
        }
        else{
          $.ajax({
              url:'controller.jsp?page=loan_group_giving&operation=group_member_update',
              methode:'POST',
              data:$('#Manager_update_loan_individual').serialize(),
              success:function(data){
                   var error ='<div class="alert alert-success">Loan Adjustemnt successfully</div>';
                  $('#managersms1').html(error);
                  setTimeout(function(){
                    document.getElementById('managersms1').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000); 
              }
          });
      } 
      });  
      
    });
  
</script>
<script>
    $(document).ready(function(){
          var invoice = $('#cram_invoice').val();
          var group = $('#grequested').val();
          
          var invo = $('#adjust_g_loan_am').val();
           var ref3 = '<input type="text" id="servingpay" name="dtech001" value="'+invo+'">';
         $('#ds1').html(ref3);
      $('#Manager_update_loan_group23').on('submit', function(){
        event.preventDefault();
          var error_adjam ='';
           if($.trim($('#adjam2').val()).length === 0){
            error_adjam = 'Please Intiate new amount';
            $('#error_adjam').text(error_adjam);
            $('#adjam2').addClass('has-error');
         }
        else{
            error_adjam = '';
            $('#error_adjam').text( error_adjam);
            $('#adjam2').removeClass('has-error');
        } 
      
        if(error_adjam !== '' ){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#managersms00').html(error);
                  setTimeout(function(){
                    document.getElementById('managersms00').innerHTML='';
                },4000);
                return false;
        }
        else{
             $.ajax({
              url:'controller.jsp?page=loan_group_giving&operation=Group_loan_adjust',
              methode:'POST',
              data:$('#Manager_update_loan_group23').serialize(),
              success:function(data){
                   var error ='<div class="alert alert-success">Loan Adjustemnt successfully</div>';
                  $('#managersms00').html(error);
                  setTimeout(function(){
                    document.getElementById('managersms00').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000); 
              }
          });
            
        }
        
      });     
    });
</script>