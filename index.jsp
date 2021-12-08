<%@page import="Classes.system_status"%>
<jsp:useBean id="AD" class="ClassDB.DBconnection" scope="page"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MSE-TANZANIA</title>
         <script src="http://code.jquery.com/jquery-2.1.1.js"></script>
           <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="style_1.css">
          <link rel="icon" href="mselogo.png">
    </head>
    <body>
        <header>
            <div class="logo">
                <span><img src="mselogo.png" width="60px" height="60px"></span>
            </div>
            <div class="header-tital">
                <h3><span>MICRO FINANCE FOR  SMALL ENTERPRISES TANZANIA </span></h3> 
                <small>Email:: </small><small>msetanzania@gmail.com</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small>Phone::</small><small>+255 28271 0007</small>
            </div>
            <div class="logo">
                <span><img src="mselogo.png" width="60px" height="60px"></span> 
            </div>
        </header>
        <main>
            <div class="main-containt">
                <div>
                     <div class="post">
                         <%
                         system_status st =AD.Print_System_Status();
                         %>
                         <input type="hidden" name="" id="systemstatus" value="<%=st.getSystemStatus()%>">
                         <span id="openWindow"></span>
                     </div>
                   <div class="content-side">
                    
                    <div class="content-side-header">
                        <h4><span style="color:  #cc0000">Welcome:</span> &nbsp;&nbsp;<span style="color:  #006600">Online Micro Financial Management System  </span></h4> 
                    </div>
                    <div class="content-side-body">
                        
                        <br>
                        <img src="MSE_4.jpg" style="width: 100%; height: 500px;" > 
                       
                    </div>
                    
                </div>  
                </div>
               
               
                <div class="content-login">
                     <%
                if(request.getParameter("redirection")==null){
                %>
                    <div class="content-login-header">
                        USER LOGIN AREA 
                    </div>
                    <form action="controller.jsp" id="loginform">
                    <div class="login-error">
                     <% 
                        if(request.getSession().getAttribute("Status")!=null){
                          if(request.getSession().getAttribute("Status").equals("-1")){
                             %>    
                          <br>
                        <%
                      }}
                    %>    
                   <div id="message"></div> 
                    </div>
                      <div class="content-login-body">
                        <div class="login-form1">
                            <span class="fa fa-phone"> </span>
                            <input type="text" name="username" id="username"  autocomplete="off" placeholder="Enter Username">
                        </div>
                        <span class="error_form" id="user_error_message" style="color:  #cc0000"></span>
                          <div class="login-form2">
                            <span class="fa fa-unlock-alt"> </span>
                            <input type="password"  name="password" id="password" placeholder="Enter Password">
                        </div>
                        <span class="error_form" id="pass_error_message" style="color:  #cc0000"></span>
                        <div class="login-form3">
                            <span class="fa fa-user-circle-o"> </span>
                            <select name="user_type" id="user_type">
                                <option></option>
                                <option value="Admin"  style="font-size: 1.7rem">System Admin</option>
                                <option value="Manager"style="font-size: 1.7rem">Manager</option>
                                <option value="Officer"style="font-size: 1.7rem">Loan Officer</option>
                            </select>
                        </div>
                        <span class="error_form" id="type_error_message" style="color:  #cc0000"></span>
                        <div class="button">
                            <input type="submit" name="page"  value="Login" class="btn btn-success">
                        </div>
                          <br>
                        <div class="reset">
                            <span>Forget Your password ? &nbsp;&nbsp; <a href="index.jsp?redirection=verify">Click Hire to Reset</a></span>
                        </div>
                    </div>  
                    </form>
                     <%} else if(request.getParameter("redirection").equals("verify")){%>
                      <div class="content-login">
                    <div class="content-login-header">
                        RESET YOUR PASSWORD 
                    </div>
                     <form action="controller.jsp">
                         <input type="hidden" name="page" value="Reset">
                         <div class="login-error">
                         <%
                             if(request.getParameter("sms")!=null){
                         %>
                           
                            <p style =" color: #006666; font-size: 17px">Password Changed successfully</p>
                            <br>
                            <%} else  if(request.getParameter("code")!=null){%>
                           <p style =" color: #cc0000; font-size: 17px">Username Entered is not correct please try again with correct username</p>
                            <br>
                         <%}%>
                         
                                             
                           </div>
                         
                   
                      <div class="content-login-body">
                        <div class="login-form">
                            <span class="fa fa-phone"> </span>
                            <input type="text" name="user"  autocomplete="off" placeholder="Enter Username">
                        </div>
                       <div class="login-form">
                            <span class="fa fa-unlock-alt"> </span>
                            <input type="password"  name="pass" placeholder="Enter New Password">
                        </div>
                        <div class="button">
                            <input type="submit" name="page"  value="Reset">
                           
                        </div>
                          
                          <br>
                        <div class="reset">
                            <span>Back to Login page &nbsp;&nbsp; <a href="index.jsp">Click Hire to login</a></span>
                        </div>
                          
                    </div>  
                    </form>
                    
                    
                </div>
             
             <%} else{%>
             <%}%>
                    
                </div>
              
            </div>
        </main>
        <div class="footer">
            <div class="footer-tital">
                <span><h5>&copy; &nbsp;&nbsp;2021 - 2022 &nbsp;&nbsp; Micro finance for small enterprises Tanzania [ MSE ] &nbsp;&nbsp;Version [1.0.0]</h5></span>
            </div>
            <div class="">
                <span></span>
            </div>
            <div class="developer">
                <span>Developed by: &nbsp;&nbsp;<a href="https://www.youtube.com/results?search_query=dtech+college">Dar es salaam Technology (D-tech) &nbsp;&nbsp; </a> &nbsp;&nbsp;Verified By:&nbsp;&nbsp;<a href=""> Ravens Technologies</a>&nbsp;&nbsp;</span>
            </div>
        </div>
        
    </body>
</html>
<script>
    $(function(){
      
     $('#user_error_message').hide();
      $('#pass_error_message').hide();
     $('#type_error_message').hide();
    
     var error_username = false;
     var error_pass = false;
     var error_type = false;
     
     $('#username').focusout(function(){
         check_username();
     });
     $('#password').focusout(function(){
         check_password();
     });
     $('#user_type').focusout(function(){
         check_user_type();
     });
    
       
      function check_username(){
          var username = $('#username').val();
          if(username !== ''){
              $('#user_error_message').hide();
              $('.login-form1').css("border","2px solid #34f458");
              
          }
          
          else{
              $('#user_error_message').html("Please Enter username");
              $('#user_error_message').show();
              $('.login-form1').css("border","2px solid #F90A0A");
              error_username = true;
          }
         
      }
      function check_password(){
          var reg_sex = $('#password').val();
          if(reg_sex !== ''){
              $('#pass_error_message').hide();
              $('.login-form2').css("border","2px solid #34f458");
              
          }
           else {
             $('#pass_error_message').html("Please Enter login password");
              $('#pass_error_message').show();
              $('.login-form2').css("border","2px solid #F90A0A");
              error_pass = true;  
          }
        
      }
      function check_user_type(){
          var date = $('#user_type').val();
          if(date !== ''){
              $('#type_error_message').hide();
              $('.login-form3').css("border","2px solid #34f458");
              
          }
          
          else{
              $('#type_error_message').html("Please select Login Type");
              $('#type_error_message').show();
              $('.login-form3').css("border","2px solid #F90A0A");
              error_type =true;
          }
      }

      
    $("#loginform").on('submit',function(){
          //event.preventDefault();
          error_username = false;
          error_pass = false;
          error_type = false;
       
          check_username();
          check_password();
          check_user_type();
         
          if(error_username === false && error_pass === false && error_type === false ){
              return true;
            
              
          }
          else{
           var error ='<div class="alert alert-danger">Form contain invalid Data,Please re correct</div>';
                $('#message').html(error);
                setTimeout(function(){
                    document.getElementById('message').innerHTML='';
                },5000);
              return false; 
          }
      });
      
    });
</script>
<script>
    $(document).ready(function(){
       var status = $('#systemstatus').val();
       if(status!=='Inactive'){
           var windows ="<div class='alert alert-success alert-dismissible'><strong>System is Open!!</strong> Working Hours &nbsp;&nbsp;8:30 AM - 17 : 00 PM &nbsp;&nbsp; From [ Monday To Friday ]<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
           $('#openWindow').html(windows);
       }
       else{
           var windows ="<div class='alert alert-danger alert-dismissible'><strong>System is Closed!!</strong> System will open Tomorrow  &nbsp;&nbsp;8:30 AM - 17: 00 PM &nbsp;&nbsp; From [ Monday To Friday ]<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a></div>";
           $('#openWindow').html(windows);
       }

    });
</script>
