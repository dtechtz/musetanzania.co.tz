<%@page import="Classes.loan_type"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
                        <a href="menu-panel.jsp?load=00060_ln_pl" class="active"><span class="fa fa-sliders"></span><span>Loan Plan</span><span></span></a>
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
             <%
              if(request.getParameter("plan-type-edit")==null){
              %>
            <div class="main-body-2">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>LOAN PLAN ENTRY</span>  
                    </div>
                   
                    <div class="panel-1-body">
                        <div id="plansms"></div>
                        <form id="add_loan_type">
                             <input type="hidden" name="page" value="loan_plan">
                             <input type="hidden" name="operation" value="add_plan">
                             <div class="form-group">
                                 <label>LoaN Type</label>
                                 <select class="form-control" id="loantype" name="loantype">
                                     <option></option> 
                                      <%
                                     ArrayList list7=AD.Print_Loan_Type();
                                     for(int i=0; i<list7.size(); i++){
                                      loan_type tp = (loan_type)list7.get(i);
                                     %>
                                     <option value="<%=tp.getLoanID()%>"><%=tp.getLoanType()%></option>
                                    <%}%>
                                 </select>
                                 <span id="error_type" class="text-danger"></span>
                             </div>
                                 <div class="form-group">
                                     <label>Loan Duration [Month]</label>
                                     <input type="number" class="form-control" autocomplete="off" id="plan_day" name="plan">
                                     <span id="error_days" class="text-danger"></span>
                               </div>
                                 <div class="form-group">
                                     <label>Interest [ % ]</label>
                                     <input type="text" class="form-control" autocomplete="off" id="interestid" name="interest" >
                                     <span id="error_interest" class="text-danger"></span>
                               </div>
                                 <div class="form-group">
                                     <label>Penalty [ % ]</label>
                                     <input type="text" class="form-control" autocomplete="off" readonly="true" value="0" id="penaltyid" name="penalt">
                                     <span id="error_penalty" class="text-danger"></span>
                               </div>
                           
                                 <input type="submit" value="Create"  class="btn btn-success form-control">
                     </form>      
                
                    </div> 
                       
              </div>
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>Loan plan List</span>
                    </div>
                    <div class="panel-2-body">
                        <div id="plan_delete"></div>
                        <table class="table" id="tbplan" >
                            <thead>
                            <th>S/N</th>
                            <th>Reg#</th>
                            <th>Loan Plan</th>
                            <th>Action</th>
                           
                            </thead>
                            <tbody>
                                 <%
                                     ArrayList list=AD.Print_Loan_Plan();
                                     for(int i=0; i<list.size(); i++){
                                     loan_plan lp = (loan_plan)list.get(i);
                                     %>
                                <tr>
                                    <td></td>
                                    <td class="planid"><%=lp.getLoan_Plan_ID()%></td>
                                    <td>
                                       <div class="rt">
                                        <ul>
                                            <li><span>Days:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span style="font-weight: bold" class="planname"> <%=lp.getLoanPlanMonths()%></span></li>
                                            <li><span>Interest :&nbsp;&nbsp;::&nbsp;&nbsp; </span><small style="font-weight: bold" class="interest"><%=lp.getLoanPlanInterest()%></small> &nbsp;&nbsp; %</li>
                                            <li><span>Over due Penalty :&nbsp;&nbsp;::&nbsp;&nbsp;</span><small style="font-weight: bold" class="penalty"><%=lp.getLoanPlanPenalty()%></small> &nbsp;&nbsp; %</li>
                                            
                                        </ul>
                                        </div>
                                    </td>
                                     <td>
                                            <a href="#" data-toggle="modal"  data-target="#loan_type_edit" class="btn btn-warning loan_type_edit_new"><span class="fa fa-pencil-square-o">&nbsp;Update</span></a>
                                            <a href="#"   class="btn btn-danger loan_plan_delete"><span class="fa fa-trash">&nbsp;Remove</span></a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                            
                           <script>
                      $(document).ready(function() {
                $('#tbplan').DataTable({
                    dom: 'lBfrtip',
                    buttons:[
                        'print',
                        'excel',
                        'pdf'
                    ]
                });
                 } );
               </script>
                <script>
                          $(document).ready(function(){
                              
                            $('.loan_plan_delete').on('click',function(){
                                event.preventDefault();
                               var ref = $(this).closest('tr').find('.planid').text();
                              $.ajax({
                                  url:'controller.jsp?page=loan_plan&operation=Delete',
                                  methode:'POST',
                                  data:{ref:ref},
                                  success:function(){
                                     var error ='<div class="alert alert-success">Loan Plan deleted  successfully</div>';
                                    $('#plan_delete').html(error);
                                    setTimeout(function(){
                                      document.getElementById('plan_delete').innerHTML='';
                                        location.reload();
                                  },3000);  
                                  }
                              }); 
                            });  
                          });
                      </script>
                    </div>
                   </div>
            
            </div>
          <div id="loan_type_edit" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">LOAN PLAN UPDATING</h4>
                    </div>
                    <div class="modal-body">
                        <div id="ltsms"></div>
                         <form method="POST" id="update_loan_plan_new">
                             <p id="planid"></p>
                             <div class="form-group">
                                 <label>Enter Loan Type</label>
                                 <p id="loan_types"></p>
                             </div>
                             <div class="form-group">
                                 <label>Enter Loan description</label>
                                 <p id="desc_types"></p>
                             </div>
                             <div class="form-group">
                                 <p id="pena"></p> 
                             </div>
                            
                           <input type="submit" name="insert" id="dloan" value="Update loan Plan" class="btn btn-success form-control"/>
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
            //event.preventDefault();
            $('.loan_type_edit_new').on('click',function(){
                var ref = $(this).closest('tr').find('.planid').text();
                
                var planname = $(this).closest('tr').find('.planname').text();
               var interest = $(this).closest('tr').find('.interest').text();
                var penat = $(this).closest('tr').find('.penalty').text();
               var t2 = '<input type="text" id="ivoice" name="lnppena" class="form-control" value="'+planname+'">';
               $('#loan_types').html(t2);
               
                var dd3 = '<input type ="text" id="ivoice66"  name="lnint" class="form-control" value="'+interest+'">';
                $('#desc_types').html(dd3);
                var id = '<input type="hidden" id="ivoice" name="lnid" class="form-control" value="'+ref+'">';
               $('#planid').html(id);
                var idr = '<input type="hidden" id="ivoice888" name="lnpen" class="form-control" value="'+penat+'">';
               $('#pena').html(idr);
            });
            $('#update_loan_plan_new').on('submit', function(){
                event.preventDefault();
                $.ajax({
                    url:'controller.jsp?page=loan_plan&operation=update',
                    methode:'POST',
                    data:$('#update_loan_plan_new').serialize(),
                    success:function(){
                         var error ='<div class="alert alert-success">Loan Plan Updated  successfully</div>';
                                    $('#ltsms').html(error);
                                    setTimeout(function(){
                                      document.getElementById('ltsms').innerHTML='';
                                        location.reload();
                      },3000);
                    }
                });
            });
            
        });
        </script>
          
          <%}else {%>
          <div class="main-body-2">
                
            
            </div>
          <%}%>
            </main>
        </div>
    <script>
        $(document).ready(function(){
        $('#add_loan_type').on('submit',function(){
            event.preventDefault();
        var error_type ='';
        var error_days ='';
        var error_interest ='';
        var error_penalty ='';
        var error_gender ='';

        if($.trim($('#loantype').val()).length === 0){
            error_type = 'Please indicate type of loan';
            $('#error_type').text(error_type);
            $('#loantype').addClass('has-error');
        }
        else{
            error_type = '';
            $('#error_mname').text(error_type);
            $('#loantype').removeClass('has-error');
        }
         if($.trim($('#plan_day').val()).length === 0){
            error_type = 'Please Enter loan Duration';
            $('#error_days').text(error_type);
            $('#plan_day').addClass('has-error');
        }
        else{
            error_type = '';
            $('#error_days').text(error_type);
            $('#plan_day').removeClass('has-error');
        }
         if($.trim($('#interestid').val()).length === 0){
            error_type = 'Please Enter Enterest to be payed for this loan type';
            $('#error_interest').text(error_type);
            $('#interestid').addClass('has-error');
        }
        else{
            error_type = '';
            $('#error_interest').text(error_type);
            $('#interestid').removeClass('has-error');
        }
          if($.trim($('#penaltyid').val()).length === 0){
            error_type = 'Penalty Field can no be Empty';
            $('#error_penalty').text(error_type);
            $('#penaltyid').addClass('has-error');
        }
        else{
            error_type = '';
            $('#error_penalty').text(error_type);
            $('#penaltyid').removeClass('has-error');
        }

        if(error_type !=='' || error_days !==''|| error_interest !==''|| error_penalty !==''){
              var error ='<div class="alert alert-danger">Sorry!! Data not inserted</div>';
                  $('#plansms').html(error);
                  setTimeout(function(){
                    document.getElementById('plansms').innerHTML='';
                },4000);
            
            return false;
        }
        else{
             $.ajax({
                  url:'controller.jsp?page=loan_plan&operation=add_plan',
                  methode:'POST',
                  data:$(this).serialize(),
                  success:function(data){
                      if(data){
                    var error ='<div class="alert alert-success">Loan plan Details Registered successfully</div>';
                  $('#plansms').html(error);
                  setTimeout(function(){
                    document.getElementById('plansms').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000); 
                      }else{
                    var error ='<div class="alert alert-danger">Sorry , loan plan registration failed please try again!!</div>';
                  $('#plansms').html(error);
                  setTimeout(function(){
                    document.getElementById('plansms').innerHTML='';
                },1000);
                }
               }
              });
        } 
        
    });              
    });
</script>
