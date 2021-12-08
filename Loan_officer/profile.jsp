
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
                        <a href="menu-panel.jsp?load=00011_start"  class="active"><span class="fa fa-tachometer"></span><span>Dashboard</span><span></span></a>
                    </li>
                    <li>
                        <a href="" class="user-btn"><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00021_view_all"><li><span class="fa fa-eye"></span><span>View all members</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new_new"><li><span class="fa fa-user"></span><span>New member registration</span><span></span></li></a>
                           
                        </ul>
                        
                    </li>
                    <li>
                        <a href=""><span class="fa fa-money"></span><span>Individual Loan Allocation</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00033_ln_lst"><li><span class="fa fa-eye"></span><span>View all Loan List</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=000311_nw_ln"><li><span class="fa fa-user"></span><span>Create New Loan Application</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=00031_nw_ln"><li><span class="fa fa-user"></span><span>(testing button)</span><span></span></li></a>
                        </ul>
                        
                    </li>
                    <li>
                        <a href=""><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00070_py_acc"><li><span class="fa fa-users"></span><span>Create New Group</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=0077_group_apply"><li><span class="fa fa-user"></span><span>Create new Application </span><span></span></li></a>
                             <a href="menu-panel.jsp?load=0070_loan_group"><li><span class="fa fa-eye"></span><span>Group Loan List</span><span></span></li></a>
                        </ul>
                    </li>
                    <li>
                        <a href=""><span class="fa fa-money"></span><span>Loan Payment</span><span class="fa fa-chevron-down second"></span></a>
                       <ul>
                            <a href="menu-panel.jsp?load=00044_lp_lst"><li><span class="fa fa-money"></span><span>Individual Loan Payment</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00041_lp_new_gr"><li><span class="fa fa-money"></span><span>Group Loan Payment</span><span></span></li></a>
                            
                        </ul>
                    </li>
                    
                    <li>
                        <a href="menu-panel.jsp?load=00050_ln_type"><span class="fa fa-gg"></span><span>Loan Type</span><span></span></a>
                    </li>
                    <li>
                        <a href="menu-panel.jsp?load=00060_ln_pl"><span class="fa fa-sliders"></span><span>Loan Plan</span><span></span></a>
                    </li>
                     
                    <li>
                        <a href="" class="report-btn"><span class="fa fa-bar-chart"></span><span>Report</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href=""><li><span class="fa fa-eye"></span><span>Members report</span><span></span></li></a>
                            <a href=""><li><span class="fa fa-eye"></span><span>Expenses report</span><span></span></li></a>
                            
                        </ul>
                    </li>
                <li>
                        <a href=""><span class="fa fa-folder-open-o"></span><span>Transaction</span><span class="fa fa-chevron-down third"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00080-trs-new"><li><span class="fa fa-folder-open-o"></span><span>New Deposit</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00081-trs-exp"><li><span class="fa fa-folder-open-o"></span><span>New Expenses</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00082-trs-tr"><li><span class="fa fa-eye"></span><span>Deposit Transaction</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00083-trs-sheet"><li><span class="fa fa-eye"></span><span>Expenses Transaction</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00101-ballance"><li><span class="fa fa-money"></span><span>Account Ballance</span><span></span></li></a>
                        </ul>
                </li>
                 <li>
                        <a href="" class="setting-btn"><span class="fa fa-cogs"></span><span>General setting</span><span class="fa fa-chevron-down fifth"></span></a>
                         <ul>
                            <a href="menu-panel.jsp?load=00090-stg-acc"><li><span class="fa fa-money"></span><span>Create Payment Account</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=001000ac"><li><span class="fa fa-users"></span><span>Users Management</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00091-stg-ctg"><li><span class="fa fa-eye"></span><span>Income Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00100-exp-cate"><li><span class="fa fa-eye"></span><span>Expenses Category</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00092-pay-method"><li><span class="fa fa-money"></span><span>Payment method</span><span></span></li></a>
                        </ul>
                   </li>
                     <li>
                         <a href=""><span class="fa fa-database"></span><span>Database Backup</span><span></span></a>
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
            <div class="cards">
                
                 <div class="single-card-1">
                    <div class="view">
                       <div>
                           <span>Total Groups</span><br><br>
                           <%
                            counting count2 =AD.Number_Of_Groups();
                            if(count2!=null){
                           %>
                           <span><%=count2.countingID()%></span><br>
                           <%} else{%>
                           <span>0</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-calendar-o"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                        <a href="menu-panel.jsp?load=00070_py_acc"> <span>View groups List</span></a>
                        <a href="menu-panel.jsp?load=00070_py_acc"> <span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
                 <div class="single-card-2">
                    <div class="view">
                       <div>
                            <span>Total Members</span><br><br>
                             <%
                            counting count = AD.Number_Of_User();
                            if(count!=null){
                           %>
                           <span><%=count.countingID()%></span><br>
                           <%} else{%>
                           <span>0</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-users"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                       <a href="menu-panel.jsp?load=00021_view_all"> <span>View Member List</span></a>
                       <a href="menu-panel.jsp?load=00021_view_all"> <span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
                <div class="single-card-3">
                    <div class="view">
                       <div>
                           <span>Total Income</span><br><br>
                            <%
                           deposit dp4 = AD.Print_Total_received();
                            if(dp4 !=null){
                           %>
                           <span><%=dp4.getDepositAmount()%></span><br>
                           <%} else{%>
                           <span>0.00</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-users"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                        <a href="menu-panel.jsp?load=00082-trs-tr"><span>View Total income List</span></a>
                        <a href="menu-panel.jsp?load=00082-trs-tr"><span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
                <div class="single-card-4">
                    <div class="view">
                       <div>
                           <span>Total Expenses </span><br><br>
                           <%
                            deposit dp5 =AD.Print_Total_Expenses();
                            if(dp5 !=null){
                           %>
                           <span><%=dp5.getDepositAmount()%></span><br>
                            <%} else{%>
                           <span>0.00</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-usd"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                        <a href="menu-panel.jsp?load=00083-trs-sheet" style="color:  #003333"><span>View Total Transaction</span></a>
                        <a href="menu-panel.jsp?load=00083-trs-sheet" style="color:  #003333"><span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
            </div>
            <div class="main-body">
                <div class="palel-1">
                    <div class="panel-1-header">
                        <span>STATISTICS</span>  
                    </div>
                    <div class="panel-1-body">
          
                        <table width="100%" class="table">
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td>Income To day</td>
                                    <td>0.00</td>
                                </tr>
                                <tr>
                                     <td></td>
                                    <td>Expenses To day</td>
                                  
                                    <td>
                                   
                                   </td>
                                </tr>
                                 <tr>
                                     <td></td>
                                    <td>Income This week</td>
                                   <td>0.00</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Expenses This week</td>
                                   <td>0.00</td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>USER PROFILE UPDATE</span>
                    </div>
                     <div class="panel-2-header">
                         <%
                         if(request.getParameter("sms")!=null){
                         %>
                         <span style="color:  #006699;"><h4> Updated Successfully</h4></span>
                        <% } else{%>
                        <%}%>
                    </div>
                    <form action="controller.jsp">
                        <input type="hidden" name="page" value="member_registration">
                        <input type="hidden" name="operation" value="profile">
                        <input type="hidden" name="proID" value="<%=user1.getMemberID()%>">
                         <div class="panel-2-body">
                        <div class="profile-button">
                            <input type="text" name="userupdate" value="<%=user1.getUsername()%>" disabled="true">
                            <span class="fa fa-user"></span>
                        </div><br>
                            <div class="profile-button">
                                <input type="text" name="userupdate" value="<%=user1.getPassword()%>" disabled="true">
                            <span class="fa fa-unlock-alt"></span>
                            </div><br>
                          <div class="profile-button">
                              <input type="text" name="userupdate" placeholder="Enter New Password" >
                            <span class="fa fa-unlock-alt"></span>
                          </div><br>
                         
                        <div class="chart">
                        </div><br>
                          <input type="submit" class="button" value="Update ">
                    </div>
                    </form>
                </div>
            </div>
        
            </main>
        </div>
   