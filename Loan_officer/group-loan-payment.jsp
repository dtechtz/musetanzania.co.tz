<%@page import="Classes.group_details_2"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.group_details"%>
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
                            <a href="menu-panel.jsp?load=000311_nw_ln"><li><span class="fa fa-user"></span><span>Start New Loan Application</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00033_ln_bursement"><li><span class="fa fa-eye"></span><span>Loan Waiting  Disbursement</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=000333849_ln_history"><li><span class="fa fa-eye"></span><span>View Members Loan History</span><span></span></li></a>
                             
                        </ul>
                        
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00070_py_acc"><li><span class="fa fa-users"></span><span>Create New Group</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=0077_group_apply"><li><span class="fa fa-user"></span><span>Start new Application </span><span></span></li></a>
                             <a href="menu-panel.jsp?load=group_loan_disbursment"><li><span class="fa fa-user"></span><span>Loan waiting for Disbursement</span><span></span></li></a>
                               <a href="menu-panel.jsp?load=group_loan_history"><li><span class="fa fa-info"></span><span>Group loan History</span><span></span></li></a>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="active"><span class="fa fa-money"></span><span>Loan Collection</span><span class="fa fa-chevron-down second"></span></a>
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
                        <span>LOAN PAYMENT  PANEL</span>  
                    </div>
                  <div class="panel-1-body">
                      <%
                      if(request.getParameter("confirm-loan")== null){
                      %>
                 <table width="100%" class="table" id="example">
                  <thead>
                  <th>#</th>
                  <th>ACCOUNT #</th>
                  <th>PAYEE</th>
                  <th>LOAN OFFERED</th>
                  <th>DATE</th>
                  <th>LOAN STATUS</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                  <%
                                     ArrayList list4=AD.Print_Group_Loan_Payment_2();
                                     for(int i=0; i<list4.size(); i++){
                                     group_details_2  lg = (group_details_2)list4.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                        <%=lg.getGLoanID()%>
                                    </td>
                                    <td>
                                        <%=lg.getGGroupName()%>
                                    </td>
                                    <td>
                                        <%=lg.getGLoanAmount()%>
                                    </td>
                                    <td>
                                        <%=lg.getGDateAppliedForLoan()%> 
                                    </td>
                                    
                                    <td><a href="" style="background:  #007776; color:  #ffff33; padding: .5rem; font-weight: bold"> <%=lg.getLoanStatus()%></a></td>
                                    <td>
                                        <div class="button-table-2">
                                            <div class="edit">
                                                <a href="menu-panel.jsp?load=00041_lp_new_gr&confirm-loan=true&Refe=<%=lg.getGLoanID()%>"><span class="fa fa-pencil-square-o"></span></a>
                                            </div>
                                            <div class="delete">
                                               <a href="controller.jsp?page=loan_group_giving&operation=Delete_Return&code=<%=lg.getGReturnID()%>"  onclick="return confirm('The am of this record is for future history and loan references, by deleting this,  some of records will be lost for references , Are you sure you want to delete this?');"><span class="fa fa-trash"></span></a>
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
                 group_details rtam = AD.Print_Group_Loan_Payment_Fo_Single_Group(Integer.parseInt(request.getParameter("Refe")));
                 if(rtam!=null){
                   %>
                
             
                     <div class="panel-2">
                    <div class="panel-2-header-2">
                        <span>Payment Overview  Break Down[ Summary ]</span><span style="font-size: 1.2rem; color: red">Loan Status --></span><span style="background:  #0099cc; text-align: center; padding: .4rem; font-size: 1.4rem; color:  #ffff33; font-weight:  bold"><%=rtam.getLoanStatus()%></span>
                    </div>
                    <div class="panel-2-body">
                    <form action="controller.jsp">
                     <input type="hidden" name="page" value="Return_loan">
                     <input type="hidden" name="operation" value="group_return">
                        <table class="table" id="example" style="width: 100%">
                            <thead>
                            <th>#</th>
                                  <th>Reference #</th>
                                  <th>Borrower</th>
                                     <th>Return</th>
                                  <th>Date</th>
                                  <th>Action</th>
                            </thead>
                            <tbody>
                                <%
                                ArrayList list4 = AD.Print_Group_Loan_Payment_Fo_Single_Group_1(Integer.parseInt(request.getParameter("Refe")));
                                 for(int i=0; i<list4.size(); i++){
                                  group_details_2 lg = (group_details_2)list4.get(i);
                                
                                %>
                                <tr>
                                    <td></td>
                                    <td><%=lg.getGLoanID()%></td>
                                    <td><%=lg.getGGroupName()%></td>
                                    <td><%=lg.getGPayable()%></td>
                                    <td><%=lg.getGDateAppliedForLoan()%></td>
                                    <td>
                                        <div class="delete">
                                            <a href="controller.jsp?page=loan_group_giving&operation=Delete_Return&code=<%=lg.getGReturnID()%>"  onclick="return confirm('Please Before deleting this record please Restore this ballance first (Find Transaction menu ->New Expenses then enter this amount you want to withdraw) to mantain account balance');"><span class="fa fa-trash"></span></a>
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
               <div class="user-return"> 
                   <ul>
                       <li><span><input type="text"  class="text" value="<%=rtam.getGLoanAmount()%>"style="width: 13rem; height: 2.6rem; background:  #0099cc; color:  #ffffff; font-weight:  bold" required></span><span>&nbsp;Loan Offer</span> </li>
                       <li> <span> <input type="text"  class="text" value="<%=rtam.getGTotalPayWithInterest()%>"style="width: 13rem; height: 2.6rem; background:  #009999; color:  #ffffff; font-weight: bold" required></span><span>&nbsp;Payable Amount with Interest</span></li>
                       <li> <span> <input type="text"   class="text"readonly="true" value="<%=rtam.getGTotalPayableWithPenalt()%>" style="width: 13rem; height: 2.6rem; background:  #cc0033; color:  #ffffff; font-weight: bold" placeholder="Pick return Date" required></span><span>&nbsp;Payable Amount with Interest and Penalty</span></li>
                       <li> <span><input type="text"  class="text" readonly="true" value="<%=rtam.getGPayable()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;Total Returned</span></li>
                        <li> <span><input type="text"  class="text" readonly="true" value="<%=rtam.getGDateApprove()%>" style="width: 13rem; height: 2.6rem;  background:  #cccccc; font-weight: bold"   required></span><span>&nbsp;Date Loan Confirmed</span></li>
                        <li><span> <input type="text"  class="text" readonly="true" value="<%=rtam.getGDateExpire()%>" style="width: 13rem; height: 2.6rem; background:  #cccccc; font-weight: bold"  required></span><span>&nbsp;End of Loan Return</span></li>
                   </ul>
                   
                   </div> 
                        
                        <br>     
                        <br>
                       
                        <input type="hidden" name="userid" value="<%=rtam.getGBorrowerID()%>">
                        <input type="hidden" name="loanid" value="<%=rtam.getGLoanID()%>">
                        <input type="hidden" name="" value="">
                        <input type="hidden" class="num1 key" value="">
                        <input type="hidden" name="pay" class="sum">
                         
                        <a href="controller.jsp?page=loan_group_giving&operation=confirm-return&User=<%=rtam.getGLoanID()%>" style="background: #007776; color:  #ffffff; padding: .6rem" onclick="return confirm('Please Confirm  amount and user details before Release! Be carefully');">Release Loan  Return</a> 
                          <%
                           deposit dp = AD.Print_Capital_Balance();
                           if(dp!=null){
                          %>
                        
                        <script>
                         
                        $(document).ready(function() {
                            $(".sum").val("0");
                            $(".key").val("");

                            function calc() {

                            var $num1 = ($.trim($(".num1").val()) != "" && !isNaN($(".num1").val())) ? parseInt($(".num1").val()) : <%=dp.getDepositBallance()%>
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
                   </div>
                       
                      
   
                    </div>
                   </div>
               </main>
                       
                <%} else{%>
                <div class="panel-1-header">
                        <span>No loan History Found</span>  
                    </div>
                
                <%}}%>
                </div>
        