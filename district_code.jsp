
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include  file="repoconnect.jsp" %>
<%

       int Name=Integer.parseInt(request.getParameter("reg"));
        PreparedStatement pst =null;   
        ResultSet rs;
        try {

             pst = con.prepareStatement("SELECT * from  district WHERE Reg_ID =?");
            pst.setInt(1, Name);
            rs = pst.executeQuery();
           while(rs.next()){
           %>
     <option value="<%=rs.getString("ID")%>"><%=rs.getString("District_Name")%> </option>
     
       <%
           }
        } catch (SQLException ex) {
             //Logger.getLogger(class.getName()).log(Level.SEVERE, null, ex);
        }
%>