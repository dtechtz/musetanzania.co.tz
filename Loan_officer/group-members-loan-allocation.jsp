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
               
                    <div class="panel-1-header">
                        <%
                           if(request.getParameter("sms")!=null){
                        %>
                        <span style="background:  #006666; color:  #ffffff; padding: .4rem">Congratulation, Action successfully completed</span> 
                         <%
                             }else if(request.getParameter("error")!=null){
                         %>
                         <span style="background:  #cc0033; color:  #ffffff; padding: .4rem">Account ballance is not enough to complete this Transaction, please Deposit new ballance and try again</span> 
                         <%
                           } else if(request.getParameter("pay_error")!=null){
                         %>
                         <span style="background:  #cc0033; color:  #ffffff; padding: .4rem">This loan amount is not approved, Please contact admission for more details</span> 
                          <%
                         }else if(request.getParameter("bls")!=null){ 
                         %>
                          <span style="background:  #cc0033; color:  #ffffff; padding: .4rem">Account ballance is not enough to complete this Transaction, please Deposit new ballance and try again</span> 
                         <%}%>
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
                                            <li><span>Account No:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;</span></li>
                                           
                                        </ul>
                                        </div>
                                        
                                    </td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Loan #:</span><span>;&nbsp;::&nbsp;&nbsp;<%=lg.getGLoanID()%></span></li>
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
                                        <div class="button-table">
                                            <div class="edit">
                                                <a href="menu-panel.jsp?load=0070_loan_group&confirm-loan=true&Ref_ID=<%=lg.getGLoanID()%>"><span class="fa fa-pencil-square-o"></span></a>
                                            </div>
                                           
                                            <div class="view-more">
                                                <a href="menu-panel.jsp?load=0070_loan_group&confirm-loan=view&Ref_ID=<%=lg.getGLoanID()%>"><span class="fa fa-eye"></span></a>
                                            </div>
                                            <div class="delete">
                                                 <a href="controller.jsp?page=loan_group_giving&operation=Delete&code=<%=lg.getGLoanID()%>"  onclick="return confirm('A you sure you want to delete this Record? Please before you delete we advise you to  (1)Confirm this user for new loan Benefit BY click (Allow New Application), (2) Delele all loan return if exit for this  Group only ALSO All Back loan History will be deleted  ');"><span class="fa fa-trash"></span></a>
                                            </div>
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
               loan_giving log = AD.Print_Loan_Group_List_To_Edit(Integer.parseInt(request.getParameter("Ref_ID")));
                %>
                <form action="controller.jsp">
                    <input type="hidden" name="page" value="loan_group_giving">
                    <input type="hidden" name="operation" value="confirm_loan">
                     <input type="hidden" name="RefID" value="<%=log.getGLoanID()%>">
                     <input type="hidden" name="IntPay" value="<%=log.getGTotalPayWithInterest()%>">
                    <table class="table-2">
                    <%if(request.getParameter("sms")!=null){%>
                    <tr><td colspan="2" style=" text-align: center; background-color: lightseagreen; color: #ffffff">
                       
                     <h4> Before your continue please fill out correctly all details</h4>
                
                     </td></tr>
                     <%}%>
                     
                           
                            <tr>
                               <td><label>Member Name [Borrower]</label></td>
                              <td>
                                  <input type="text" name="userID" value="<%=log.getGGroupName()%>" disabled="true" class="text" style="text-align: center;background:  #f0f0f0; font-size: 18px;">
                               
                               </td>  
                           </tr>
                            <tr>
                               <td><label>Loan Plan</label></td>
                             <td>
                                 <select name="planID" class="text">
                                    <option value="<%=log.getGPlanID()%>">Months: &nbsp;<%=log.getGLoanPlanName()%>&nbsp;&nbsp;Interest:&nbsp;<%=log.getGLoanInterest()%>&nbsp;%&nbsp;&nbsp;Penalty:&nbsp;<%=log.getGLoanPenalty()%>&nbsp;%</option>
                                    <option value="N/A" style="color: red; font-weight: bold">OR Change Loan Plan Hire</option>
                              
                                </select><br>
                                 <span>Months [interest % ,Penalty %]</span>
                               </td>  
                           </tr>
                        
                           <tr>
                               <td><label>Loan Type</label></td>
                               <td>
                                <select name="typeID" class="text">
                                    <option value="<%=log.getGTypeID()%>"><%=log.getGLoanType()%></option>
                                    <option value="N/A" style="color: red; font-weight: bold">OR Change Loan Type Hire</option>
                                 <%
                                     ArrayList list=AD.Print_Loan_Type();
                                     for(int i=0; i<list.size(); i++){
                                     loan_type tp = (loan_type)list.get(i);
                                     %>
                                    <option value="<%=tp.getLoanID()%>"> <%=tp.getLoanType()%></option>
                                    <%}%>
                            </select>
                               </td>  
                            
                           </tr>
                            <tr>
                               <td><label>Loan Amount</label></td>
                               <td><input type="text" name="amount" readonly="true"  value="<%=log.getGLoanAmount()%>" class="text"  placeholder="Amount..." id="number1"></td>
                           </tr>
                           <tr>
                           <tr>
                               <td>Application Date</td>   <td><input type="text" name="date" value="<%=log.getGDateAppliedForLoan()%>"class="text" placeholder=" Date confirmed [ pick date]" id="datepicker-3" required></td>
                           </tr>
                             <tr>
                               <td><label>Comment</label></td>
                               <td><textarea placeholder="Enter ..............." rows="6" cols="40" name="desc"><%=log.getGPurposeOfLoan()%></textarea></td>
                        </tr> 
                        
                         
                </table>
                               <input type="hidden" name="new_dp" value="<%=log.fetGTotalRemailAfterLoan()%>">
                               <input type="hidden" name="depositerID" value="<%=log.getGBorrowerID()%>">
                               <input type="hidden" name="userloanID" value="<%=log.getGLoanID()%>">      
                       <div class="panel-2">
                    <div class="panel-2-header-3">
                        <span> Summary of Loan Application</span>
                        
                         
                    </div>
                    <div class="panel-2-body">
                        <table class="table" id="example" style="width: 70%">
                            <thead>
                            <th></th>
                            <th>Total Loan Requested</th>
                            <th>Return Amount with Interest</th>
                            <th>Return Amount with Penalty</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="background:  #003333; color:  #ffffff"></td> <td style="background: #0099ff; color: #ffffff; font-size: 1.3rem;"><%=log.getGLoanAmount()%> </td><td style="background:  #006666; color:  #ffffff; font-size: 1.3rem;"><%=log.getGTotalPayWithInterest()%></td><td style="background:  #cc0066; color:  #ffffff; font-size: 1.3rem;"><%=log.getGTotalPayableWithPenalt()%></td>
                                </tr>
                                <tr>
                                    <td></td><td colspan="2"><h3>Current Account Ballance</h3></td>
                                    <td style="background:  #00ccff">
                                         <%
                                         deposit dp = AD.Print_Capital_Balance();
                                        if(dp!=null){
                                          %>
                                        <h2><%=dp.getDepositBallance()%> &nbsp;&nbsp;/=</h2>
                                       <%} else{%>
                                       0.00
                                       <%}%>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td><td colspan="2"><h3>New Account Ballance</h3></td><td style="background:  #00ccff"><h2><%=log.fetGTotalRemailAfterLoan()%> &nbsp;&nbsp;/=</h2></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        
                        <input type="text" name="apdate"  class="text" placeholder=" Date confirmed [ pick date]" id="datepicker" style="width: 300px;" required>
                          <input type="text" name="expdate"  class="text" placeholder="End of Return [pick date]" id="datepicker-2" style="width: 300px;" required>
                        <br><br>
                       
                        <select class="text" style="width: 300px;" name="stutas" required>
                            <option></option>
                            <option value="Approved">Approved</option>

                        </select>
                        <br></br>
                        <div class="approve-button">
                          <input type="submit" value="Confirm Now" class="button">
                          <a href="controller.jsp?page=loan_group_giving&operation=confirm&User=<%=log.getGBorrowerID()%>" style="background: #007776; color:  #ffffff; padding: .6rem">Release This Loan</a> 
                          <a href="controller.jsp?page=loan_group_giving&operation=denied&RefID=<%=log.getGLoanID()%>" style="background: red; padding: .6rem">Denied</a>  
                        </div>
                        
                        
                    </div>
                   </div>
                     </form>      
                
                <%}else if(request.getParameter("confirm-loan").toString().equals("view")){%>
                 <div class="panel-2">
                 
                  <table class="table" id="example"  style="width: 100%">
                  <thead>
                  <th>#</th>
                  <th>Group Name</th>
                  <th>Group Members Name</th>
                  <th>Phone Number</th>
                  <th>Work Status</th>
                  <th>Loan Action</th>
                  </thead>
                  <tbody>
                       <%
                   ArrayList list = AD.Print_Group_Details_To_Preview_Loan_and_Upload(request.getParameter("Ref_ID"));
                    for(int i=0; i<list.size(); i++){
                    member_appload mb5 = (member_appload)list.get(i);
                  
                  %>
                      <tr>
                          <td></td>
                          <td><%=mb5.getgroup()%></td>
                          <td><%=mb5.getFname()%> &nbsp;&nbsp;<%=mb5.getMname()%>&nbsp;&nbsp;<%=mb5.getLname()%></td>
                          <td><%=mb5.getphone()%></td>
                          <td><%=mb5.getwork()%></td>
                          
                          <td>
                              <div class="button-table-2">
                                <div class="edit">
                                    <a href="menu-panel.jsp?load=0070_loan_group&confirm-loan=uploading&Refe=<%=mb5.getuserID()%>&LoanID=<%=mb5.getLoadGivingID()%>"<span class="fa fa-pencil-square-o"></span></a>
                                </div>
                                 <div class="edit">
                                    <a href="menu-panel.jsp?load=0070_loan_group&confirm-loan=view_uploading&Refe=<%=mb5.getuserID()%>&LoanID=<%=mb5.getLoadGivingID()%>"<span class="fa fa-eye"></span></a>
                                </div>
                                  
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
                
               <%
                     group_return_amount rtam = AD.Print_preview_Group_loan_2(Integer.parseInt(request.getParameter("Ref_ID")));
               deposit dp = AD.Print_Capital_Balance();
               if(rtam!=null){
               %>  
            
                  
                    <div class="panel-2-header-3">
                        
                    </div>
                    <div class="panel-2-header-3">
                        <span> Group loan Summary details</span>
                        <span><a href="report_generation.jsp?member_loan_report=group_pay&MID=<%=rtam.getBorrowerID()%>" style="color: #ffffff; background:  #006666; padding: .4rem"  target="_black">Print Report</a></span>
                    </div>
                    <div class="panel-2-body">
                    <form action="controller.jsp">
                     <input type="hidden" name="page" value="Return_loan">
                     <input type="hidden" name="operation" value="user_return">
                       
                    
               <div class="user-return">
                   <div class="panel-2-header-3">
                       <span><h3 style="color:  #cc0066"> </h3></span>
                        
                    </div>
                   <ul>
                       <li><span><input type="text"  class="text" value="<%=rtam.getLoanAmount()%>"style="width: 13rem; height: 2.6rem; background:  #0099cc; color:  #ffffff; font-weight:  bold" required></span><span>&nbsp;Loan Offer</span> </li>
                       <li> <span> <input type="text"  class="text" value="<%=rtam.getTotalPayWithInterest()%>"style="width: 13rem; height: 2.6rem; background:  #009999; color:  #ffffff; font-weight: bold" required></span><span>&nbsp;Payable Amount with Interest</span></li>
                       <li> <span> <input type="text"   class="text"readonly="true" value="<%=rtam.getTotalPayableWithPenalt()%>" style="width: 13rem; height: 2.6rem; background:  #cc0033; color:  #ffffff; font-weight: bold" placeholder="Pick return Date" required></span><span>&nbsp;Payable Amount with Interest and Penalty</span></li>
                       <li> <span><input type="text"  class="text" readonly="true" value="<%=rtam.getAmount_Return_Amount()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;Total Returned</span></li>
                        <li> <span><input type="text"  class="text" readonly="true" value="<%=rtam.getDateApprove()%>" style="width: 13rem; height: 2.6rem;  background:  #cccccc; font-weight: bold"   required></span><span>&nbsp;Date Loan Confirmed</span></li>
                        <li><span> <input type="text"  class="text" readonly="true" value="<%=rtam.getDateExpire()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;End of Loan Return</span></li>
                   </ul>
                   
                   </div> 
                        
                        
                    </form>
                     </div>
                   </div>
                   <%} else{%>
                   
                   <%}%>
                   <%}else if(request.getParameter("confirm-loan").equals("uploading")){
                   member_allocate rtam = AD.Print_Group_Details_To_Preview_Loan_and_Upload_individual(Integer.parseInt(request.getParameter("LoanID")),Integer.parseInt(request.getParameter("Refe")));
                   %>
               <div class="main-body-menus">
                <div class="palel-1">
                  
                     <div class="panel-1-header">
                               <%if(request.getParameter("sms")!=null){%>
                               <span style=" text-align: center; color: #006666">
                             <h4> Loan Application Sent Successfully</h4>
                              </span>
                               <%} else if(request.getParameter("error")!=null){%>
                               <span style=" text-align: center; color: #006666">
                                   <h4 style="background: red"> NONONO</h4>
                              </span>
                             <%}%>
                      </div>
                    <div class="panel-1-body">
                        <form action="controller.jsp">
                            <input type="hidden" name="page" value="loan_group_giving">
                            <input type="hidden" name="operation" value="individual_apply">
                            <input type="hidden" name="userID1" value="<%=rtam.getuserID()%>">
                            <input type="hidden" name="GroupID1" value="<%=rtam.getGroupId()%>">
                            <input type="hidden" name="LoanID1" value="<%=rtam.getLoadGivingID()%>">
                            <input type="hidden" value="<%=rtam.getPlanID()%>">
                            <table class="table-2">
                   
                            <tr>
                               <td><label>Group Name </label></td>
                              <td>
                                  <input type="text" name="" class="text" readonly="true" value="<%=rtam.getgroup()%>" style="background:  #cccccc">
                               </td>  
                           </tr>
                            <tr>
                               <td><label>Group Member</label></td>
                             <td>
                                 <input type="text" name="" value="<%=rtam.getFname()%>&nbsp;&nbsp;<%=rtam.getMname()%>&nbsp;&nbsp;<%=rtam.getLname()%>" class="text" readonly="true" style="background:  #cccccc">
                              </td>  
                           </tr>
                        
                           <tr>
                               <td><label>Loan Group Allocated</label></td>
                               <td>
                                   <input type="text" name="" class="text" value="<%=rtam.getGroupLoanAmount()%>" readonly="true" style="background:  #cccccc">
                               </td>  
                            
                           </tr>
                           <tr>
                               <td><label>Total Amount Distributed</label></td>
                               <td>
                                   <%
                                   group_loan_div_remain rm = AD.Print_Group_Amount_Remain_To_Allocate(Integer.parseInt(request.getParameter("LoanID")));
                                   if(rm !=null){
                                   %>
                                   <input type="text" name="" class="text" value="<%=rm.getRequestedAmountRemain()%>" readonly="true" style="background: #f0f0f0;">
                                   <%}else{%>
                                   <span>00000</span>
                                   <%}%>
                               </td>  
                            
                           </tr>
                            <tr>
                               <td><label>New Loan Allocation</label></td>
                               <td><input type="text" name="amount" class="text" autocomplete="off" placeholder="Indicate group member amount" id="number1"  required></td>
                           </tr>
                            <tr>
                               <td><label>Allocation Date</label></td>
                               <td><input type="text" name="date"  class="text" readonly="true" placeholder="Date of allocation" id="datepicker" required></td>
                           </tr>
                          
                        <tr>
                               <td>
                           <center>
                               <input type="submit" value="Confirm " class="button">
                           </center>
                               </td>
                           </tr>      
                </table>
                     </form>      
                
                    </div> 
                       
              </div>
                
            
            </div>
              <%
              } else if(request.getParameter("confirm-loan").equals("view_uploading")){
              %>
                  <%
                   group_individual_satus  rtam = AD.Print_Group_Individual_loan(Integer.parseInt(request.getParameter("Refe")),Integer.parseInt(request.getParameter("LoanID")));
                group_individual_satus  rtam1 = AD.Print_Group_Individual_Remain(Integer.parseInt(request.getParameter("Refe")),Integer.parseInt(request.getParameter("LoanID")));
                   deposit dp = AD.Print_Capital_Balance();
                group_individual_satus gt = AD.Print_Group_Individual_Total_payment(Integer.parseInt(request.getParameter("Refe")),Integer.parseInt(request.getParameter("LoanID"))); 
               if(rtam!=null){
               %>  
                  <div class="panel-2-header-3">
                      <span style="color: #666666">Group Member name:: &nbsp;&nbsp;<span><%=rtam.getFname()%>&nbsp;<%=rtam.getMname()%>&nbsp;<%=rtam.getLname()%></span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                        
                    </div>
                  
                    <div class="panel-2-header-3">
                        <span>RETURN PROGRESSIVE </span>
                        <span><a href="report_generation.jsp?member_loan_report=group_pay&MID=" style="color: #ffffff; background:  #006666; padding: .4rem"  target="_black">Print Report</a></span>
                    </div>
                      
                       <div class="panel-2-header-3">
                        <span><a href="menu-panel.jsp?load=0070_loan_group&confirm-loan=update-loan&Refe=<%=rtam.getMemberLoanID()%>&LoanID=<%=rtam.getMemberGroupID()%>" style="color: #ffffff; background:  #006666; padding: .4rem">Update Loan amount</a> <a href="controller.jsp?page=loan_group_giving&operation=Delete_individual_offer&code=<%=rtam.getIndividualLoanID()%>"  onclick="return confirm('WARNING!! Please do not delete this figure amount if member made some returns in order to avoid data loss, Are you sure you want to delete ?');" style="color: #ffffff; background:  #cc0033; padding: .4rem" >Delete Loan amount</a></span>
                               
                    </div>
                    <div class="panel-2-body">
                    <form action="controller.jsp">
                    <input type="hidden" name="page" value="Return_loan">
                     <input type="hidden" name="operation" value="group_return">
                        <table class="table"  style="width: 50%">
                            <thead>
                            <th>#</th>
                                  <th>Reference #</th>
                                     <th>Return</th>
                                  <th>Date of Loan Return</th>
                                  <th>Action</th>
                            </thead>
                            <tbody>
                                <%
                                 ArrayList list4 = AD.Print_Group_Individual_loan_payment(Integer.parseInt(request.getParameter("Refe")),Integer.parseInt(request.getParameter("LoanID")));
                                 for(int i=0; i<list4.size(); i++){
                                  group_individual_satus ireturn = (group_individual_satus)list4.get(i);
                                  if(ireturn!=null){
                                
                                
                                %>
                                <tr>
                                    <td></td>
                                    <td><%=ireturn.getLoanRefereID()%></td>
                                    <td><%=ireturn.getReturnAmount()%></td>
                                    <td><%=ireturn.getReturnDate()%></td>
                                    <td>
                                  <div class="delete">
                                      <a href="controller.jsp?page=loan_group_giving&operation=Delete_Return_individual&code=<%=ireturn.getOGreturnID()%>"  onclick="return confirm('WARNING!! By deleting this record, Account record will not change , to make change you supporse to re deposit this figure amount before deleting or after deleting');"><span class="fa fa-trash"></span></a>
                                 </div>    
                                    </td>
                                </tr> 
                                <%}%>
                                
                                <%}%>
                            </tbody>
                        </table>
                           <script>
                      $(document).ready(function() {
          $('#example').DataTable();
                } );
               </script>  
               <div class="user-return">
                   <div class="panel-2-header-3">
                       <span><h3 style="color:  #cc0066"> </h3></span>
                        
                    </div>
                   <ul>
                       <li><span><input type="text" readonly="true" class="text" value="<%=rtam.getIndividualpureAmount()%>"style="width: 13rem; height: 2.6rem; background:  #0099cc; color:  #ffffff; font-weight:  bold" required></span><span>&nbsp;Loan Offer</span> </li>
                       <li> <span> <input type="text" readonly="true" class="text" value="<%=rtam.getIndividualAmountAndInterest()%>"style="width: 13rem; height: 2.6rem; background:  #009999; color:  #ffffff; font-weight: bold" required></span><span>&nbsp;Payable Amount with Interest</span></li>
                       <li> <span> <input type="text"   class="text"readonly="true" value="<%=rtam.getamountandPenality()%>" style="width: 13rem; height: 2.6rem; background:  #cc0033; color:  #ffffff; font-weight: bold" required></span><span>&nbsp;Payable Amount with Interest and Penalty</span></li>
                       <li> <span><input type="text"  class="text" readonly="true" value="<%=gt.getReturnAmount()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;Total Returned</span></li>
                       <li> <span><input type="text"  class="text" readonly="true" value="<%=rtam1.getRemain()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;Total Remain</span></li>
                       <li> <span><input type="text"  class="text" readonly="true" value="<%=rtam.getApproveDate()%>" style="width: 13rem; height: 2.6rem;  background:  #cccccc; font-weight: bold"   required></span><span>&nbsp;Date Loan Confirmed</span></li>
                       <li><span> <input type="text"  class="text" readonly="true" value="<%=rtam.getExpireDate()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;End of Loan Return</span></li>
                   </ul>
                   
                   </div> 
                        
                       <br>     
                        <br>
                        <input type="text" name="rtamount" class="num2 key" autocomplete="off" placeholder="Enter return amount" style="width: 20rem; height: 3rem" required>
 
                        <input type="text" name="rtdate" id="datepicker" autocomplete="off" readonly="true" style="width: 20rem; height: 3rem" placeholder="Pick return Date" required>
                        <br><br>
                        <input type="hidden" name="userid" value="<%=rtam.getMemberGroupID()%>">
                        <input type="hidden" name="loanid" value="<%=rtam.getMemberLoanID()%>">
                        <input type="hidden" name="" value="">
                        <input type="hidden" class="num1 key" value="">
                        <input type="hidden" name="pay" class="sum">
                          <input type="submit" value="Make Return" class="button">
                   
                          <%
                           deposit dp5 = AD.Print_Capital_Balance();
                           if(dp5!=null){
                          %>
                        
                        <script>
                         
                        $(document).ready(function() {
                            $(".sum").val("0");
                            $(".key").val("");

                            function calc() {

                            var $num1 = ($.trim($(".num1").val()) != "" && !isNaN($(".num1").val())) ? parseInt($(".num1").val()) : <%=dp5.getDepositBallance()%>
                                console.log($num1);
                                var $num2 = ($.trim($(".num2").val()) != "" && !isNaN($(".num2").val())) ? parseInt($(".num2").val()) : 0;
                                console.log($num2);
                                $(".sum").val($num1 + $num2);
                            }
                            $(".key").keyup(function() {
                                calc();
                            });
                        });
                        </script>  
                        
                       <%} else{%>
                        <script>
                         
                        $(document).ready(function() {
                            $(".sum").val("0");
                            $(".key").val("");

                            function calc() {

                            var $num1 = ($.trim($(".num1").val()) != "" && !isNaN($(".num1").val())) ? parseInt($(".num1").val()) : 0;
                                console.log($num1);
                                var $num2 = ($.trim($(".num2").val()) != "" && !isNaN($(".num2").val())) ? parseInt($(".num2").val()) : 0;
                                console.log($num2);
                                $(".sum").val($num1 + $num2);
                            }
                            $(".key").keyup(function() {
                                calc();
                            });
                        });
                        </script>  
                       <%}%>  
                    </form>
                     </div> 
                    <%
                    }}else if(request.getParameter("confirm-loan").equals("update-loan")){
                    member_group_loan_update update = AD.Print_Group_Individual_amount_to_Edit(Integer.parseInt(request.getParameter("LoanID")),Integer.parseInt(request.getParameter("Refe")));
                   %>
                    <div class="main-body-menus">
                <div class="palel-1">
                  
                     <div class="panel-1-header">
                               <%if(request.getParameter("sms")!=null){%>
                               <span style=" text-align: center; color: #006666">
                             <h4> Loan loan updated</h4>
                              </span>
                               <%} else if(request.getParameter("error")!=null){%>
                               <span style=" text-align: center; color: #006666">
                                   <h4 style="background: red"> NONONO</h4>
                              </span>
                             <%}%>
                      </div>
                    <div class="panel-1-body">
                        <form action="controller.jsp">
                            <input type="hidden" name="page" value="loan_group_giving">
                            <input type="hidden" name="operation" value="Update_individual_offer">
                            <input type="hidden" name="userID1" value="<%=update.getUserID()%>">
                            <input type="hidden" name="LoanID1" value="<%=update.getLoanID()%>">
 
                            <table class="table-2">
                   
                          
                        
                           <tr>
                               <td><label>Loan Group Allocated</label></td>
                               <td>
                                   <input type="text" name="" class="text" value="<%=update.getamount()%>" readonly="true" style="background:  #cccccc">
                               </td>  
                            
                           </tr>
                          
                            <tr>
                               <td><label>New Loan Allocation</label></td>
                               <td><input type="text" name="amount" class="text" autocomplete="off" placeholder="Enter new amount" id="number1"  required></td>
                           </tr>
                           
                          
                        <tr>
                               <td>
                           <center>
                               <input type="submit" value="Update Amount" class="button">
                           </center>
                               </td>
                           </tr>      
                </table>
                     </form>      
                
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
   