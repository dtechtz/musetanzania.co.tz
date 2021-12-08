 <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.deposit"%>
<%@page import="Classes.payment_methode"%>
<%@page import="Classes.payment_account"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.income_category"%>
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
                  <div class="panel-1-header">
                        <span>.</span>  
                    </div>
                    <input type="hidden" name="redirection" value="new">
                    <div class="panel panel-primary">
                         <div class="panel-heading">
                             <span><h5><span style="color:  #ffff00; font-weight: bold">NEW DEPOSIT AMOUNT:</span></h5></span>
                         </div>
                    <div class="panel-1-body">
                        <div id="depositsms"></div> 
                      <form id="deposit_new_ballance" class="deposit_new_ballance">
                      <div class="form-group row">
                            <label for="carrentballance" class="col-sm-2 col-form-label">Current Ballance</label>
                            <div class="col-sm-6">
                              <%
                                  deposit dp = AD.Print_Capital_Balance();
                                   if(dp!=null){
                                     %>
                                  <input type="hidden" name="currentbalance" value="<%=dp.getDepositBallance()%>" class="num1 key" disabled="true" style="background: #cccccc">
                                  <input type="text" name="currentbalance" value="<%=dp.getDepositBallance()%>" class="form-control" disabled="true" style="background: #cccccc">
                                  <%} else{%>
                                  
                               <%}%>
                            </div>
                          </div>
                       <div class="form-group row">
                            <label for="carrentballance" class="col-sm-2 col-form-label">Deposit Date</label>
                            <div class="col-sm-6">
                                <input type="date" id="date1"  name="date" class="form-control"  autocomplete="off">
                                <span id="error_date1" class="text-danger"></span>
                            </div>
                          </div>
                        <div class="form-group row">
                            <label for="carrentballance"  class="col-sm-2 col-form-label">Deposit Amount</label>
                            <div class="col-sm-6">
                                <input type="text" id="amount" name="amount" class="form-control num2 key"  autocomplete="off">
                                <span id="error_amount" class="text-danger"></span>
                            </div>
                          </div>
                        <div class="form-group row">
                            <label for="carrentballance" class="col-sm-2 col-form-label">New Ballance</label>
                            <div class="col-sm-6">
                                  <input type="text" name="newbalance"class="form-control sum"  readonly="readonly"  autocomplete="off">
                                <span id="error_newbalance" class="text-danger"></span>
                            </div>
                          </div>
                        <div class="form-group row">
                            <label for="carrentballance" class="col-sm-2 col-form-label">Account To Deposit</label>
                            <div class="col-sm-6">
                                <select name="AC" id="AC" class="form-control">
                                 <option ></option>
                                    <%
                                     ArrayList list2=AD.Print_Account_payment();
                                     for(int i=0; i<list2.size(); i++){
                                     payment_account pa = (payment_account)list2.get(i);
                                 %>
                                 <option value="<%=pa.getAccountID()%>"><%=pa.getAccountName()%></option>
                                 
                                 <%}%> 
                                 
                                </select><br>
                               <span id="error_AC" class="text-danger"></span>
                            </div>
                        </div>
                          <div class="form-group row">
                            <label for="carrentballance" class="col-sm-2 col-form-label"> Deposit Category</label>
                                 <div class="col-sm-6">
                                     <select name="category" id="category" class="form-control">
               
                                    <option value="0"></option>
                               <%
                                     ArrayList list=AD.Print_Category();
                                     for(int i=0; i<list.size(); i++){
                                     income_category mb = (income_category)list.get(i);
                                 %>
                                 <option value="<%=mb.getCategoryID()%>"><%=mb.getCategoryName()%></option>
                                 
                                 <%}%> 
                                </select>
                                <span id="error_category" class="text-danger"></span>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="carrentballance" class="col-sm-2 col-form-label"> Mode of Depositing</label>
                                 <div class="col-sm-6">
                                     <select name="payment" id="payment" class="form-control">
               
                                    <option> </option>
                               <%
                                     ArrayList list1=AD.Print_Payment_Methode();
                                     for(int i=0; i<list1.size(); i++){
                                     payment_methode pm = (payment_methode)list1.get(i);
                                 %>
                                 <option value="<%=pm.getPayMethodeID()%>"> <%=pm.getPaymentMode()%></option>
                                 <%}%> 
                            </select>
                            <span id="error_payment" class="text-danger"></span>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="carrentballance" class="col-sm-2 col-form-label"> Description</label>
                                 <div class="col-sm-6">
                                     <textarea rows="6" cols="40" id="desc" name="desc" class="form-control"></textarea>
                            </div>
                            <span id="error_desc" class="text-danger"></span>
                          </div>
                            <input type="submit" class="btn btn-success" value="Deposit new Ballance">

                        </form>  
                          
                         <%
                           if(dp!=null){
                           %>
                         
                           <script>
                        $(document).ready(function() {
                            $(".sum").val("0");
                            $(".key").val("");

                            function calc() {

                            var $num1 = ($.trim($(".num1").val()) !== "" && !isNaN($(".num1").val())) ? parseInt($(".num1").val()) : <%=dp.getDepositBallance()%>;
                                console.log($num1);
                                var $num2 = ($.trim($(".num2").val()) !== "" && !isNaN($(".num2").val())) ? parseInt($(".num2").val()) : 0;
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

                            var $num1 = ($.trim($(".num1").val()) !== "" && !isNaN($(".num1").val())) ? parseInt($(".num1").val()) : 0;
                                console.log($num1);
                                var $num2 = ($.trim($(".num2").val()) !== "" && !isNaN($(".num2").val())) ? parseInt($(".num2").val()) : 0;
                                console.log($num2);
                                $(".sum").val($num1 + $num2);
                            }
                            $(".key").keyup(function() {
                                calc();
                            });
                        });
                        </script>
                        
                        <%}%>
                    </div>
              <script>
                  $(document).ready(function(){
                        $('#deposit_new_ballance').on('submit',function(){
                         event.preventDefault();
                        var error_date1 ='';
                        var error_amount ='';
                        var error_AC ='';
                        var error_category ='';
                        var error_payment ='';

                        if($.trim($('#date1').val()).length === 0){
                            error_date1 = 'Please pick date of deposity';
                            $('#error_date1').text(error_date1);
                            $('#date1').addClass('has-error');
                        }
                        else{
                            error_date1 = '';
                            $('#error_date1').text(error_date1);
                            $('#date1').removeClass('has-error');
                        }
                         if($.trim($('#amount').val()).length === 0){
                            error_amount = 'Please Enter Amount';
                            $('#error_amount').text(error_amount);
                            $('#amount').addClass('has-error');
                        }
                        else{
                            error_amount = '';
                            $('#error_days').text(error_amount);
                            $('#amount').removeClass('has-error');
                        }
                         if($.trim($('#AC').val()).length === 0){
                            error_AC = 'Please Select account to deposit';
                            $('#error_AC').text(error_AC);
                            $('#AC').addClass('has-error');
                        }
                        else{
                            error_AC= '';
                            $('#error_AC').text(error_AC);
                            $('#AC').removeClass('has-error');
                        }
                          if($.trim($('#category').val()).length === 0){
                            error_category = 'Select category';
                            $('#error_category').text(error_category);
                            $('#category').addClass('has-error');
                        }
                        else{
                            error_category = '';
                            $('#error_penalty').text(error_category);
                            $('#category').removeClass('has-error');
                        }
                         if($.trim($('#payment').val()).length === 0){
                            error_payment = 'Deposity mode';
                            $('#error_payment').text(error_payment);
                            $('#payment').addClass('has-error');
                        }
                        else{
                            error_category = '';
                            $('#error_payment').text(error_payment);
                            $('#payment').removeClass('has-error');
                        }

                        if(error_date1 !=='' || error_amount !==''|| error_AC !==''|| error_category  !==''){
                              var error ='<div class="alert alert-danger">Sorry!! Data not inserted</div>';
                                  $('#plansms').html(error);
                                  setTimeout(function(){
                                    document.getElementById('plansms').innerHTML='';
                                },4000);

                            return false;
                        }
                        else{
                             $.ajax({
                                  url:'controller.jsp?page=deposit_panel&operation=deposit',
                                  methode:'POST',
                                  data:$('#deposit_new_ballance').serialize(),
                                  success:function(data){
                                      if(data){
                                    var error ='<div class="alert alert-success">Amount deposity successfully</div>';
                                  $('#depositsms').html(error);
                                  setTimeout(function(){
                                    document.getElementById('depositsms').innerHTML='';
                                    alert("Exit to view  recorde");
                                     location.reload();
                                },1000); 
                                      }else{
                                    var error ='<div class="alert alert-danger">Sorry , Amount deposity failed please try again!!</div>';
                                  $('#depositsms').html(error);
                                  setTimeout(function(){
                                    document.getElementById('depositsms').innerHTML='';
                                },1000);
                                }
                               }
                              });
                        } 

                    });              
                    });
                    </script>
                       
              </div>
                </div>  
            
            </div>
        
            </main>
        </div>
   