 <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.loan_type"%>
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
                        <a href="menu-panel.jsp?load=00050_ln_type" class="active"><span class="fa fa-gg"></span><span>Loan Type</span><span></span></a>
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
              if(request.getParameter("plan-edit")==null){
              %>
  
            <div class="main-body-2">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>NEW LOAN TYPE ENTRY</span>  
                    </div>
                    <div class="panel-1-body">
                         
                        
                        <form id="insert_form">
                           
                             <div class="panel-1-header">
                                 <span id="message" style="background:  #006666;"></span>
                             </div>
                             
                            <input type="hidden" name="page" value="loan_type">
                             <input type="hidden" name="operation" value="add_type">
                             
                             <div class="form-group">
                                 <label>
                                     Enter Loan Type
                                 </label>
                                 <input type="text" name="type" id="type" autocomplete="off" class="form-control">
                              <span id="error_type" class="text-danger"></span>
                             </div> 
                              <div class="form-group">
                                 <label>
                                     Ente Loan Description
                                 </label>
                                  <textarea class="form-control" cols="40" rows="6" name="desc" id="desc"></textarea>
                              <span id="error_desc" class="text-danger"></span>
                             </div> 
                            
                            
                            <input type="submit" id="insert" value="Create"  class="btn btn-success form-control">
                     </form> 
                        <script>
            $(document).ready(function(){
                $('#insert_form').on('submit', function(){
                    event.preventDefault();
                    var error_type ='';
        var error_type ='';
        var error_desc ='';
        var error_penalty ='';
        var error_gender ='';

        if($.trim($('#type').val()).length === 0){
            error_type = 'Loan plan Field can not be Empty';
            $('#error_type').text(error_type);
            $('#type').addClass('has-error');
        }
        else{
            error_type = '';
            $('#error_type').text(error_type);
            $('#type').removeClass('has-error');
        }
         if($.trim($('#desc').val()).length === 0){
            error_desc = 'Please Enter loan Duration';
            $('#error_desc').text(error_desc);
            $('#desc').addClass('has-error');
        }
        else{
            error_desc = '';
            $('#error_desc').text(error_type);
            $('#desc').removeClass('has-error');
        }
        
       

        if(error_type !=='' || error_desc !==''){
                  
                //$('#insert_form')[0].reset();
               $('#message').html("<div class='alert alert-danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                setTimeout(function()
               {
                document.getElementById('message').innerHTML ='';
            },4000);  
            
            return false;
        }
     
                    else{
                        $.ajax({
                            url:"controller.jsp?page=loan_type&operation=add_type",
                            methode:"POST",
                            data:$('#insert_form').serialize(),
                         
                            success: function(data){
                                if(data){
                                     $('#insert_form')[0].reset();
                              
                                $('#message').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Data saved successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                document.getElementById('insert').disabled = true,
                                $('#insert').val("Creating..");
                                setTimeout(function()
                                {
                                 document.getElementById('message').innerHTML ='';
                                 document.getElementById('insert').disabled = false;
                                 $('#insert').val("Create");
                                 alert("Exit to view  recorde");
                                 location.reload();
                             },4000);  
                                }else{
                                   
                                 $('#insert_form')[0].reset();
                                $('#message').html("<div class='alert alert-Danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                 setTimeout(function()
                                {
                                 document.getElementById('message').innerHTML ='';
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
                
                    </div> 
                       
              </div>
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>Loan Type List</span>
                    </div>
                    <div class="panel-2-body">
                        <div id="message_delete"></div>
                        <table class="table" id="loan_list" >
                            <thead>
                            <th>#</th>
                            <th>Reg#</th>
                            <th>Loan Type</th>
                            <th>Action</th>
                           
                            </thead>
                            <tbody>
                                <%
                                     ArrayList list=AD.Print_Loan_Type();
                                     for(int i=0; i<list.size(); i++){
                                     loan_type tp = (loan_type)list.get(i);
                                     %>
                                <tr>
                                    <td></td>
                                    <td class="typeid"><%=tp.getLoanID()%></td>
                                    <td>
                                       <div class="rt">
                                        <ul>
                                            <li><span>Type Name:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<span class="type_loan"> <%=tp.getLoanType()%></span></li>
                                            <li><span>Description:</span>&nbsp;&nbsp;::&nbsp;&nbsp;<small class="type_desc"><%=tp.getLoanDescription()%></small></li>
                                            
                                        </ul>
                                        </div>
                                    </td>
                                     <td>

                                            <a href="#" data-toggle="modal"  data-target="#loan_type_edit" class="btn btn-warning loan_type_edit_new"><span class="fa fa-pencil-square-o">&nbsp;&nbsp;Edit</span></a>
                                            <a href="#" class="btn btn-danger loan_type_delete"><span class="fa fa-trash">&nbsp;Delete</span></a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                      <script>
                      $(document).ready(function() {
                $('#loan_list').DataTable({
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
                            $('.loan_type_delete').on('click',function(){
                               var ref = $(this).closest('tr').find('.typeid').text();
                               //alert(ref);
                              $.ajax({
                                  url:'controller.jsp?page=loan_type&operation=Delete',
                                  methode:'POST',
                                  data:{ref:ref},
                                  success:function(){
                                     var error ='<div class="alert alert-success">Loan type saved  successfully</div>';
                                    $('#message_delete').html(error);
                                    setTimeout(function(){
                                      document.getElementById('message_delete').innerHTML='';
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
                     
                        <h4 class="modal-title alert alert-info">LOAN TYPE UPDATING</h4>
                    </div>
                    <div class="modal-body">
                        <div id="ltsms"></div>
                         <form method="POST" id="update_loan_type_new">
                             <p id="planid"></p>
                             <div class="form-group">
                                 <label>Enter Loan Type</label>
                                 <p id="loan_types"></p>
                             </div>
                             <div class="form-group">
                                 <label>Enter Loan description</label>
                                 <p id="desc_types"></p>
                             </div>
                            
                           <input type="submit" name="insert" id="dloan" value="Update loan type" class="btn btn-success form-control"/>
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
                
                var type = $(this).closest('tr').find('.type_loan').text();
               var desc = $(this).closest('tr').find('.type_desc').text();
               var t2 = '<input type="text" id="ivoice" name="lntype" class="form-control" value="'+type+'">';
               $('#loan_types').html(t2);
               
                var dd3 = '<textarea id="ivoice"  cols="40" rows="6" name="lndesc" class="form-control">'+desc+'</textarea>';
                $('#desc_types').html(dd3);
                var id = '<input type="hidden" id="ivoice" name="lnid" class="form-control" value="'+ref+'">';
               $('#planid').html(id);
            });
            $('#update_loan_type_new').on('submit', function(){
                event.preventDefault();
                $.ajax({
                    url:'controller.jsp?page=loan_type&operation=Edit_type',
                    methode:'POST',
                    data:$('#update_loan_type_new').serialize(),
                    success:function(){
                         var error ='<div class="alert alert-success">Loan type Updated  successfully</div>';
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
           
           <%} else{%>
            <div class="main-body-2">
                
            
            </div>
           <%}%>
            </main>
        </div>
   