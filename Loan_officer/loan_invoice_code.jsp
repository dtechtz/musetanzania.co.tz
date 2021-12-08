
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include  file="repoconnect.jsp" %>

        <%
            PreparedStatement pst;
                ResultSet rs;    
                pst = con.prepareStatement("SELECT MAX(Invoice) from selected_test_total");
                  rs = pst.executeQuery();
                 if(rs.next()){
                 rs.getString("MAX(Invoice)");
            
                 if(rs.getString("MAX(Invoice)")==null)
                 {
             %>
             CD-0001
            <%
              }
            
            else
              {
                long id = Long.parseLong(rs.getString("MAX(Invoice)").substring(5,rs.getString("max(Invoice)").length()));
                id++;
             %>
            <%=("CD-"+String.format("%04d", id))%>
             <%
                 //String.format("%04d", id);
             %>   
            <%
            }
  
            }

        %>
        
        <script>
             $.ajax({
           url:'test-invoice.jsp',
           methode:'POST',
          // data:$('#insert_form').serialize(),
           success:function(data){
               //alert(data);
             // $('#invo').val(data);
               var t2 = '<input type="text" id="invoice_data" name="invoice_data" value="'+data+'">';
               var t3 = data;
             $('#invo').html(t2);
             $('#invo1').text(data);
              alert(t3);
           }
       }); 
        </script>
  