 <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.payment_account"%>
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
            
            <div class="main-body-2">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>UPDATE PAYMENT ACCOUNT</span>  
                    </div>
                    <div class="panel-1-body">
                        <div id="catesms"></div>
                        <form id="payment_account_mode">
                           
                            <div class="form-group">
                                <label>Account Name</label>
                                <input type="text" id="type" name="pay" class="form-control" placeholder="New account name">
                             <span id="error_type" class="text-danger"></span>
                            </div>
                            <br>
                        <div class="form-group">
                            <label>Account Description</label>
                            <textarea cols="40" rows="6" id="desc" name="description" class="form-control"></textarea>
                            <span id="error_desc" class="text-danger"></span>
                        </div><br>
                            
                        <input type="submit" id="create" value="Update" class="btn btn-success form-control">
                     </form>      
                
                    </div> 
                       
              </div>
                 <script>
        $(document).ready(function(){
       $('#payment_account_mode').on('submit', function(){
           event.preventDefault();
           var error_type ='';
        var error_type ='';
        var error_desc ='';
        var error_penalty ='';
        var error_gender ='';

        if($.trim($('#type').val()).length === 0){
            error_type = 'Account name Field can not be Empty';
            $('#error_type').text(error_type);
            $('#type').addClass('has-error');
        }
        else{
            error_type = '';
            $('#error_type').text(error_type);
            $('#type').removeClass('has-error');
        }
         if($.trim($('#desc').val()).length === 0){
            error_desc = 'Please Enter Description';
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
               $('#catesms').html("<div class='alert alert-danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                setTimeout(function()
               {
                document.getElementById('catesms').innerHTML ='';
            },4000);  
            
            return false;
        }
     
                    else{
                        $.ajax({
                            url:"controller.jsp?page=setting&operation=add_pay_account",
                            methode:"POST",
                            data:$('#payment_account_mode').serialize(),
                         
                            success: function(data){
                                if(data){
                              
                                $('#catesms').html("<div class='alert alert-success alert-dismissible'><span style='background: #ccffcc; padding: .8rem;'><strong>Congraturations!!!</strong> Data saved successfully </span><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                document.getElementById('create').disabled = true,
                                $('#create').val("Creating..");
                                setTimeout(function()
                                {
                                 document.getElementById('catesms').innerHTML ='';
                                 document.getElementById('create').disabled = false;
                                 $('#create').val("Create");
                                 alert("Exit to view  recorde");
                                 location.reload();
                             },2000);  
                                }else{
                                   
                                 //$('#insert_form')[0].reset();
                                $('#catesms').html("<div class='alert alert-Danger alert-dismissible'><strong>Error!</strong> Data failed, please try again <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>");
                                 setTimeout(function()
                                {
                                 document.getElementById('catesms').innerHTML ='';
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
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>PAYMENT ACCOUNT LIST </span>
                    </div>
                    <div class="panel-2-body">
                        <table class="table" id="example" >
                            <thead>
                            <th>#</th>
                            <th>Account Details</th>
                            <th>Action</th>
                           
                            </thead>
                            <tbody>
                                <%
                                     ArrayList list2=AD.Print_Account_payment();
                                     for(int i=0; i<list2.size(); i++){
                                     payment_account pa = (payment_account)list2.get(i);
                                 %>
                                <tr>
                                    <td></td>
                                    <td>
                                       <div class="rt">
                                        <ul>
                                            <li><span>Type Name:</span><span> &nbsp;&nbsp;::&nbsp;&nbsp;<%=pa.getAccountName()%></span></li>
                                            <li><span>Description:</span><small style="text-align: center">&nbsp;&nbsp;::&nbsp;&nbsp;<%=pa.getAccountDescription()%></small></li>
                                            
                                        </ul>
                                        </div>
                                    </td>
                                     <td>
                                        <div>
                                            <a href="" class="btn btn-success"><span class="fa fa-pencil-square-o">&nbsp;Edit</span></a>
                                          
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
                   </div>
            
            </div>
        
            </main>
        </div>
   