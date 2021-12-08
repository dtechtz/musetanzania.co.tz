<%@page import="Classes.return_amount_2"%>
<%@page import="Classes.loan_payment_view_2"%>
<%@page import="Classes.loan_payment_view"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
                <table width="100%" class="table" id="example1">
                    <thead style="align-items: center">
                  <th>S/N</th>
                  <th>MEMBER DETAILS</th>
                  <th>LOAN COLLECTION DETAILS</th>
                  <th>AMOUNT RETURNED</th>
                  <th>STATUS</th>
                  <th>ACTION</th>
                  </thead>
                            <tbody>
                                 <%
                                     ArrayList list4=AD.Print_Loan_List_Released();
                                     for(int i=0; i<list4.size(); i++){
                                     loan_giving lg = (loan_giving)list4.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Name:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getFname_collection()%>&nbsp;&nbsp;<%=lg.getLname()%></span></li>
                                            <li><span>Reg_ID #:&nbsp;&nbsp;::&nbsp;</span><span class="regid"><%=lg.getBorrowerID_collection()%></span></li>
                                            <li><span>Contact No:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getPhoneNumber_collection()%></span></li>
                                           
                                        </ul>
                                        </div>
                                        
                                    </td>
                                    <td>
                                        <div class="rt">
                                        <ul>
                                            <li><span>Loan A/C #:;&nbsp;::&nbsp;&nbsp;</span><span  class="b_id"><%=lg.getInvoice_collection()%></span></li>
                                            <li><span>Loan ID #:;&nbsp;::&nbsp;&nbsp;</span><span class="loanid"><%=lg.getLoanID()%></span></li>
                                            <li><span>Loan Type:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getLoanType_collection()%></span></li>
                                            <li><span>Loan Plan:</span><span>&nbsp;&nbsp;::&nbsp;&nbsp;<%=lg.getLoanPlanName_collection()%> &nbsp;month / s [<%=lg.getLoanInterest_collection()%>&nbsp; % ,<%=lg.getLoanPenalty_collection()%>&nbsp;%]</span></li>
                                            <li><span>Amount requested:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span><%=lg.getLoanAmount_collection()%> &nbsp;</span>/=</li>
                                            <li><span>Amount returnable:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="pure_request" id="pure_request"><%=lg.getTotalPayWithInterest_collection()%> &nbsp;</span>/=</li>
                                           <li><span>Released date:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="ask_amount"><%=lg.getDateApprove_collection()%> &nbsp;</span></li>
                                           <li><span>End of Return:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="ask_amount"><%=lg.getDateExpire_collection()%> &nbsp;</span></li>
                                          <li><span>Loan Duration:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="dayss"><%=lg.getLoanPlanName_collection()%> &nbsp;</span>Days</li>
                                         <li><span>Day per installment:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="deyi"><%=lg.getweeklydayscollection()%>&nbsp;</span>Days</li>
                                        </ul>
                                        </div>
                                    </td>
                                    <td><span>Total(TSH):&nbsp;&nbsp;</span><span  class="payed"><%=lg.getPayable()%></span>&nbsp;&nbsp; /=
                                        <br>
                                        <br>
                                        <li><span>Collection </span>&nbsp;&nbsp;::&nbsp;&nbsp;<span><%=lg.getweeklycollection()%> &nbsp;</span></li>
                                        <br>
                                        <li><span>Collection </span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="next"><%=lg.getNext_Day_Of_collection()%></span> &nbsp;</li>
                                    </td>
                                   
                                   
                                    <td>
                                    
                                        <div class="loan-status">
                                            <span><a href="" style=""><%=lg.getLoanStatus()%></a></span> 
                                        </div>
                                  
                                    </td>
                                   
                                    <td>
                                            <a href="#" data-toggle="modal" data-target="#update_Loan_disbursement" id="sss" class="disburse_update btn btn-success"><span class="fa fa-money">&nbsp;&nbsp;Collect Loans...</span></a><br><br>
                                            <a href="" data-toggle="modal" data-target="#loan_serving_2" class="btn btn-info serving"><span class="fa fa-eye"> &nbsp;&nbsp;Serving Listing</span></a><br><br>
                                            <a href="" data-toggle="modal" data-target="#loan_collection" class="btn btn-warning loan_collection_histtory"><span class="fa fa-eye"> &nbsp;&nbsp;Transaction List</span></a>
                                    </td>
                                </tr>
                                
                                <%}%>
                              
                            </tbody>
                        </table>
                                
                    <script>
                      $(document).ready(function() {
          $('#example1').DataTable();
        $('.serving_update').on('click', function(){
         // INVOICE  ID 
       var bill_id = $(this).closest('tr').find('.b_id').text();
        $('#loan_bill_id').html(bill_id);
       var t2 = '<input type="hidden" id="invoice_repay" name="invoice_repay" value="'+bill_id+'">';
        $('#loan_bill_id_2').html(t2);
        
        // END OF INVOICE ID 
        // CLIENT ID
        var Reg_id = $(this).closest('tr').find('.regid').text();
       $('#client_id').html(Reg_id);
       var t2 = '<input type="hidden" id="invoice_repay" name="regid_repay" value="'+Reg_id+'">';
        $('#client_id_2').html(t2);
        // END OF CLIENT ID 
      });  
      
     
           } );
               </script>

               <div id="update_Loan_disbursement" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN COLLECTION</h4>
                    </div>
                    <div class="modal-body">
                       
                        <div id="loansms4"></div>
                         <form method="POST" id="loan_pay_disbursement">
                             <p id="userid"></p>
                             <p id="loanid"></p>
                            
                           <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Loan Ref: #</label>
                            <div class="col-sm-8">
                              <p id="INV" class="form-control" style="background:  #f0f0f0"></p>
                                  <p id="INV1"></p>
                            </div>
                          </div>
                              <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Loan + Interest</label>
                            <div class="col-sm-8">
                              <p id="lint" class="form-control" style="background:  #f0f0f0"></p>
                               <p id="deyi"></p>
                            </div>
                          </div>
                              <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Loan Duration (Days)</label>
                            <div class="col-sm-8">
                              <p id="DY" class="form-control" style="background:  #f0f0f0"></p>
                               <p id="deyi"></p>
                            </div>
                          </div>
                           
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Next Collection Date</label>
                            <div class="col-sm-8">
                              <p id="end_date" class="form-control"></p>
                            </div>
                          </div>
                            <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb"></label>
                            <div class="col-sm-8">
                              <p id="penaltyday"  class="form-control" style="background:  #f0f0f0"></p>
                                  <p id="pena2"></p>
                                  <p id="exp"></p>
                                  <span id="error_loan_penaltyday" class="text-danger"></span>
                            </div>
                            
                          </div>
                            
                            <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Returnable Loan Amount</label>
                            <div class="col-sm-8">
                              <p id="PURE_M" class="form-control" style="background: #006666; color:  #ffff00; font-weight: bold; font-size: 18px;"></p>
                                  <span id="error_pay_save" class="text-danger"></span>
                            </div>
                          </div>  
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Collection installment</label>
                            <div class="col-sm-8">
                              <p id="installment"  class="form-control" style="background:  #f0f0f0"></p>
                                  <span id="error_loan_order" class="text-danger"></span>
                            </div>
                          </div>
                         <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Collection  per installment</label>
                            <div class="col-sm-8">
                              <p id="apsm" class="form-control" style="background:  #f0f0f0"></p>
                                  <span id="error_loan_order" class="text-danger"></span>
                            </div>
                          </div>
                          
                          <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Total Loan Collected</label>
                            <div class="col-sm-8">
                              <p id="RIT"></p>
                            </div>
                          </div> 
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Total Loan Collected</label>
                            <div class="col-sm-8">
                               <p id="RIT1"></p>
                            </div>
                          </div> 
                          <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Enter Return amount</label>
                            <div class="col-sm-8">
                              <input type="text" name="loan_disburse1" autocomplete="off" id="loan_disburse1" class="form-control">
                                  <span id="error_loan_disburse" class="text-danger"></span>
                            </div>
                          </div> 
                        <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Enter Serving amount [ Not bellow 5000/= ]</label>
                            <div class="col-sm-8">
                              <input type="text" name="loan_serving" autocomplete="off" id="loan_serving" class="form-control">
                                  <span id="error_serving" class="text-danger"></span>
                            </div>
                          </div> 
                            <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Collection Date</label>
                            <div class="col-sm-8">
                              <input type="date" name="Collect_date" autocomplete="off" id="Collect_date" class="form-control">
                                  <span id="error_date" class="text-danger"></span>
                            </div>
                          </div> 
                             <div class="form-group row">
                            <label for="inputPassword" class="col-sm-4 col-form-label" id="lb">Next Collection Date</label>
                            <div class="col-sm-8">
                              <input type="date" name="next_date" autocomplete="off" id="next_date" class="form-control">
                              <span id="error_next_date" class="text-danger"></span>
                            </div>
                          </div> 
                              <div class="form-group">
                                  <label>Loan Status</label>
                                  <p id="return_update_status" class="form-control" style="background:  #006666; color:  #ffff00; font-weight:  bold"></p>
                                  <p id="return_update_status1"></p>
                                  <span id="error_laon_status" class="text-danger"></span>
                              </div>
                            <input type="submit" name="insert" id="loan_disburse_loan" value="Click me to Collect loan " class="btn btn-success form-control"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
            
                
              <script>
                   $(document).ready(function(){
                    $('.disburse_update').on('click',function(){
                   var amount_requested = $(this).closest('tr').find('.lqst').text();
                    var penadays = $(this).closest('tr').find('.dayss').text();
                   var bill_id = $(this).closest('tr').find('.b_id').text();
                   var userid = $(this).closest('tr').find('.regid').text();
                    var loanid = $(this).closest('tr').find('.loanid').text();
                   var amunt = $(this).closest('tr').find('.pure_request').text();
                   var payed = $(this).closest('tr').find('.payed').text();
                    var day = $(this).closest('tr').find('.dayss').text();
                    var day2 = $(this).closest('tr').find('.deyi').text();
                     var lqst = $(this).closest('tr').find('.lqst').text();
                    //date pale
                    var end = $(this).closest('tr').find('.next').text();
                     var exp = '<input type="hidden" id="lipa" name="exp" value="'+end+'">'; 
                     var day1 = new Date(exp); 
                     var todaye = new Date();
                      var dif = todaye.getTime()- day1.getTime();
                      var value = Math.ceil(dif /(1000 * 3600 *24));
                      $('#penaltyday').html(value);
                     //end date 
                     //processing fee
                     var ttr = penadays/30;
                    
                     var pena2 = '<input type="hidden" id="lipa" name="pena2" value="'+value+'">';
                     $('#pena2').html(pena2);
                     var pena3 = $('#penaltyday').text();
                     // end penalt
                     var t1 = '<input type="hidden" id="lipa" name="lipa" value="'+day2+'">';
                     var t2 = '<input type="hidden" id="lipa" name="returned" value="'+payed+'">';
                     var INV1 = '<input type="hidden" id="lipa" name="member_user_bill" value="'+bill_id+'">';
                     var t4 = '<input type="hidden" id="lipa" name="member_user" value="'+userid+'">';
                     var t3 = '<input type="hidden" id="lipa" name="loan_id" value="'+loanid+'">';
                     
                     $('#ps').html(t1);
                      $('#INV').html(bill_id); 
                      $('#INV1').html(INV1);  
                      $('#userid').html(t4); 
                      $('#loanid').html(t3); 
                      $('#RIT').html(payed);
                     $('#RIT1').html(payed);
                    $('#DY').html(day);  
                    $('#deyi').html(t1); 
                     $('#end_date').html(end);
                     $('#exp').html(exp);
                    var  installment = day / day2;
                   $('#installment').html(installment.toFixed(0));
                     if(pena3 < 0){
                          var lb = 'Days left';
                        $('#lb').html(lb);
                     }else{
                         var lb = 'Days Passed';
                        $('#lb').html(lb); 
                     }
                       
                        var ttt = amunt;
                         $('#lint').html(ttt);
                         var retunable = parseFloat(ttt); 
                        $('#PURE_M').html(retunable.toFixed(0)); 
                        // amount per installmeny
                         var amount_per_installment = retunable /installment.toFixed(0);
                         $('#apsm').html(amount_per_installment.toFixed(0));
                        var x = $(this).closest('tr').find('.deyi').text();
                     var t1 = '<input type="hidden" id="lipa" name="lipa" value="'+amount_per_installment+'">';
                        
                        // emd of installment
                       
                                var ttt = amunt;
                                $('#lint').html(ttt);
                             var retunable = parseFloat(ttt); 
                             $('#PURE_M').html(retunable.toFixed(0)); 
                             
                              // amount per installmeny
                               var amount_per_installment = retunable /installment.toFixed(0);
                               $('#apsm').html(amount_per_installment.toFixed(0));
                               var x = $(this).closest('tr').find('.deyi').text();
                               var t1 = '<input type="hidden" id="lipa" name="lipa" value="'+amount_per_installment+'">';
                        
                        //   emd of installment
                             var pena_cent ='<div class="alert alert-success"> No Penalty</div>';
                             var exp_cent = "Penalty percentage";
                             $('#pena_cent').html(pena_cent);
                             $('#exp_cent').html(exp_cent);
                             
                             // statement for no amount added as penalty
                             var am1 = '0.0';
                             $('#apsm_pena').html(am1);

                        
                    });
                   });
       </script>  
          <div id="loan_serving_2" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN COLLECTION HISTORY</h4>
                    </div>
                    <div class="modal-body">
                       
                        <div id="loansms"></div>
                         
                             <div class="group_mb_serving"></div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
             <script>
                   $(document).ready(function(){
                     $('.serving').on('click',function(){
                        var gid = $(this).closest('tr').find('.regid').text();
                       // alert(gid);
                       $.ajax({
                        url:'member_serving.jsp',
                         methode:'POST',
                         data:{gid:gid},
                          success:function(data){
                           //$('#view_bill_list').modal('show');
                          $('.group_mb_serving').html(data);
                       }
                     });
                     });  
                   });
               </script>    
      <script>
           function calc() {
                        
              var request = $('#PURE_M').text();
              var collected = $('#RIT1').text();
              var pay = $('#loan_disburse1').val();
              var todate = (parseFloat(collected) + parseFloat(pay));
              var rs = '<input type="text" id="servingpay" class="form-control" name="uploan_collected_am" value="'+todate+'">';  
              $('#RIT').html(rs);
              var todate2 = (parseFloat(todate)- parseFloat(request));
            
                 //var return_status = '<input type="hidden" id="servingpay" name="loan_ap_status" value="'+paid+'">';
            if(todate2 < 0){
               
               var ss = 'RELEASED';
               $('#return_update_status').html(ss);
               var return_status = '<input type="hidden" id="servingpay" name="alert" value="'+ss+'">';  
            $('#return_update_status1').html(return_status);
            }
            else if(todate2 >= 0){
               var ss1 = 'COMPLETED';
               $('#return_update_status').html(ss1);
                var return_status = '<input type="hidden" id="servingpay" name="alert" value="'+ss1+'">';  
            $('#return_update_status1').html(return_status);
            }
            else{
                 var ss = 'RELEASED';
               $('#return_update_status').html(ss);
               var return_status = '<input type="hidden" id="servingpay" name="alert" value="'+ss+'">';  
            $('#return_update_status1').html(return_status);
            }
           
             
          }
           $("#loan_disburse1").keyup(function() {
                calc();
         });
         
     </script>
      <script>
         $(document).ready(function(){
           $('#loan_pay_disbursement').on('submit',function(){
            event.preventDefault();
           var error_loan_disburse ='';
            var error_serving ='';
           if($.trim($('#loan_disburse1').val()).length === 0){
            error_loan_disburse = 'Please indicate amount to collect';
            $('#error_loan_disburse').text(error_loan_disburse);
            $('#loan_disburse1').addClass('has-error');
         }
        else{
            error_loan_disburse = '';
            $('#error_loan_disburse').text( error_loan_disburse);
            $('#loan_disburse1').removeClass('has-error');
        } 
      if($.trim($('#loan_serving').val()).length === 0 ){
            error_serving = 'No serving amount Uploaded';
            $('#error_serving').text(error_serving);
            $('#loan_serving').addClass('has-error');
         }
         else if(($.trim($('#loan_serving').val()) < 5000)){
              error_serving = 'Serving amount must start from 5000/=';
            $('#error_serving').text(error_serving);
            $('#loan_serving').addClass('has-error');
         }
        else{
            error_serving = '';
            $('#error_serving').text( error_serving);
            $('#loan_serving').removeClass('has-error');
        } 
      
        if(error_loan_disburse !== ''|| error_serving !=='' ){
            
             var error ='<div class="alert alert-danger">Oops! , Some field(s) contain errors! please correct it before to continue</div>';
                  $('#sms3').html(error);
                  setTimeout(function(){
                    document.getElementById('sms3').innerHTML='';
                },4000);
                return false;
        }
        else{
            event.preventDefault();
          $.ajax({
                  url:'controller.jsp?page=loan_giving&operation=collect_loan',
                  methode:'POST',
                  data:$('#loan_pay_disbursement').serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Transaction successfully</div>';
                  $('#loansms4').html(error);
                  document.getElementById('loan_disburse_loan').disabled =true;
                  setTimeout(function(){
                    document.getElementById('loansms4').innerHTML='';
                    document.getElementById('loan_disburse_loan').disabled =false;
                    
                      location.reload();
                },2000);
             
                
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , Transaction  failed please try again!!</div>';
                  $('#loansms4').html(error);
                  setTimeout(function(){
                    document.getElementById('loansms4').innerHTML='';
                      $('#update_serving_amount5').modal('hide');  
                },3000);
                //$('#insert_form1')[0].reset();
                //$('#add_patient').modal('hide');   
                          
                      }
                   
                
               }
              });
         
      }
    });
             
         });
     </script>
      <div id="loan_collection" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN COLLECTION HISTORY</h4>
                    </div>
                    <div class="modal-body">
                       
                        <div id="loansms"></div>
                         
                             <div class="group_mb_amount"></div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
             <script>
                   $(document).ready(function(){
                     $('.loan_collection_histtory').on('click',function(){
                       var gid = $(this).closest('tr').find('.b_id').text(); 
                       //alert(gid);
                        var regid = $(this).closest('tr').find('.member_id').text();  
                       $.ajax({
                        url:'member_transaction_history.jsp',
                         methode:'POST',
                         data:{gid:gid},
                          success:function(data){
                           //$('#view_bill_list').modal('show');
                          $('.group_mb_amount').html(data);
                       }
                     });
                     });  
                   });
               </script> 
               
              </div>
                <%
                    }else if(request.getParameter("confirm-loan").toString().equals("true")){
                 loan_payment_view rtam = AD.Print_Loan_Payment_for_Individual_Single(Integer.parseInt(request.getParameter("Refe")));
                  if(rtam!=null){
                   %>
                
         
                       
                <%}} else{%>
                <%}%>
                </div>
        