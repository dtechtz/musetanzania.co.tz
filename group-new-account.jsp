<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.loan_group_details"%>
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
                        <a href="menu-panel.jsp?load=00050_ln_type"  ><span class="fa fa-gg"></span><span>Loan Type</span><span></span></a>
                    </li>
                    <li>
                        <a href="menu-panel.jsp?load=00060_ln_pl" ><span class="fa fa-sliders"></span><span>Loan Plan</span><span></span></a>
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
             <div class="main-body-2">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>NEW GROUP  ENTRY</span>  
                    </div>
                    
                    <div class="panel-1-body">
                        <div id="group_id"></div>
                        <form id="payment_methode_mode">
                             <input type="hidden" name="page" value="Group_panel">
                             <input type="hidden" name="operation" value="add_group">
                             
                            <div class="form-group">
                                <lable>Group Name</lable>
                                <input type="text" id="type" name="group" placeholder="New Group Name" autocomplete="off" class="form-control">
                           <span id="error_type" class="text-danger"></span>
                            </div>
                          
                        <div class="form-group">
                                <lable>Description</lable>
                                <textarea cols="40" rows="6" name="desc" id="desc" class="form-control"></textarea>
                           <span id="error_desc" class="text-danger"></span>
                        </div><br>
                             <br>
                       
                             <input type="submit" id="create" value="Create" class="btn btn-success form-control">
                     </form>      
                
                    </div> 
                       
              </div>
                 <div id="loan_type_edit" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">PAYMENT METHODE UPDATING</h4>
                    </div>
                    <div class="modal-body">
                        <div id="ltsms"></div>
                         <form method="POST" id="update_loan_type_new">
                             <p id="planid"></p>
                             <div class="form-group">
                                 <label>Group Name</label>
                                 <p id="loan_types"></p>
                             </div>
                             <div class="form-group">
                                 <label>Description</label>
                                 <p id="desc_types"></p>
                             </div>
                            
                           <input type="submit" name="insert" id="dloan" value="Update Payment methode" class="btn btn-success form-control"/>
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
            $('.loan_type_edit_new').on('click',function(){
                var ref = $(this).closest('tr').find('.typeid').text();
                //alert(ref);
                var type = $(this).closest('tr').find('.type_loan').text();
               var desc = $(this).closest('tr').find('.type_desc').text();
               var t2 = '<input type="text" id="ivoice" name="method" class="form-control" value="'+type+'">';
               $('#loan_types').html(t2);
               
                var dd3 = '<textarea id="ivoice"  cols="40" rows="6" name="description" class="form-control">'+desc+'</textarea>';
                $('#desc_types').html(dd3);
                var id = '<input type="hidden" id="ivoice" name="lnid" class="form-control" value="'+ref+'">';
               $('#planid').html(id);
            });
            $('#update_loan_type_new').on('submit', function(){
                event.preventDefault();
                $.ajax({
                    url:'controller.jsp?page=setting&operation=Edit_pay_method',
                    methode:'POST',
                    data:$('#update_loan_type_new').serialize(),
                    success:function(){
                         var error ='<div class="alert alert-success">Payment Updated  successfully</div>';
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
                <div class="panel-2">
                    <div class="panel-2-header-3">
                        <span>Loan plan List</span>
                       
                    </div>
                    <div class="panel-2-body">
                        <table class="table" id="example" >
                            <thead>
                            <th>S/N</th>
                            <th>Group Name</th>
                            <th>Action</th>
                           
                            </thead>
                            <tbody>
                                 <%
                                     ArrayList list=AD.Print_Group_Details();
                                     for(int i=0; i<list.size(); i++){
                                    loan_group_details lp = (loan_group_details)list.get(i);
                                     %>
                                <tr>
                                    <td></td>
                                    <td>
                                       <div class="rt">
                                        <ul>
                                            <li><span>ID#:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span style="font-weight: bold" class="typeid"><%=lp.getGroupID()%></span></li>
                                            <li><span>Group Name: &nbsp;&nbsp;::&nbsp;&nbsp;</span><span style="font-weight: bold" class="type_loan"><%=lp.getGroupName()%> </span></li>
                                            <li><span>Description :&nbsp;&nbsp;:: </span><small style="font-weight: bold" class="type_desc"><%=lp.getGroupDescription()%> </small></li>
                                           
                                            
                                        </ul>
                                        </div>
                                    </td>
                                     <td>
                                         <a href="#" data-toggle="modal"  data-target="#loan_type_edit" class="btn btn-warning loan_type_edit_new"><span class="fa fa-pencil-square-o"></span></a>
                                          <a href="controller.jsp?page=Group_panel&operation=Delete&IDS=<%=lp.getGroupID()%>"  onclick="return confirm('Are you sure  you want to delete  this  record?? Click ok To Delete or Cancel');" class="btn btn-danger"><span class="fa fa-trash"></span></a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                        <script>
                      $(document).ready(function() {
                $('#example').DataTable({
                    dom: 'lBfrtip',
                    buttons:[
                        'print',
                        'excel',
                        'pdf'
                    ]
                });
                 } );
               </script>
                    </div>
                   </div>
            
            </div>
            
            </main>
        </div>
    <script>
            $(document).ready(function(){
                $('#payment_methode_mode').on('submit', function(){
                    event.preventDefault();
                    var error_type ='';
                    var error_type ='';
                    var error_desc ='';
                    var error_penalty ='';
                    var error_gender ='';

                    if($.trim($('#type').val()).length === 0){
                        error_type = 'Enter group name';
                        $('#error_type').text(error_type);
                        $('#type').addClass('has-error');
                    }
                    else{
                        error_type = '';
                        $('#error_type').text(error_type);
                        $('#type').removeClass('has-error');
                    }
                     if($.trim($('#desc').val()).length === 0){
                        error_desc = 'Please Enter Group Duration';
                        $('#error_desc').text(error_desc);
                        $('#desc').addClass('has-error');
                    }
                    else{
                        error_desc = '';
                        $('#error_desc').text(error_type);
                        $('#desc').removeClass('has-error');
                    }



                    if(error_type !=='' || error_desc !==''){

                            $('#insert_form')[0].reset();
                           $('#payid').html("<div class='alert alert-danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                            setTimeout(function()
                           {
                            document.getElementById('payid').innerHTML ='';
                        },4000);  

                        return false;
                    }
     
                    else{
                        $.ajax({
                            url:"controller.jsp?page=Group_panel&operation=add_group",
                            methode:"POST",
                            data:$('#payment_methode_mode').serialize(),
                         
                            success: function(data){
                                if(data){
                                     //$('#insert_form')[0].reset();
                              
                                $('#group_id').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Data saved successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                document.getElementById('create').disabled = true,
                                $('#create').val("please wait!....");
                                setTimeout(function()
                                {
                                 document.getElementById('group_id').innerHTML ='';
                                 document.getElementById('create').disabled = false;
                                 $('#create').val("Create");
                                 alert("Exit to view  recorde");
                                 location.reload();
                             },4000);  
                                }else{
                                   
                                 $('#insert_form')[0].reset();
                                $('#group_id').html("<div class='alert alert-Danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                 setTimeout(function()
                                {
                                 document.getElementById('group_id').innerHTML ='';
                                 alert("Exit to view  recorde");
                                location.reload();
                             },4000);  
                                }
                               
                            }
                            
                            
                        });
                    }
                });
            });
       </script>      