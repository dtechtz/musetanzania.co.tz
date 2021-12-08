
<%@page import="Classes.ballance_amount"%>
<%@page import="Classes.charges_fees_total"%>
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
                        <a href="menu-panel.jsp?load=00011_start"  class="active"><span class="fa fa-tachometer"></span><span>Dashboard</span><span></span></a>
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
            <div class="cards">
                
                 <div class="single-card-1">
                    <div class="view">
                       <div>
                           <span>Total Groups</span><br><br>
                           <%
                            counting count2 =AD.Number_Of_Groups();
                            if(count2!=null){
                           %>
                           <span><%=count2.countingID()%></span><br>
                           <%} else{%>
                           <span>0</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-calendar-o"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                        <a href="menu-panel.jsp?load=00070_py_acc"> <span>View groups List</span></a>
                        <a href="menu-panel.jsp?load=00070_py_acc"> <span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
                 <div class="single-card-2">
                    <div class="view">
                       <div>
                            <span>Total Members</span><br><br>
                             <%
                            counting count = AD.Number_Of_User();
                            if(count!=null){
                           %>
                           <span><%=count.countingID()%></span><br>
                           <%} else{%>
                           <span>0</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-users"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                       <a href="menu-panel.jsp?load=00021_view_all"> <span>View Member List</span></a>
                       <a href="menu-panel.jsp?load=00021_view_all"> <span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
                <div class="single-card-3">
                    <div class="view">
                       <div>
                           <span>Current Account Balance</span><br><br>
                            <%
                           deposit dp4 = AD.Print_Total_received();
                            if(dp4 !=null){
                           %>
                           <span><%=dp4.getDepositAmount()%></span><br>
                           <%} else{%>
                           <span>0.00</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-users"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                        <a href="menu-panel.jsp?load=00082-trs-tr"><span>View Total income List</span></a>
                        <a href="menu-panel.jsp?load=00082-trs-tr"><span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
                <div class="single-card-4">
                    <div class="view">
                       <div>
                           <span>Total Expenses </span><br><br>
                           <%
                            deposit dp5 =AD.Print_Total_Expenses();
                            if(dp5 !=null){
                           %>
                           <span><%=dp5.getDepositAmount()%></span><br>
                            <%} else{%>
                           <span>0.00</span>
                           <%}%>
                        </div>
                        <div>
                             <span class="fa fa-usd"></span><br>
                        </div>
                        
                    </div>
                    <div class="view-2">
                        <a href="menu-panel.jsp?load=00083-trs-sheet" style="color:  #003333"><span>View Total Transaction</span></a>
                        <a href="menu-panel.jsp?load=00083-trs-sheet" style="color:  #003333"><span class="fa fa-chevron-right"></span></a>
                    </div>
                </div>
            </div>
               <%
                 charges_fees_total   active = AD.Print_active_loans();
                if(active!=null){
              %>
              <input type="hidden" id="activeloan" readonly="true" name="" value="<%=active.calculateTotal()%>" >
              <%} else{%>
              <input type="hidden" id="activeloan" readonly="true" name="" value="0.0" >
              <%}%>
               <%
                 charges_fees_total   gactive = AD.Print_active_loans_group();
                if(gactive!=null){
              %>
              <input type="hidden" id="gactiveloan" readonly="true" name="" value="<%=gactive.calculateTotal()%>" >
              <%} else{%>
              <input type="hidden" id="gactiveloan" readonly="true" name="" value="0.0" >
              <%}%>
               <%
                  charges_fees_total   inactive = AD.Print_inactive_loans();
                if(gactive!=null){
              %>
              <input type="hidden" id="inactiveloan" readonly="true" name="" value="<%=inactive.calculateTotal()%>" >
              <%} else{%>
              <input type="hidden" id="inactiveloan" readonly="true" name="" value="0.0" >
              <%}%>
               <%
                  charges_fees_total   ginactive = AD.Print_inactive_loans_group();
                if(gactive!=null){
              %>
              <input type="hidden" id="ginactiveloan" readonly="true" name="" value="<%=ginactive.calculateTotal()%>" >
              <%} else{%>
              <input type="hidden" id="ginactiveloan" readonly="true" name="" value="0.0" >
              <%}%>
              <%
                  charges_fees_total   collective = AD.Print_Total_Collective_to_day_loan_group();
                if(gactive!=null){
              %>
              <input type="hidden" id="collective" readonly="true" name="" value="<%=collective.calculateTotal()%>" >
              <%} else{%>
              <input type="hidden" id="collective" readonly="true" name="" value="0.0" >
              <%}%>
              <%
                   charges_fees_total   indcollective = AD.Print_Total_Collective_to_day_loan_ind();
                if(gactive!=null){
              %>
              <input type="hidden" id="indcollective" readonly="true" name="" value="<%=indcollective.calculateTotal()%>" >
              <%} else{%>
              <input type="hidden" id="indcollective" readonly="true" name="" value="0.0" >
              <%}%>
            <div class="main-body">
                <div class="palel-1">
                    <div class="panel-1-header">
                        <span>CLIENT LOAN STATISTICS </span>  
                    </div>
                    <div class="panel-1-body">
          
                        <table width="100%" class="table">
                            <tbody>
                            <div id="pia"></div>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
                <script>
                    $(document).ready(function(){
                       var active = $('#activeloan').val();
                       var gactive = $('#gactiveloan').val();
                        var total_active = parseFloat(active) + parseFloat(gactive);
                       //alert(gactive);
                       var male = $('#male').val();
                      // var total = parseFloat(female) + parseFloat(male);
                     //inactive loan 
                      var inactive = $('#inactiveloan').val();
                       var ginactive = $('#ginactiveloan').val();
                        var total_inactive = parseFloat(inactive) + parseFloat(ginactive);
                      // alert(ginactive);
                     
                     //end of inactive
                     
                     // collective loan 
                      var collect = $('#collective').val();
                       var indcollect = $('#indcollective').val();
                        var total_collect = parseFloat(collect) + parseFloat(indcollect);
                     // alert(indcollect);
                     //end of collective loan
                     //total loan 
                     var Grand_total_collect = parseFloat(total_collect) + parseFloat(total_inactive)+ parseFloat(total_active);
                     //end of total
                        Morris.Donut({
                        element: 'pia',
                        data: [
                           {label: "Total Loans", value: Grand_total_collect},
                          {label: "Active Loans", value: total_active},
                          {label: "Inactive Loans", value: total_inactive},
                          {label: "Loan to Collect", value: total_collect},
                          
                        ]
                      });
                    });
    
          </script>
           <%
                charges_fees_total   fees = AD.Print_Registration_fees_total();
               if(fees!=null){
              %>
              <input type="hidden" id="regfee1" readonly="true" name="" value="<%=fees.calculateTotal()%>" >
              <%} else{%>
              <input type="hidden" id="regfee1" readonly="true" name="" value="0.0" >
              <%}%>
              
                    <%
                    charges_fees_total   app = AD.Print_Application_fees_total_individual();
                    if(app!=null){
                   %>
                   <input type="hidden" id="appfeeindi1" readonly="true" name="" value="<%=app.calculateTotal()%>" class="dp">
                   <%} else{%>
                   <input type="hidden" id="appfeeindi1" readonly="true" name="" value="0.0" class="dp">
                   <%}%>
                    <%
                     charges_fees_total   app1 = AD.Print_Application_fees_total_Group();
                    if(app!=null){
                   %>
                   <input type="hidden" id="appfeegroup1" readonly="true" name="" value="<%=app1.calculateTotal()%>" class="dp">
                   <%} else{%>
                   <input type="hidden" id="appfeegroup1" readonly="true" name="" value="0.0" class="dp">
                   <%}%>
                   
                    <%
                    ballance_amount  ball14 = AD.Print_Ballancae_Expenses_sheet_Group_today();
                  if(ball14!=null){
                 %>
                 <input type="hidden" id="gdisburse" readonly="true" name="" value="<%=ball14.getBallanceAmount()%>">
                 <%} else{%>
                 <input type="hidden" id="gdisburse" readonly="true" name="" value="0.0" >
                 <%}%>
                 
                   <%
                    ballance_amount  ball4 = AD.Print_Ballancae_Expenses_sheet_to_date_Individual();
                   if(ball4!=null){
                  %>
                  <input type="hidden" id="idisburse1" readonly="true" name="" value="<%=ball4.getBallanceAmount()%>">
                  <%} else{%>
                  <input type="hidden" id="idisburse1" readonly="true" name="" value="0.0" >
                  <%}%>
                  
                   <%
                     ballance_amount ba1 = AD.Print_Ballancae_Income_sheet_to_day();
                    if(ba1!=null){
                   %>
                   <input type="hidden" id="indcollect1" readonly="true" name="" value="<%=ba1.getBallanceAmount()%>">
                   <%} else{%>
                   <input type="hidden" id="indcollect1"  readonly="true" name="" value="0.0">
                   <%}%>
                   
                    <%
                     ballance_amount ba = AD.Print_Ballancae_Group_Income_sheet_to_date();
                   if(ba!=null){
                  %>
                  <input type="hidden" id="gcollection1" readonly="true" name="" value="<%=ba.getBallanceAmount()%>" >
                  <%} else{%>
                  <input type="hidden" id="gcollection1" readonly="true" name="" value="0.0" >
                  <%}%>
                  
                  
                <div class="panel-2">
                    <div class="panel-2-header">
                        <span>DAILY STATISTICS FOR BUSINESS PROGRESSIVE</span>
                    </div>
                    <div class="panel-2-body">
                        <div class="chart">
                            <div id="barcraph" style="height: 250px;"></div>
                        </div>
                        
                    </div>
                </div>
            </div>
        
            </main>
        </div>
  <script>
   // clculation are 
 $(document).ready(function(){
     // application fee 
     var group_app_loan = $('#appfeegroup1').val();
      var ind_app_loan = $('#appfeeindi1').val();
     var total =  parseFloat(ind_app_loan) + parseFloat(group_app_loan);
     
    // end of  application fee
    //disbusement
    var group_disburse = $('#gdisburse').val();
    var ind_disburse = $('#idisburse1').val();
     var total_disburse =  parseFloat(group_disburse) + parseFloat(ind_disburse);

    //end disbursemen
    
    // collection 
    var ind_collect = $('#indcollect1').val();
    var group_collect = $('#gcollection1').val();
    var total_collect =  parseFloat(group_disburse) + parseFloat(ind_disburse);
    // end of collection 
  //loan application fee
  
  
  // end of application fee
  
  // registration fee
  var regfee = $('#regfee1').val();
  //alert(regfee);
  //end of registration fee

 new Morris.Bar({
  // ID of the element in which to draw the chart.
  element: 'barcraph',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
    { year: 'Disburse', Groups: group_disburse ,Individuals: ind_disburse},
    { year: 'Collection',Groups: group_collect ,Individuals: ind_collect},
    { year: 'Loan Fees',Groups: group_app_loan ,Individuals: ind_app_loan},
    { year: 'Reg  Fees', Groups: regfee ,Individuals:0 },
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'year',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['Groups','Individuals'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Groups','Individuals']
});
});
</script> 