  <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.income_category"%>
<%@page import="Classes.payment_account"%>
<%@page import="Classes.expenses_transaction"%>
<%@page import="Classes.deposit_transaction"%>
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
                    <a href="#" class="active"><span class="fa fa-folder-open-o"></span><span>Transaction</span><span class="fa fa-chevron-down third"></span></a>
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
                   <%
                    if(request.getParameter("transaction-redirection")==null){
                    %>  
               <div class="panel-1-header">
                        <span>LIST FOR  ALL EXPENSES DETAILS </span>  
                    </div>
                    <div class="panel-1-body">
                 <table width="100%" class="table" id="tblexpenseses">
                  <thead>
                  <th>#</th>
                  <th>DATE</th>
                  <th>ACCOUNT NAME</th>
                  <th>CATEGORY</th>
                  <th>AMOUNT</th>
                  <th>DESCRIPTION</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                     ArrayList list1=AD.Print_Expenses_Transaction();
                                     for(int i=0; i<list1.size(); i++){
                                     expenses_transaction lp = (expenses_transaction)list1.get(i);
                                     %>
                                   <tr>
                                    <td></td>
                                    <td>
                                        <span><%=lp.getTransactionDATE()%></span>
                                    </td>
                                    <td><%=lp.getTransactionAccouunt()%></td>
                                    <td><%=lp.getTransactionCategory()%></td>
                                    <td><%=lp.getTransactionAmount()%></td>
                                    <td><%=lp.getTransactionDesc()%></td>
                                    <td>
                                        <div>
                                            <a href="#" class="btn btn-warning"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Edit</span></a>
                                            <a href="controller.jsp?page=expenses&operation=Delete&code=<%=lp.getExpenseID()%>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this Expenses Decord');"><span class="fa fa-trash">&nbsp;&nbsp;Delete</span></a>
                                        </div>
                                    </td>
                                </tr>
                             
                                <%}%>  
                           
                              
                            </tbody>
                        </table>
                    <script>
                      $(document).ready(function() {
                $('#tblexpenseses').DataTable({
                    dom: 'lBfrtip',
                    buttons:[
                        'print',
                        'excel',
                        'pdf'
                    ]
                });
                 } );
               </script>
                 <br><br>
                 
              </div>
                 
                  
                  <%} else if(request.getParameter("transaction-redirection").equals("Edit")){
                       expenses_transaction dp3 = AD.Print_Expenses_Transaction_TO_EDIT(Integer.parseInt(request.getParameter("Code")));
                       
                 %> 
                 <div class="panel-1-header">
                        <span>NEW EXPENSES ENTRY</span>  
                    </div>
                    <div class="panel-1-body">
                        <form action="controller.jsp">
                            <input type="hidden" name="page" value="expenses">
                            <input type="hidden" name="operation" value="Update">
                            <input type="hidden" name="TRSID" value="<%=dp3.getExpenseID_ET()%>">
              <table class="table-2">
                    <%if(request.getParameter("sms")!=null){%>
                    <tr><td colspan="2" style=" text-align: center; background-color: lightseagreen; color: #ffffff">
                       
                     <h4> Transaction Successfully</h4>
                
                     </td></tr>
                     <%} else if(request.getParameter("app_sms")!=null){%>
                       <tr><td colspan="2" style=" text-align: center; background-color: green; color: #ffffff">
                       
                     <h4> Personal Details  updated Successfully Continue to the Next Step </h4>
                
                     </td></tr>
                       
                       
                       <%}%>
                      
                           
                            <tr>
                               <td><label>Account Balance</label></td>
                             <td>
                                  <%
                               deposit dp = AD.Print_Capital_Balance();
                               if(dp!=null){
                                 %>
                                  <input type="hidden" name="currentbalance" value="<%=dp.getDepositBallance()%>" class="num1 key" disabled="true" style="background: #cccccc">
                                  <input type="text" name="currentbalance" value="<%=dp.getDepositBallance()%>" class="text" disabled="true" style="background: #cccccc">
                                <%} else{%>
                                
                                <%}%>
                               </td>    
                           </tr>
                           <tr>
                               <td><label>Expenditure Date</label></td>
                               <td><input type="text" name="expdate" autocomplete="off" value="<%=dp3.getTransactionDATE_ET()%>" class="text" placeholder="Pick Date" id="datepicker"></td>
                           </tr>
                           <tr>
                               <td><label>Withdraw Amount</label></td>
                               <td><input type="text" name="amount"  class="num2 key" placeholder="Amount..." style="width: 20.7rem; height: 2.4rem;" autocomplete="off" required></td>
                           </tr>
                           <tr>
                               <td>New Ballance</td><td><input type="text" name="newbalance" class="sum" readonly="readonly" style="width: 20.7rem; height: 2.4rem;"></td> 
                           </tr>
                            <tr>
                               <td><label>Account To Withdraw</label></td>
                             <td>
                                <select name="AC" class="text" required>
               
                                    <option value="<%=dp3.getAccountID()%>"><%=dp3.getTransactionAccouunt_ET()%></option>
                               <%
                                     ArrayList list2=AD.Print_Account_payment();
                                     for(int i=0; i<list2.size(); i++){
                                     payment_account pa = (payment_account)list2.get(i);
                                 %>
                                 <option value="<%=pa.getAccountID()%>"><%=pa.getAccountName()%></option>
                                 
                                 <%}%> 
                                </select><br>
                                 
                               </td>  
                           </tr>
                            <tr>
                               <td><label>Expenses Category</label></td>
                             <td>
                                <select name="expcate" class="text">
               
                                    <option value="<%=dp3.getCategoryID()%>"><%=dp3.getTransactionCategory()%></option>
                                <%
                                     ArrayList list=AD.Print_Expense_Category();
                                     for(int i=0; i<list.size(); i++){
                                     income_category mb = (income_category)list.get(i);
                                 %>
                                 <option value="<%=mb.getCategoryID()%>"><%=mb.getCategoryName()%></option>
                              <%}%>
                                </select><br>
                                 
                               </td>  
                           </tr>
                        
                          
                           <tr>
                             <tr>
                               <td><label>Description</label></td>
                               <td><textarea placeholder="Enter ..............." rows="6" cols="40" name="desc1"><%=dp3.getTransactionDesc()%></textarea></td>
                        </tr> 
                        
                        <tr>
                               <td>
                           <center>
                               <input type="submit" value="Save" class="button">
                           </center>
                               </td>
                           </tr> 
                           <%
                           if(dp!=null){
                           %>
                            <script>
                        $(document).ready(function() {
                            $(".sum").val("0");
                            $(".key").val("");

                            function calc() {

                            var $num1 = ($.trim($(".num1").val()) != "" && !isNaN($(".num1").val())) ? parseInt($(".num1").val()) : <%=dp.getDepositBallance()%>;
                                console.log($num1);
                                var $num2 = ($.trim($(".num2").val()) != "" && !isNaN($(".num2").val())) ? parseInt($(".num2").val()) : 0;
                                console.log($num2);
                                $(".sum").val($num1 - $num2);
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
                                $(".sum").val($num1 - $num2);
                            }
                            $(".key").keyup(function() {
                                calc();
                            });
                        });
                        </script>
                        
                        <%}%>
                </table>
                     </form>      
               
                    </div>
                 
                 <%}%>
                </div>
                                   
            </div>
                              
            </div>
        
            </main>
        </div>
   