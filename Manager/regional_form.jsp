 <%@page import="Classes.regionals"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Classes.loan_group_details"%>
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
            
            <div class="main-body-menus">
                <div class="palel-1">
                  <div class="panel-1-header">
                        <span>        </span>  
                        <input type="submit" id="savetest" name="savetest" class="btn btn-success" value="Create New Regional" data-toggle="modal" data-target="#newtest" style="float: right">
                    </div>
                    <div class="panel-1-body">
                      <div class="box">
                        <table id="table" class="table">
                                    <thead>
                                    <th>#</th>
                                    <th style="width: 20%">Nation Name</th> 
                                    <th style="width: 60%">Regional Name</th> 
                                     <th>Action</th>
                                    </thead>
                                    <tbody>
                                        <%
                                        ArrayList list = AD.Print_regionals();
                                        for(int i =0; i<list.size(); i++){
                                         regionals lg = (regionals)list.get(i); 
                                        %>
                                        <tr>
                                            <td></td>
                                            <td><%=lg.getCountry()%></td>
                                            <td><%=lg.getRegional()%></td>
                                            <td>
                                                <div class="org-button-2">
                                                    <span><a href="" class="btn btn-warning" data-toggle="modal" data-target="#edittest">Edit</a></span>
                                                    <span><a href="" class="btn btn-danger" data-toggle="modal" data-target="#deletetest">Delete</a></span>
                                                </div>
                                                 
                                            </td>
                                        </tr> 
                                        <%}%>
                                    </tbody>
                                </table>
                             <script>
                      $(document).ready(function() {
                $('#table').DataTable();
                 } );
               </script>
                    </div>
                    </div> 
                                 
              </div>
            </div>
           <div id="newtest" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title">CREATE NEW REGIONAL</h4>
                    </div>
                    
                    <div class="modal-body">
                        <div id="regsms"></div>
                         <form method="POST" id="create_regional">
                          
                             <div class="form-group">
                               <label>Country Name</label>
                               <input type="text" name="nwcountry" readonly="true" id="nwcountry" value="TANZANIA - TZ" class="form-control">  
                             </div>
                             <div class="form-group">
                              <label>Regional Name</label>
                             <input type="text" name="newregional" id="newregional" class="form-control">
                             <span class="error_form" id="regional_error_message" style=" color:  #cc0000"></span> 
                             </div>
                             
                            <br>
                            <input type="submit" name="insert" id="insert" value="CREATE NEW" class="btn btn-success"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
         <div id="deletetest" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                        <h4 class="modal-title">Warning!!</h4>
                    </div>
                    <div class="modal-body">
                        
                         <form method="POST" id="insert_form">
                          
                            
                             <label>Are You sure you want to delete this ? </label>
                            <br>
                            <input type="submit" name="insert" id="insert" value="Delete" class="btn btn-danger"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
           </main>
            </div>
 <script>
    $(function(){
      
     $('#regional_error_message').hide();
    
     var error_regional = false;
    
     $('#newregional').focusout(function(){
         check_regional();
     });
    
     
      function check_regional(){
          var reg_sex = $('#newregional').val();
          if(reg_sex !== ''){
              $('#regional_error_message').hide();
              $('#newregional').css("border","2px solid #34f458");
              
          }
           else {
             $('#regional_error_message').html("Please enter regional name");
              $('#regional_error_message').show();
              $('#newregional').css("border","2px solid #F90A0A");
              error_regional = true;  
          }
        
      }

 
      
    $("#create_regional").on('submit',function(){
          event.preventDefault();
          error_regional = false;
         
          check_regional();
         
          if(error_regional === false ){
            $.ajax({
                url:'controller.jsp?page=setting&operation=add_regional',
                methode:'POST',
                data:$(this).serialize(),
                success:function(data){
                 var error ='<div class="alert alert-success">Regional  created successfully</div>';
                $('#regsms').html(error);
                setTimeout(function(){
                    document.getElementById('regsms').innerHTML='';
                    alert("Exit to view  recorde");
                     location.reload();
                },1000);
                $('#create_regional')[0].reset();
                $('#newtest').modal('hide');
                }
                
            });
              return true;
              
          }
          else{
           var error ='<div class="alert alert-danger">Form contain invalid Data</div>';
                $('#message1').html(error);
                setTimeout(function(){
                    document.getElementById('message1').innerHTML='';
                    
                },5000);
              return false; 
          }
      });
      
    });
</script>
   