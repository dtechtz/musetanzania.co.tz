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
                        <a href="menu-panel.jsp?load=00011_start" ><span class="fa fa-tachometer"></span><span>Dashboard</span><span></span></a>
                    </li>
                     <li>
                        <a href="" class="active"><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00021_view_all"><li><span class="fa fa-eye"></span><span>View all members</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new_new"><li><span class="fa fa-user"></span><span>New member registration</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new"><li><span class="fa fa-user"></span><span>(testing button) </span><span></span></li></a>
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
                        <ul class="report-show">
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
            
            <div class="main-body-menus">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>NEW MEMBERSHIP REGISTRATION FORM </span>  
                    </div>
                    <div class="panel-1-body">
                      
                        <form action="controller.jsp">
                       <table class="table-2">
                   
                     <%if(request.getParameter("sms")!=null){%>
                       <tr><td colspan="2" style=" text-align: center; background-color: green; color: #ffffff">
                       
                     <h4> Member Details Registered Successfully </h4>
                
                     </td></tr>
                       
                       
                       <%}%>

                        
                       <input type="hidden" name="page" value="member_registration">
                       <input type="hidden" name="operation" value="add_new">
                           
                            <tr>
                               <td><label>First Name</label></td>
                               <td><input type="text" name="fname" value=""  class="text" placeholder="First Name" autocomplete="off" required></td>
                           </tr>
                            <tr>
                               <td><label>Middle Name</label></td>
                               <td><input type="text" name="mname"  autocomplete="off" value="" class="text" placeholder="Middle Name"></td>
                           </tr>
                            <tr>
                               <td><label>Last Name</label></td>
                               <td><input type="text" name="lname" value=""  class="text" placeholder="Last Name" autocomplete="off" required></td>
                           </tr>
                            <tr>
                               <td><label>Gender</label></td>
                               <td>
                                   Male<input type="radio" name="gender"   value="Male" id="male" autocomplete="off" required>
                                   Female <input type="radio" name="gender"   value="Female" id="female" autocomplete="off" required>
                                   Others<input type="radio" name="gender"  value="Other" id="others" autocomplete="off" required>
                               </td>
                           </tr>
                            <tr>
                               <td><label>Date of Birth</label></td>
                               <td><input type="text" name="date" value=""   class="text" id="datepicker"placeholder="Pick Date" autocomplete="off" required></td>
                           </tr>
                           
                            <tr>
                               <td><label>Region</label></td>
                              <td>
                                <select name="region" class="text">
               
                                  <option ></option>
                               <option value="Dar es salaam" >Dar  es salaam</option>
                               <option value="Mwanza" >Mwanza</option>
                               <option value="Arusha" >Arusha</option>
                               <option value="Mbeya" >Mbeya</option>
                               <option value="Iringa" >Iringa</option>
                               <option value="Sumbawanza" >Sumbawanga</option>
                               <option value="Rukwa" >Rukwa</option>
                               <option value="Kilimanjaro" >Kilimanjaro</option>
                               <option value="Mara" >Mara</option>
                               <option value="Kagera" >Kagera</option>
                               <option value="Shinyanga" >Shinyanga</option>
                               <option value="Tabora" >Tabora</option>
                               <option value="Kigoma" >Kigoma</option>
                               <option value="Singida" >Singida</option>
                               <option value="Morogoro" >Morogoro</option>
                               <option value="Dodoma" >Dodoma</option>
                               <option value="Tanga" >Tanga</option>
                               <option value="Pwani" >Pwani</option>
                               <option value="Ruvuma" >Ruvuma</option>
                               <option value="Songwe" >Songwe</option>
                            </select>
                               </td>  
                           </tr>
                            <tr>
                               <td><label>District</label></td>
                               <td><input type="text" name="dist"  value="" class="text" placeholder="district" autocomplete="off" required></td>
                           </tr>
                         <tr>
                               <td><label>Phone Number</label></td>
                               <td><input type="text" name="phone"  value="" class="text" placeholder="Phone number" autocomplete="off" required></td>
                           </tr>
                            <tr>
                               <td><label>Email Address</label></td>
                               <td><input type="text" name="email"  value="" class="text" placeholder="Email address" autocomplete="off"></td>
                           </tr>
                           <tr>
                               <td><label>Identity Card Type</label></td>
                               <td>
                                   <select name="card-type" class="text" required="">
               
                                    <option ></option>
                               <option value="NIDA" >National Identity Card</option>
                               <option value="VOTER ID" >Voter Identity Card</option>
                               <option value="PASSPORT" >Traveling Passport Number</option>
                               <option value="DRIVING LINCENSE" >Driving License</option>
                            </select>
                               </td>  
                            
                           </tr>
                            <tr>
                               <td><label>Enter ID Number</label></td>
                               <td><input type="text" name="card-number"  value="" class="text" placeholder="Identity Number" autocomplete="off" required></td>
                           </tr>
                           <tr>
                               <td><label>Group Name</label></td>
                               <td>
                                   <select name="group" class="text" required>
                                    <option></option>
                                  <%
                                     ArrayList list=AD.Print_Group_Details();
                                     for(int i=0; i<list.size(); i++){
                                    loan_group_details lp = (loan_group_details)list.get(i);
                                     %>
                                     <option value="<%=lp.getGroupID()%>"><%=lp.getGroupName()%></option>
                                     <%}%>
                                    <option ></option>
                               
                            </select>
                               </td>  
                            
                           </tr>
                            <tr>
                               <td><label>Working status</label></td>
                               <td>
                                   <select name="working" class="text" required>
               
                                    <option ></option>
                                    <option >Self-employed</option>
                                    <option >Employee</option>
                                    <option >Employer</option>
                               
                            </select>
                               </td>  
                            
                           </tr>
                           
                            <tr>
                               <td><label>Physical Address</label></td>
                               <td><textarea placeholder="Enter ..............." rows="6" cols="40" name="address"></textarea></td>
                           </tr>
                           
                           <tr>
                               <td></td>
                               <td>
                           <center>
                               <input type="submit" value="Register" class="button">
                           </center>
                               </td>
                           </tr>
                           
                         
                           
                </table>
                 </form> 
                    </div> 
                                 
              </div>
            </div>
            </div>
        
            </main>
        </div>
   