 <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.income_category"%>
<%@page import="Classes.payment_methode"%>
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
                        <a href="menu-panel.jsp?load=00050_ln_type" ><span class="fa fa-gg"></span><span>Loan Type</span><span></span></a>
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
              <%
                if(request.getParameter("redirection")==null){
            %>
            <div class="main-body-2">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>CREATE NEW PAYMENT METHOD</span>  
                    </div>
                     <div class="panel-1-header">
                               <%if(request.getParameter("sms")!=null){%>
                               <span style=" text-align: center; color: #006666">
                             <h4> Payment Method Created Successfully </h4>
                              </span>
                               <%}%>
                    </div>
                    <div class="panel-1-body">
                        <form action="controller.jsp">
                            <input type="hidden" name="page" value="setting">
                            <input type="hidden" name="operation" value="add_pay_method">
                                  
                            <div class="action-form">
                                <span>Pay Method Name</span><br>
                                <input type="text" class="text" autocomplete="off" name="method" placeholder="New account name" required>
                            </div>
                            <br>
                        <div class="action-form">
                                <span>Description</span><br>
                                <textarea cols="40" rows="6" name="description"></textarea>
                         </div><br>
                            
                            <input type="submit" value="Create" class="button">
                     </form>      
                
                    </div> 
                       
              </div>
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>PAYMENT METHOD LIST </span>
                    </div>
                    <div class="panel-2-body">
                        <table class="table" id="example" >
                            <thead>
                            <th>#</th>
                            <th>Method Details</th>
                            <th>Action</th>
                           
                            </thead>
                            <tbody>
                                <%
                                     ArrayList list1=AD.Print_Payment_Methode();
                                     for(int i=0; i<list1.size(); i++){
                                     payment_methode pm = (payment_methode)list1.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                       <div class="rt">
                                        <ul>
                                            <li><span>Category Name:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=pm.getPaymentMode()%></span></li>
                                            <li><span>Description:</span><small>&nbsp;&nbsp;::&nbsp;&nbsp; <%=pm.getDescription()%></small></li>
                                            
                                        </ul>
                                        </div>
                                    </td>
                                     <td>
                                        <div class="button-table-2">
                                            <div class="edit">
                                                <a href="menu-panel.jsp?load=00092-pay-method&redirection=Edit&code=<%=pm.getPayMethodeID()%>"><span class="fa fa-pencil-square-o"></span></a>
                                            </div>
                                            <div class="delete">
                                               <a href="controller.jsp?page=setting&operation=Delete_Pay_Methode&code=<%=pm.getPayMethodeID()%>" onclick="return confirm('Are you sure you want to delete this Record?');"><span class="fa fa-trash"></span></a>
                                            </div>
                                            
                                        </div>
                                    </td>
                                </tr>
                                <%}%> 
                                <
                            </tbody>
                        </table>
                       <script>
                      $(document).ready(function() {
                                $('#example').DataTable();
                            } );
                            </script>
                    </div>
                   </div>
            
            </div>
        <%} else if(request.getParameter("redirection").equals("Edit")){
            payment_methode inc = AD.Print_Payment_Methode_TO_EDIT(Integer.parseInt(request.getParameter("code")));
          %>
          <div class="main-body-2">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>CREATE NEW PAYMENT METHOD</span>  
                    </div>
                     <div class="panel-1-header">
                               <%if(request.getParameter("sms")!=null){%>
                               <span style=" text-align: center; color: #006666">
                             <h4> Payment Method Created Successfully </h4>
                              </span>
                               <%}%>
                    </div>
                    <div class="panel-1-body">
                        <form action="controller.jsp">
                            <input type="hidden" name="page" value="setting">
                            <input type="hidden" name="operation" value="Edit_pay_method">
                            <input type="hidden" name="code" value="<%=inc.getPayMethodeID()%>">     
                            <div class="action-form">
                                <span>Pay Method Name</span><br>
                                <input type="text" class="text" autocomplete="off" value="<%=inc.getPaymentMode()%>" name="method" placeholder="New account name" required>
                            </div>
                            <br>
                        <div class="action-form">
                                <span>Description</span><br>
                                <textarea cols="40" rows="6" name="description"><%=inc.getDescription()%></textarea>
                         </div><br>
                            
                            <input type="submit" value="Create" class="button">
                     </form>      
                
                    </div> 
                       
              </div>
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>PAYMENT METHOD LIST </span>
                    </div>
                    <div class="panel-2-body">
                        <table class="table" id="example">
                            <thead>
                            <th>#</th>
                            <th>Method Details</th>
                            <th>Action</th>
                           
                            </thead>
                            <tbody>
                                <%
                                     ArrayList list1=AD.Print_Payment_Methode();
                                     for(int i=0; i<list1.size(); i++){
                                     payment_methode pm = (payment_methode)list1.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                       <div class="rt">
                                        <ul>
                                            <li><span>Category Name:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=pm.getPaymentMode()%></span></li>
                                            <li><span>Description:</span><small>&nbsp;&nbsp;::&nbsp;&nbsp; <%=pm.getDescription()%></small></li>
                                            
                                        </ul>
                                        </div>
                                    </td>
                                     <td>
                                        <div class="button-table-2">
                                            <div class="edit">
                                                <a href="menu-panel.jsp?load=00092-pay-method"><span class="fa fa-pencil-square-o"></span></a>
                                            </div>
                                            <div class="delete">
                                               <a href="menu-panel.jsp?load=00092-pay-method"><span class="fa fa-trash"></span></a>
                                            </div>
                                            
                                        </div>
                                    </td>
                                </tr>
                                <%}%> 
                                <
                            </tbody>
                        </table>
                       <script>
                      $(document).ready(function() {
                      $('#example').DataTable();
                     } );
                    </script>
                    </div>
                   </div>
            
            </div>
          
          <%}%>
            </main>
        </div>
   