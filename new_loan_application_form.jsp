 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Classes.loan_type"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.loan_group_details"%>
<%@page import="java.util.ArrayList"%>
<%@include  file="repoconnect.jsp" %>
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
                        <a href="#"><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
                        <ul class="user-show">
                            <a href="menu-panel.jsp?load=00021_view_all"><li><span class="fa fa-eye"></span><span>View all members</span><span></span></li></a>
                            <a href="menu-panel.jsp?load=00022_add_new_new"><li><span class="fa fa-user"></span><span>New member registration</span><span></span></li></a>
                        </ul>
                        
                    </li>
                      <li>
                        <a href="#" class="active"><span class="fa fa-money"></span><span>Individual Loan Allocation</span><span class="fa fa-chevron-down first"></span></a>
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
             <script>
                    $(document).ready(function(){
                        var tt = Date.now()+(Math.random().toFixed()*1000);
                        var t5=  Math.floor(800000000+Math.random()*900000000);
                    $('#unid').html(t5); 
                    var t2 = '<input type="hidden" id="" name="invoice" value="'+t5+'">';
                   $('#unid_2').html(t2);
                  // alert(t2);
                    });
                   
                </script>
            <div class="main-body-menus">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>NEW LOAN APPLICATION FORM </span>  
                    </div>
                    <div class="panel-1-body">
                      <div class="box">
                <form method="POST" id="member_apply_loan">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Loan Applicant Details</a>
                    </li>
                    <li class="nav-item">
                        <a class ="inactive_tab1" id="list_income_details" style="border: 1px solid #ccc">
                            Payment (10%)
                        </a></li>
                    <li class="nav-item">
                        <a class ="inactive_tab1" id="list_referee_details" style="border: 1px solid #ccc">
                            Confirmation & Submission
                </a></li>
                </ul>
                <div class="tab-content" style="margin-top: 16px;">
                    <div class="tab-pane active" id="applicant_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 01::</span> &nbsp;&nbsp;BASIC LOAN APPLICANT DETAILS</span></div>
                            <div class="panel-body">
                                 <div id="sms"></div>
                                <div class="form-group">
                                    <label>Member Names [Borrower] <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control" id="member_name" name="borrower">
                                        <option></option>
                                        <%
                                     ArrayList list2=AD.PrintMemberDetails_start_App();
                                     for(int i=0; i<list2.size(); i++){
                                     members mb = (members)list2.get(i);
                                 %>
                                 <option value="<%=mb.getuserID()%>"><%=mb.getFname()%> &nbsp;&nbsp;<%=mb.getLname()%></option>
                                 <%}%>
                                    </select>
                                    <span id="error_member" class="text-danger"></span>
                                </div>
                                  <div class="form-group">
                                    <label>Loan Type<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control loan_type_view" name="type" id="loan_type_view">
                                        <option></option>
                                         <%
                                     ArrayList list=AD.Print_Loan_Type();
                                     for(int i=0; i<list.size(); i++){
                                     loan_type tp = (loan_type)list.get(i);
                                     %>
                                     <option value="<%=tp.getLoanID()%>"><%=tp.getLoanType()%></option>
                                     <%}%>
                                    </select>
                                    <span id="error_ltype" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Loan Plan<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control" id="newloanplan" name="plan">
                                        <option></option>
                           
                                    </select>
                                    <span id="error_lplan" class="text-danger"></span>
                                </div>
                                
                               
                                <div class="form-group">
                                    <label>Loan request Amount<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" name="amount" autocomplete="off" id="lamount" class="form-control">
                                     <span id="error_lamount" class="text-danger"></span>
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
                                SERVING AMOUNT PAYMENT (10%) 
                            </div>
                            <div class="panel-body">
                                <div id="sms1"></div>
                                 <div class="form-group">
                                   <p style="color: #006666; padding: 1rem; font-weight: bold; background: #f0f0f0" id="unid"></p>
                                   <p id="unid_2"></p>
                                </div>
                                <div class="form-group">
                                    
                                    <div class="form-group" id="amount2">
                                        
                                    </div>
                                    <label>Amount requested<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <p id="business_name" class="form-control"></p>
                                    <span id="error_business_name" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Amount required to pay (serving amount 10% )<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <p id="business_income" class="form-control"></p>
                                    <div id="business_income2">
                                        
                                    </div>
                                    <span id="error_income_amount" class="text-danger"></span>
                                </div>
                                 <div class="form-group">
                                    <label>Amount payed</label>
                                    <input type="text" name="payed_amount" autocomplete="off" id="payed_amount" class="form-control payed_amount"/>
                                    <span id="error_payed" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label>Loan Processing Status</label>
                                    <p id="paystatus" class="form-control" style="background-color: #f0f0f0; color: green; font-weight: bold"></p>
                                <span id="error_status" class="text-danger"></span>
                                </div>
                                
                                 <div class="form-group">
                                     <div id="paystatus2"></div>
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
                               FINISH LOAN APPLICATION
                            </div>
                            <div class="panel-body">
                                <div id="sms2"></div>
                                <div class="form-group">
                                    <label>Date of Application</label>
                                    <input type="date" class="form-control" id="applydate" name="applydate">
                                    <span id="error_date" class="text-danger"></span>
                                </div>
                                <div align="center">
                                   <button type="button" name="previous_btn_referee_details" id="previous_btn_referee_details" class="btn btn-warning btn-lg">Previous</button>
                                    <button type="button" name="btn_referee_details" id="btn_referee_details" class="btn btn-info btn-lg">Confirm & Submit</button>   
                                </div>
                            </div>
                            </div>
                        </div> 
                </div>
            </form>
             <div class="form-group" id="process" style="display: none">
                    <small>Member application is starting !,Please wait.....</small>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                            
                        </div>
                 </div>
                </div>                            
                 </div>
                       
                    </div> 
                                 
              </div>
            </div>
           </main>
            </div>
<script>
     $(document).ready(function(){
            function calc() {
               $('#paystatus').text('NOT PAYED');  
              var save = $("#servingpay").val();
              var pay =  $("#payed_amount").val();   
              var remain = save - pay;
              if(remain === 0){
                  var paid = "PAID";
                   var t2 = '<input type="hidden" id="servingpay" name="loan_ap_status" value="'+paid+'">';
                  $('#paystatus').text(paid);
                  $('#paystatus2').html(t2);
                   document.getElementById('btn_income_details').disabled = false;
                  
              }
              else if(remain < 0){
                  var paid = "Processing rejected, amount required to pay is TSH '"+save+"' /= Only";
                   $('#paystatus').text(paid);
                  document.getElementById('btn_income_details').disabled = true;
                  
              }
              else{
                   var paid = "PENDING";
                  $('#paystatus').text(paid);
                   document.getElementById('btn_income_details').disabled = false;
                    var t2 = '<input type="hidden" id="servingpay" name="loan_ap_status" value="'+paid+'">';
                     $('#paystatus2').html(t2);
              }
             
          }
           $(".payed_amount").keyup(function() {
                calc();
         });
         $(document).on('change','.loan_type_view', function(){
        var loan_type = $("#loan_type_view").val();
        //alert(loan_type);
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
    $('#btn_applicant_details').click(function(){
        var error_lplan ='';
        var error_member ='';
        var error_ltype ='';
        var error_lamount ='';

        if($.trim($('#newloanplan').val()).length === 0){
            error_lplan = 'Loan Plan can not be Empty';
            $('#error_lplan').text(error_lplan);
            $('#newloanplan').addClass('has-error');
        }
        else{
            error_member = '';
            $('#error_lplan').text(error_member);
            $('#newloanplan').removeClass('has-error');
        }
        //Fbane
         if($.trim($('#member_name').val()).length === 0){
            error_member = 'Select loan applicant member';
            $('#error_member').text(error_member);
            $('#member_name').addClass('has-error');
        }
        else{
            error_member = '';
            $('#error_member').text(error_member);
            $('#member_name').removeClass('has-error');
        }
        //End
        //Lname
         if($.trim($('#loan_type_view').val()).length === 0){
            error_ltype = 'Loan type can not be Empty';
            $('#error_ltype').text(error_ltype);
            $('#loan_type_view').addClass('has-error');
        }
        else{
            error_ltype = '';
            $('#error_ltype').text(error_ltype);
            $('#loan_type_view').removeClass('has-error');
        }
        //lname END
        //Phone number 
         var phone = /^[0-9]*$/;
      var phone2 = $('#lamount').val();
      var phone3 = $('#lamount').val().length;
     
     
      if(phone.test(phone2) && phone2 !== ''){
         error_lamount = '';
            $('#error_lamount').text(error_lamount);
            $('#lamount').removeClass('has-error');
      }
      
      else{
         error_lamount = 'Please indicate loan amount';
            $('#error_lamount').text(error_lamount);
            $('#lamount').addClass('has-error');
      }
        // End 
        if(error_member !=='' || error_lplan !==''|| error_ltype !==''|| error_lamount !==''){
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
            
            var amount = $('#lamount').val();
             var t2 = '<input type="hidden" id="totalpayable" name="totalpayable" value="'+amount+'">';
            $('#amount2').html(t2);
            $('#business_name').html(amount);
            
             var serving = $('#lamount').val();
             var ten = serving *( 10/100);
             var t2 = '<input type="hidden" id="servingpay" name="servingpay" value="'+ten.toFixed(0)+'">';
            $('#business_income2').html(t2);
            $('#business_income').html(ten.toFixed(0));
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
        var error_payed_amount='';
        var error_payed_stutas ='';
     
        if($.trim($('#business_name').text()).length === 0){
            error_first_name ='Enter Your Business Name';
            $('#error_business_name').text(error_first_name);
            $('#business_name').addClass('has-error');
        }
        else{
            error_first_name = '';
            $('#error_business_name').text(error_first_name);
            $('#business_name').removeClass('has-error');
        }
      if($.trim($('#business_income').text()).length === 0){
          error_last_name = 'Business Approximation Income amount kis required';
          $('#error_income_amount').text(error_last_name);
          $('#business_income').addClass('has-error');
          
      }
      else{
         error_last_name = '';
         $('#error_income_amount').text(error_last_name);
         $('#business_income').removeClass('has-error');
      }
       if($.trim($('#payed_amount').val()).length === 0){
          error_payed_amount = 'Payment can not be Empty! please initialize 0 if no any deduction made';
          $('#error_payed').text(error_payed_amount);
          $('#payed_amount').addClass('has-error');
          
      }
      else{
          error_payed_amount= '';
         $('#error_payed').text(error_payed_amount);
         $('#payed_amount').removeClass('has-error');
      }
       if($.trim($('#paystatus').text()).length === 0){
          error_payed_stutas = 'Please select Status before to continue';
          $('#error_status').text(error_payed_stutas);
          $('#paystatus').addClass('has-error');
          
      }
      else{
          error_payed_stutas= '';
         $('#error_status').text(error_payed_stutas);
         $('#paystatus').removeClass('has-error');
      }
      if(error_first_name !=='' || error_last_name !== '' ||  error_payed_amount !== '' || error_payed_stutas !==''){
          
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
        var error_date ='';
        
        if($.trim($('#applydate').val()).length===0){
            error_date = 'Pick date of application';
            $('#error_data').text(error_date);
            $('#applydate').addClass('has-error');
            
        }
        else{
             error_date ='';
            $('#error_date').text(error_date);
            $('#applydate').removeClass('has-error');
             
           
        }
        if(error_date !== ''){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms2').html(error);
                  setTimeout(function(){
                    document.getElementById('sms2').innerHTML='';
                },4000);
                return false;
        }
        else{
         
          $.ajax({
            url:"controller.jsp?page=loan_giving&operation=apply",
            methode:"POST",
            data:$('#member_apply_loan').serialize(),
             beforeSend: function(){
                        $('#btn_referee_details').attr('disabled','disabled');
                        $('#process').css('display','block');
                    },
            success: function(data){
                
                  var percentage = 0;
                       var timer = setInterval(function(){
                           percentage = percentage +20;
                           progress_bar_process(percentage, timer);
                       },1000);
                      
                     
                
               }

              
            });


        };
    });
     function progress_bar_process(percentage, timer){
           $('.progress-bar').css('width', percentage + '%');
           if(percentage > 100){
               clearInterval(timer);
               $('#member_apply_loan')[0].reset();
               $('#process').css('display','none');
               $('.progress-bar').css('width','0%');
               $('#btn_referee_details').attr('disabled',true);
               $('#sms2').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Data saved successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
               setTimeout(function(){
                   $('#sms2').html('');
                    alert("Exit to view  recorde");
                     location.reload();
               },1000);
           }
       }
</script>

   