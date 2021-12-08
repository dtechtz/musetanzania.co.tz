
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include  file="repoconnect.jsp" %>
<%

       String  Name=request.getParameter("loan_type");
        PreparedStatement pst =null;   
        ResultSet rs;
        try {

             pst = con.prepareStatement("SELECT * from loan_plans WHERE TypeID =?");
            pst.setString(1, Name);
            rs = pst.executeQuery();
           while(rs.next()){
           %>
           <option value="<%=rs.getString("ID")%>">Months::<%=rs.getString("Plan_name")%> &nbsp; &nbsp;Interest::&nbsp;<%=rs.getString("Interest")%>&nbsp;&nbsp;%&nbsp;&nbsp;Penalty&nbsp;&nbsp; <%=rs.getString("Penalty")%>&nbsp;&nbsp;%&nbsp;&nbsp;</option>
     
            <%
           }
        } catch (SQLException ex) {
             //Logger.getLogger(class.getName()).log(Level.SEVERE, null, ex);
        }
%>