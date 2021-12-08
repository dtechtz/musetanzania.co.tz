
<%@page import="Classes.loan_giving"%>
<%@page import="Classes.group_details"%>
<%@page import="java.util.ArrayList"%>
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
                        <a href="menu-panel.jsp?load=00011_start"  ><span class="fa fa-tachometer"></span><span>Dashboard</span><span></span></a>
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
                        <a href="#" ><span class="fa fa-bar-chart"></span><span>Group Loan Allocation</span><span class="fa fa-chevron-down second"></span></a>
                        <ul>
                            <a href="menu-panel.jsp?load=00070_py_acc"><li><span class="fa fa-users"></span><span>Create New Group</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=0077_group_apply"><li><span class="fa fa-user"></span><span>Start new Application </span><span></span></li></a>
                            <a href="menu-panel.jsp?load=0070_loan_group"><li><span class="fa fa-user"></span><span>Groups waiting for sanction</span><span></span></li></a>
                             <a href="menu-panel.jsp?load=group_loan_disbursment"><li><span class="fa fa-user"></span><span>Loan waiting for Disbursement</span><span></span></li></a>
                               <a href="menu-panel.jsp?load=group_loan_history"><li><span class="fa fa-info"></span><span>Group loan History</span><span></span></li></a>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="#" ><span class="fa fa-money"></span><span>Loan Collection</span><span class="fa fa-chevron-down second"></span></a>
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
                        <a href="#" class="active"><span class="fa fa-cogs"></span><span>General setting</span><span class="fa fa-chevron-down fifth"></span></a>
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
                        <span>CREATE NEW USER ACCOUNT</span>  
                    </div>
                    <div class="panel-1-body">
                        <div id="usersms"></div>
                        <form id="new_user_staff">
                                <div class="form-group">
                                    <label>Pick user</label>
                                    <select name="userID" id="user" class="form-control">
                                    <option></option>
                                    <%
                                     ArrayList list=AD.PrintMemberDetails_To_Add_User();
                                     for(int i=0; i<list.size(); i++){
                                     Users mb = (Users)list.get(i);
                                     %>
                                     <option value="<%=mb.getID()%>"><%=mb.getFname()%> &nbsp;&nbsp;<%=mb.getMname()%> &nbsp;&nbsp;<%=mb.getLname()%></option>
                                    <%}%> 
                                </select>
                                 <span id="error_user" class="text-danger"></span>
                                </div>
                                
                             <div class="form-group">
                                 <label>Username</label>
                                 <input type="text" id="username"autocomplete="off" name="username" class="form-control" placeholder="Enter Username">
                            <span id="error_username" class="text-danger"></span>
                            </div>
                            <br>
                             <div class="form-group">
                                 <label>Create Password</label>
                                 <input type="text" id="password" autocomplete="off" name="pass" class="form-control" placeholder="Generate Password"></span>
                            <span id="error_password" class="text-danger"></span>
                            </div>
                            <br>
                        <div class="form-group">
                                <lable>User Position</lable>
                                <select name="utype"  id="type"class="form-control">
                                <option></option>
                                <option value="Admin">System Admin</option>
                                <option value="Manager">Manager</option>
                                <option value="Officer">Loan Officer</option>
                                <option value="Receptionist">Receptionist</option>
                            </select>
                               <span id="error_type" class="text-danger"></span>
                            </div>
                            
                            <input type="submit" id="create" value="Create Account" class="form-control btn btn-success">
                     </form>      
                
                    </div> 
                                <br>
                          <div class="panel panel-primary">
                         <div class="panel-heading">
                             <span><h5><span style="color:  #ffff00; font-weight: bold"></span></h5></span>
                         </div>
                              <form id="systemactivation">
                                  <div class="form-group">
                                     <label>System Action</label> 
                              
                                  <select class="form-control" id="activatenow" name="systemActivation">
                                  <option class=""></option>
                                   <option value="Active">Open System</option>
                                    <option value="Inactive">Close System</option>
                                </select>
                                     <span id="error_active" class="text-danger"></span>
                                  </div>
                                
                                   <input type="submit" class="btn btn-warning" name="" id="systemaction" value="Perform Action">
                               
                              </form>
                              
                     </div>
              </div>
        <script>
            $(document).ready(function(){
               $('#systemactivation').on('submit', function(){
            event.preventDefault();
           var error_active =''; 
           if($.trim($('#activatenow').val()).length === 0){
            error_active = 'Please System action';
            $('#error_active').text( error_active);
            $('#activatenow').addClass('has-error');
        }
        else{
            error_active = '';
            $('#error_active').text(error_active);
            $('#activatenow').removeClass('has-error');
         }
          if(error_active !==''){
                  
                //$('#insert_form')[0].reset();
               $('#usersms').html("<div class='alert alert-danger alert-dismissible'><strong>Error!</strong> System failed to update <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                setTimeout(function()
               {
                document.getElementById('usersms').innerHTML ='';
            },4000);  
            
            return false;
        }
     
                    else{
                      $.ajax({
                            url:"controller.jsp?page=member_registration&operation=System",
                            methode:"POST",
                            data:$('#systemactivation').serialize(),
                         
                            success: function(data){
                                if(data){
                              
                                $('#usersms').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Data saved successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                document.getElementById('create').disabled = true,
                                $('#systemaction').val("System updating..");
                                setTimeout(function()
                                {
                                 document.getElementById('usersms').innerHTML ='';
                                 document.getElementById('systemaction').disabled = false;
                                 $('#systemaction').val("Perform Action");
                                 alert("Exit to view  recorde");
                                 location.reload();
                             },2000);  
                                }else{
                                   
                                 //$('#insert_form')[0].reset();
                                $('#usersms').html("<div class='alert alert-Danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                 setTimeout(function()
                                {
                                 document.getElementById('usersms').innerHTML ='';
                                 alert("Exit to view  recorde");
                                location.reload();
                             },2000);  
                                }
                               
                            }
                            
                            
                        });  
                    }
           
               }); 
            });

        </script>
               <script>
        $(document).ready(function(){
       $('#new_user_staff').on('submit', function(){
           event.preventDefault();
           var error_user ='';
        var error_username ='';
        var error_password ='';
        var error_type ='';
        var error_gender ='';

        if($.trim($('#user').val()).length === 0){
            error_user = 'Please select user';
            $('#error_user').text( error_user);
            $('#user').addClass('has-error');
        }
        else{
            error_user = '';
            $('#error_user').text(error_user);
            $('#user').removeClass('has-error');
        }
         if($.trim($('#username').val()).length === 0){
            error_username = 'Please Enter Username';
            $('#error_username').text(error_username);
            $('#username').addClass('has-error');
        }
        else{
            error_username = '';
            $('#error_username').text(error_username);
            $('#username').removeClass('has-error');
        }
         if($.trim($('#password').val()).length === 0){
            error_password = 'Create Password';
            $('#error_password').text(error_password);
            $('#password').addClass('has-error');
        }
        else{
            error_password = '';
            $('#error_password').text(error_password);
            $('#password').removeClass('has-error');
        }
        if($.trim($('#type').val()).length === 0){
            error_type = 'Select account type';
            $('#error_type').text(error_type);
            $('#type').addClass('has-error');
        }
        else{
            error_type = '';
            $('#error_type').text(error_type);
            $('#type').removeClass('has-error');
        }

        if(error_user !=='' || error_username !==''|| error_password !==''|| error_type !==''){
                  
                //$('#insert_form')[0].reset();
               $('#usersms').html("<div class='alert alert-danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                setTimeout(function()
               {
                document.getElementById('usersms').innerHTML ='';
            },4000);  
            
            return false;
        }
     
                    else{
                        $.ajax({
                            url:"controller.jsp?page=setting&operation=Add_User",
                            methode:"POST",
                            data:$('#new_user_staff').serialize(),
                         
                            success: function(data){
                                if(data){
                              
                                $('#usersms').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Data saved successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                document.getElementById('create').disabled = true,
                                $('#create').val("Creating..");
                                setTimeout(function()
                                {
                                 document.getElementById('usersms').innerHTML ='';
                                 document.getElementById('create').disabled = false;
                                 $('#create').val("Create Account");
                                 alert("Exit to view  recorde");
                                 location.reload();
                             },2000);  
                                }else{
                                   
                                 //$('#insert_form')[0].reset();
                                $('#usersms').html("<div class='alert alert-Danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                 setTimeout(function()
                                {
                                 document.getElementById('usersms').innerHTML ='';
                                 alert("Exit to view  recorde");
                                location.reload();
                             },2000);  
                                }
                               
                            }
                            
                            
                        });
                    }
                });
            });
            </script>
            
             <div id="loan_type_edit" class="modal fade try">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title alert alert-info">EXPENSES UPDATING</h4>
                    </div>
                    <div class="modal-body">
                        <div id="ltsms"></div>
                         <form id="update_loan_type_new">
                             <p id="planid"></p>
                             
                             <div class="form-group">
                                 <label>User name</label>
                                 <p id="desc_types"></p>
                             </div>
                             <div class="form-group">
                                 <label>Password</label>
                                 <p id="pass"></p>
                             </div>
                             <div class="form-group">
                                 <label>User type</label>
                                 <select name="utype1" class="form-control">
                                <option></option>
                                <option value="Admin">System Admin</option>
                                <option value="Manager">Manager</option>
                                <option value="Officer">Loan Officer</option>
                                <option value="Receptionist">Receptionist</option>
                            </select>
                             </div>
                            
                           <input type="submit" name="insert" id="dloan" value="Update Expenses Category" class="btn btn-success form-control"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
            
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>USER MANAGEMENT LIST </span>
                    </div>
                    <div class="panel-2-body">
                        <table class="table" id="example" >
                            <thead>
                            <th>#</th>
                            <th>User Details</th>
                            <th>Action</th>
                           
                            </thead>
                            <tbody>
                                <%
                                     ArrayList list2=AD.PrintMemberDetails_To_View_User();
                                     for(int i=0; i<list2.size(); i++){
                                     Users pa = (Users)list2.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                       <div class="rt">
                                        <ul>
                                            <li><span>ID#:&nbsp;&nbsp;::&nbsp;&nbsp;</span><span class="typeid"><%=pa.getMemberID_users()%></span></li>
                                            <li><span>User:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=pa.getFname_users()%> &nbsp;&nbsp;<%=pa.gtMname_users()%>&nbsp;&nbsp;<%=pa.gatLname_users()%></span></li>
                                            <li><span>Position:&nbsp;&nbsp;::&nbsp;&nbsp;</span><small style="text-align: center" class="usertype"><%=pa.getUserType()%></small></li>
                                            <li><span>Username:&nbsp;&nbsp;::&nbsp;&nbsp;</span><small style="text-align: center" class="username"><%=pa.getUserName()%></small></li>
                                            <li><span>Password:&nbsp;&nbsp;::&nbsp;&nbsp;</span><small style="text-align: center" class="password"><%=pa.getPassword()%></small></li>
                                            
                                        </ul>
                                        </div>
                                    </td>
                                    <td style="width: 40%">
                                                <a href="" data-toggle="modal"  data-target="#loan_type_edit" class="btn btn-warning loan_type_edit_new"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Edit</span></a>
                                                <a href="controller.jsp?page=setting&operation=Block_User&USERIDD=<%=pa.getUserID_user()%>" class="btn btn-danger" onclick="return confirm('Please confirm User Before to BLOCK');"><span class="fa fa-trash">&nbsp;&nbsp;Delete</span></a>
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
                   </div>
            
            </div>
           
            </main>
        </div>
   <script>
        $(document).ready(function(){
            $('.loan_type_edit_new').on('click',function(){
                var ref = $(this).closest('tr').find('.typeid').text();
                
                var type = $(this).closest('tr').find('.usertype').text();
               var username = $(this).closest('tr').find('.username').text();
                var password = $(this).closest('tr').find('.password').text();
               var t2 = '<input type="text" id="ivoice" name="edtype" class="form-control" value="'+type+'">';
               $('#loan_types').html(t2);
               
                var uname = '<input type="text" id="ivoice" name="username1" class="form-control" value="'+username+'">';
                $('#desc_types').html(uname);
                var id = '<input type="text" id="ivoice" name="lnid1" class="form-control" value="'+ref+'">';
               $('#planid').html(id);
                 var id = '<input type="text" id="ivoice" name="password1" class="form-control" value="'+password+'">';
               $('#pass').html(id);
            });
            $('#update_loan_type_new').on('submit', function(){
                event.preventDefault();
                $.ajax({
                    url:'controller.jsp?page=setting&operation=Update_User',
                    methode:'POST',
                    data:$('#update_loan_type_new').serialize(),
                    success:function(){
                         var error ='<div class="alert alert-success">Expenses Updated  successfully</div>';
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