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
                        <a href="#" ><span class="fa fa-users"></span><span>Member Registration</span><span class="fa fa-chevron-down first"></span></a>
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
                        <a href="#" class="active"><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
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
            
            <div class="main-body-menus">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>NEW LOAN GROUP APPLICATION FORM </span>  
                    </div>
                    <div class="panel-1-body">
                      <div class="box">
                <form method="POST" id="Group_apply_loan">
               
                <ul class="nav nav-tabs">
                    
                    <li class="nav-item">
                        <a class="nav-link active_tab1" style="border: 1px solid #ccc" id="list_applicant_details">Group Loan Details</a>
                    </li>
                    <li class="nav-item">
                        <a class ="inactive_tab1" id="list_income_details" style="border: 1px solid #ccc">
                            Group members beneficially
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
                                    <label>Group Name [Borrower] <span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control" id="group_name" name="group_name">
                                        <option></option>
                                        <%
                                     ArrayList list2=AD.Print_Group_Details();
                                     for(int i=0; i<list2.size(); i++){
                                     loan_group_details mb = (loan_group_details)list2.get(i);
                                 %>
                                 <option id="<%=mb.getGroupID()%>" value="<%=mb.getGroupID()%>"><%=mb.getGroupName()%></option>
                                 <%}%>
                                    </select>
                                    <span id="error_member" class="text-danger"></span>
                                </div>
                                    
                                    <p id="gid2"></p>
                                  <div class="form-group">
                                    <label>Loan Type<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <select class="form-control loan_type_view" name="Gtype" id="loan_type_view">
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
                                    <select class="form-control" id="newloanplan" name="Gplan">
                                        <option></option>
                           
                                    </select>
                                    <span id="error_lplan" class="text-danger"></span>
                                </div>
                                
                               
                                <div class="form-group">
                                    <label>Loan request Amount<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <input type="number" name="Gamount" id="lamount" class="form-control">
                                     <span id="error_lamount" class="text-danger"></span>
                                </div>
                               
                                
                                <br>
                                <div align="center">
                                    <button type="button" name="btn_applicant_details" id="btn_applicant_details" class="btn btn-info btn-lg group_app_dtls">Continue Next step</button>
                                </div>
                            </div>
                        </div>
                    </div>
                <script>
                    $(document).ready(function(){
                        $('#group_name').change(function(){
                       var id = $(this).find(':selected')[0].id;
                       var group = $("#group_name").val();
                      $('#gid').html(id);
                       var t2 = '<input type="hidden" id="group_loan_id" name="group_loan_id" value="'+id+'">';
                        $('#gid2').html(t2);
                   });
                        
                    });

                </script>
                 <script>
                    $(document).ready(function(){
                        var tt = Date.now()+(Math.random().toFixed()*1000);
                        var t5=  Math.floor(800000000+Math.random()*900000000);
                    $('#unid').html(t5); 
                    var t2 = '<input type="hidden" class="givo1" name="Ginvoice" value="'+t5+'">';
                   $('#unid_2').html(t2);
                  // alert(t2);
                    });
                   
                </script>
                    <div class="tab-pane fade" id="income_details">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span style="color:  #006666"> <span style="color: #cc0000; font-weight: bold; font-size: 18px;">Step 02::</span> &nbsp;&nbsp;
                                List of loan group members who will be offered this loan
                            </div>
                            <div class="panel-body">
                                <div id="sms1"></div>
                                 <div class="form-group">
                                   <p style="color: #006666; padding: 1rem; font-weight: bold; background: #f0f0f0" id="unid"></p>
                                                 <p id="unid_2"></p>
                                </div>
                                <div class="form-group">
                                    <label>Amount requested<span style="color:  #ff0000; font-size: 18px;">*</span></label>
                                    <p id="business_name" class="form-control"></p>
                                    <span id="error_business_name" class="text-danger"></span>
                                </div>
                                <div class="form-group" id="amount2">
                                        
                                    </div>
                                <div class="group_mb"></div>
                               
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
                                    <input type="date" class="form-control" id="applydate" name="Gapplydate">
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
                    <small>Application starting,Please wait.....</small>
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
   <div id="members_loan_upload" class="modal fade members_load_upload_new2">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">GROUP MEMBERS LOAN DISTRIBUTION</h4>
                    </div>
                    <div class="modal-body">
                        <div id="membersms"></div>
                        
                         <form method="POST" id="Member_Upload_loan2">
                             <p id="ginvoice2"></p>
                             <p id="MBID"></p>
                             <p id="registrationID"></p>
                              <div class="form-group row">
                            <label for="group_loan_amount" class="col-sm-4 col-form-label">Enter Amount</label>
                            <div class="col-sm-8">
                                <input type="number" id="amount_payed_individual" name="enter_amount" class="form-control">
                            <span id="error_indi_amount" class="text-danger"></span>
                            </div>
                          </div>
                               <div class="form-group row">
                            <label for="group_loan_amount" class="col-sm-4 col-form-label">Serving amount [ 10 % ]</label>
                            <div class="col-sm-8">
                                <p id="group_member_status" class="form-control" style="background: #f0f0f0"></p>
                                <p id="group_member_status_new"></p>
                                <p id="star1"></p>
                                <span id="error_indi_fee" class="text-danger"></span>
                            </div>
                          </div>
                             <div class="form-group row">
                            <label for="group_loan_amount" class="col-sm-4 col-form-label">Enter Payment Amount</label>
                            <div class="col-sm-8">
                                <input type="number"  id="ams_new" name="fees_payed" class="form-control">
                            <span id="error_indi_fee_payed" class="text-danger"></span>
                            </div>
                           
                          </div>
                             <div class="form-group row">
                            <label for="group_loan_amount" class="col-sm-4 col-form-label">Distributed Date</label>
                            <div class="col-sm-8">
                                <input type="date"  id="ams_new" name="distribute_date" class="form-control">
                            <span id="error_indi_fee_payed" class="text-danger"></span>
                            </div>
                           
                          </div>
                               <div class="form-group row">
                            <label for="group_loan_amount" class="col-sm-4 col-form-label">Status</label>
                            <div class="col-sm-8">
                                <p id="group_member_status_new_3" class="form-control" style="background: #009999; color:  #ffff00; font-weight:  bold"></p>
                               
                                <p id="star2"></p>
                                <span id="error_indi_status" class="text-danger"></span>
                            </div>
                          </div>
                            <input type="submit" name="insert" id="Member_Upload_loan3" value="Upload Loan Amount " class="btn btn-success"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
          
        </div>
    <script>

    </script>
         <div id="members_loan_prieviw" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN DISTRIBUTION PREVIEW</h4>
                    </div>
                    <div class="modal-body">
                        <div id="ml_pr" class="ml_pr"></div> 
                       
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div> 
    <div id="members_loan_delete" class="modal fade delete_loan_member">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">Warning!!</h4>
                    </div>
                    <div class="modal-body">
                        <div class="deletesms"></div>
                       <span>Are you sure you want to delete this record ?</span></br>
                        <form id="delete_member_loan_final">
                            <p id="dmid"></p>
                            <br>
                           <input type="submit" id="delete_loan" class="btn btn-success" value="Delete">
                        </form>
                        
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
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
         if($.trim($('#group_name').val()).length === 0){
            error_member = 'Select group laon applicant';
            $('#error_member').text(error_member);
            $('#group_name').addClass('has-error');
        }
        else{
            error_member = '';
            $('#error_member').text(error_member);
            $('#group_name').removeClass('has-error');
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
       
     
          $('#list_income_details').removeClass('active active_tab1');
          $('#list_income_details').removeAttr('href data-toggle');
          $('#income_details').removeClass('active');
          $('#list_income_details').addClass('inactive_tab1');
          $('#list_referee_details').removeClass('inactive_tab1');
          $('#list_referee_details').addClass('active_tab1 active');
          $('#list_referee_details').attr('href','#referee_details');
          $('#list_referee_details').attr('data-toggle', 'tab');
          $('#referee_details').addClass('active in');

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
            url:"controller.jsp?page=loan_group_giving&operation=apply",
            methode:"POST",
            data:$('#Group_apply_loan').serialize(),
             beforeSend: function(){
                        $('#btn_finish_details').attr('disabled','disabled');
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
        }
    });
     function progress_bar_process(percentage, timer){
           $('.progress-bar').css('width', percentage + '%');
           if(percentage > 100){
               clearInterval(timer);
               $('#Group_apply_loan')[0].reset();
               $('#process').css('display','none');
               $('.progress-bar').css('width','0%');
               $('#btn_referee_details').attr('disabled',true);
               $('#sms2').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong>Loan application completed successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
               setTimeout(function(){
                   $('#sms2').html('');
                    alert("Exit to view  recorde");
                     location.reload();
               },1000);
           }
       }
</script>
<script>
    $(document).ready(function(){
     $('.group_app_dtls').click(function(){
      var gid = $('#group_loan_id').val();
      //alert(gid);
       $.ajax({
           url:'group-member-list.jsp',
           methode:'POST',
          data:{gid:gid},
         success:function(data){
              //$('#view_bill_list').modal('show');
             $('.group_mb').html(data);
          }
       });
   });   
    });
</script>
<script>
 function calc() {
           var amount = $('#amount_payed_individual').val();
           var serving = ((10/100)*amount);
                  $('#group_member_status').html(serving.toFixed(0));
                 var REG = '<input type="hidden" id="gms" name="gms" value="'+ serving.toFixed(0)+'">';
                 $('#group_member_status_new').html(REG);

             
        }
           $("#amount_payed_individual").keyup(function() {
            calc();
   });
 function calc8() {
      var amount = $('#ams_new').val();
         var  fees = $('#gms').val(); 
           var remain = fees - amount;
           if(remain.toFixed(0)<=0){
           var status = 'PAID';  
              $('#group_member_status_new_3').html(status);
               var star1 = '<input type="hidden" id="starters" name="starter" value="'+status+'">';
               $('#star2').html(star2);$('#star2').html(star1);
           }else{
                var status1 = 'PENDING';
                $('#group_member_status_new_3').html(status1);
                
                 $('#group_member_status_new_3').html(status);
               var star2 = '<input type="hidden" id="starter" name="starter" value="'+status1+'">';
               $('#star2').html(star2);
           }
          
           }
           $("#ams_new").keyup(function() {
          calc8();
   });
 </script>
   
   