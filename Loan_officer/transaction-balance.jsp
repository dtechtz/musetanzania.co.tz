 <%@page import="Classes.ballance_amount"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
                        <span>. </span>  
                    </div>
                    <div class="panel-1-body">
                     <div class="panel panel-primary">
                    <div class="panel-heading">
                             <span><h5><span style="color:  #ffff00; font-weight: bold">ACCOUNT STATEMENTS :</span> </h5></span>
                  </div>
                 <form  id="group_disburse_status">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Collection & Expenses statistics</a>
                    </li>
                  
                      <li class="nav-item">
                        <a class ="inactive_tab1" id="list_finish_details" style="border: 1px solid #ccc">
                            Account ballance
                     </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                   <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">A::</span> &nbsp;&nbsp;
                               Preview main account
                               </div>
                            <div class="panel-body">
                                <div id="sms4"></div>
                                <table id="table" class="table">
                                    <thead>
                                    <th style="width: 6%">S/N</th>
                                    <th style="width: 70%">Action Performed</th>
                                    <th>Total Amount</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td>Total deposited from different collection sources</td>
                                            <td class="">
                                            <%
                                            deposit dp4 = AD.Print_Total_received();
                                            if(dp4!=null){
                                           %>
                                           <input type="text" readonly="true" id="deposit" name="deposit" value="<%=dp4.getDepositBallance()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" readonly="true" id="deposit" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Registration Fees</td>
                                            
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Individual Application  Fees</td>
                                            
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Group Application  Fees</td>
                                           
                                        </tr>
                                        
                                        <tr>
                                            <td></td>
                                            <td>Individual loan collection</td>
                                            <td>
                                                <%
                                            ballance_amount ba1 = AD.Print_Ballancae_Income_sheet();
                                            if(ba1!=null){
                                           %>
                                           <input type="text" id="indcollect" readonly="true" name="" value="<%=ba1.getBallanceAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="indcollect"  readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Groups loan collection</td>
                                            <td>
                                                 <%
                                             ballance_amount ba = AD.Print_Ballancae_Group_Income_sheet();
                                            if(ba!=null){
                                           %>
                                           <input type="text" id="gcollection" readonly="true" name="" value="<%=ba1.getBallanceAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="gcollection" readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td></td>
                                            <td>Individual Loan distribution</td>
                                            <td>
                                                <%
                                             ballance_amount  ball = AD.Print_Ballancae_Expenses_sheet();
                                            if(ball!=null){
                                           %>
                                           <input type="text" id="idisburse" readonly="true" name="" value="<%=ball.getBallanceAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="idisburse" readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Group laon distribution</td>
                                            <td>
                                                  <%
                                              ballance_amount  ball1 = AD.Print_Ballancae_Expenses_sheet_Group();
                                            if(ball!=null){
                                           %>
                                           <input type="text" id="gdisburse" readonly="true" name="" value="<%=ba.getBallanceAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="gdisburse" readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Other expenses</td>
                                            <td>
                                                 <%
                                              deposit dp2 = AD.Print_Capital_Remain_Balance();
                                            if(dp2!=null){
                                           %>
                                           <input type="text" id="expenses" readonly="true" name="" value="<%=dp2.getDepositAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="expenses" readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background:  #cc0033; color:  #ffffff">Total Expenses Amount</td>
                                            <td>Tsh </td>
                                        </tr>
                                        
                                    </tbody>
                                        
                                </table>
                                

                                <div align="center">
                                  
                                    <button type="button" name="btn_payment_details" id="btn_payment_details" class="btn btn-info btn-lg">Final Step</button>   
                                
                                </div>
                            </div>
                            </div>
                    </div>
                    
                    <div class="tab-pane fade" id="finish_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 02::</span> &nbsp;&nbsp;
                               FINISH  LOAN SANCTION 
                            </div>
                            <div class="panel-body">
                                <input type="hidden" name="invoice_approve" id="invoice_approve" value="">
                                <div id="lastsms"></div>
                               <table id="table" class="table">
                                    <thead>
                                    <th style="width: 6%">S/N</th>
                                    <th style="width: 70%">Action Performed</th>
                                    <th>Total Amount</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td>Total deposited from different collection sources</td>
                                            <td class="">
                                            <%
                                            deposit dp44 = AD.Print_Total_received();
                                            if(dp4!=null){
                                           %>
                                           <input type="text" readonly="true" id="deposit" name="deposit" value="<%=dp44.getDepositBallance()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" readonly="true" id="deposit" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Individual Loan distribution</td>
                                            <td>
                                                <%
                                             ballance_amount  ball4 = AD.Print_Ballancae_Expenses_sheet();
                                            if(ball!=null){
                                           %>
                                           <input type="text" id="idisburse" readonly="true" name="" value="<%=ball4.getBallanceAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="idisburse" readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Group laon distribution</td>
                                            <td>
                                                  <%
                                              ballance_amount  ball14 = AD.Print_Ballancae_Expenses_sheet_Group();
                                            if(ball!=null){
                                           %>
                                           <input type="text" id="gdisburse" readonly="true" name="" value="<%=ball14.getBallanceAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="gdisburse" readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Other expenses</td>
                                            <td>
                                                 <%
                                              deposit dp24 = AD.Print_Capital_Remain_Balance();
                                            if(dp2!=null){
                                           %>
                                           <input type="text" id="expenses" readonly="true" name="" value="<%=dp24.getDepositAmount()%>" class="form-control dp">
                                           <%} else{%>
                                           <input type="text" id="expenses" readonly="true" name="" value="0.0" class="form-control dp">
                                           <%}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background:  #cc0033; color:  #ffffff">Total Expenses Amount</td>
                                            <td>Tsh </td>
                                        </tr>
                                        
                                    </tbody>
                                        
                                </table>
                                <br>
                                <div align="center">
                                   <button type="button" name="previous_btn_finish_details" id="previous_btn_finish_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="previous_btn_finish_details" id="btn_finish_details" class="btn btn-success btn-lg">Finish Loan Disbursement</button>
                                       
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
            </form>
                </div>     
                <script>
               $(document).ready(function(){
                var dp =  $('.dp').val();
                // alert(dp);
               });
                </script>
                        
                
                 
              </div>
                
                </div>
                                   
            </div>
                              
            </div>
        
            </main>
        </div>
        <script>
            $(document).ready(function(){
               var depo =  $('#deposit').val();
               var regfee = $('#regfee').val();
               var indapp = $('#appfee').val();
               var gappfee = $('#gappfee').val(); 
               var indcollect = $('#indcollect').val();
               var gcollection = $('#gcollection').val();
               var tty =parseFloat(depo)+parseFloat(regfee)+parseFloat(indapp)+parseFloat(gappfee)+parseFloat(indcollect)+parseFloat(gcollection);
               $('#depototal').html(tty);
               var idisburse = $('#idisburse').val();
               var gdisburse = $('#gdisburse').val();
               
               var expenses = $('#expenses').val();
            });
        </script>
   <script>
    $('#btn_payment_details').click(function(){
          $('#list_applicant_details').removeClass('active active_tab1');
          $('#list_applicant_details').removeAttr('href data-toggle');
          $('#applicant_details').removeClass('active');
          $('#list_applicant_details').addClass('inactive_tab1');
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
        $('#list_finish_details').addClass('inactive_tab1');
        $('#list_applicant_details').removeClass('inactive_tab1');
        $('#list_applicant_details').addClass('active_tab1 active');
        $('#list_applicant_details').attr('hre','#applicant_details');
        $('#list_applicant_details').attr('data-toggle','tab');
        $('#applicant_details').addClass('active in');
    });
  
     $('#btn_finish_details').click(function(){
          var error_collection ='';
         if($.trim($('#collection').val()).length === 0){
            error_collection = 'Please pick  weekly collection day';
            $('#error_collection').text(error_collection);
            $('#collection').addClass('has-error');
        }
        else{
            error_collection = '';
            $('#error_collection').text(error_collection);
            $('#collection').removeClass('has-error');
        }
        if(error_collection !==''){
              var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#lastsms').html(error);
                  setTimeout(function(){
                    document.getElementById('lastsms').innerHTML='';
                },4000);
            
            return false;
        }
        else{
        event.preventDefault();
           $.ajax({
                  url:'controller.jsp?page=loan_group_giving&operation=Group_loan_status',
                  methode:'POST',
                  data: $('#group_disburse_status').serialize(),
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
          }       
    });
   
    
</script>    