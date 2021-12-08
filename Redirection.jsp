
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="CH" class="ClassDB.DBconnection" scope="page"/>

<%
  if(session.getAttribute("Status")!=null){
      if(session.getAttribute("Status").toString().equals("1")){
          if(CH.getUserType(session.getAttribute("UserID").toString()).equals("Admin")){
             response.sendRedirect("menu-panel.jsp?load=00011_start"); 
          }
          else if(CH.getUserType(session.getAttribute("UserID").toString()).equals("Officer")){
              response.sendRedirect("Loan_officer/menu-panel.jsp?load=00011_start"); 
              
          }
         else if(CH.getUserType(session.getAttribute("UserID").toString()).equals("Manager")){
              response.sendRedirect("Manager/menu-panel.jsp?load=00011_start");
          }
      } 
  }

%>