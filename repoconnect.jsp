
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

        <%
        Connection con = null;
        Class.forName("com.mysql.jdbc.Driver");
       con = DriverManager.getConnection("jdbc:mysql://musetz_db/msetz_db","root","@musetz_db");

        %>

