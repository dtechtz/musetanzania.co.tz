<%@page import="java.util.HashMap"%>
<%@ page import="java.io.*"%> 
<%@page trimDirectiveWhitespaces="true"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperExportManager"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="net.sf.jasperreports.engine.JasperCompileManager"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include file="repoconnect.jsp"%>

<%
    if(request.getParameter("member_loan_report").equals("individual")){
      if(request.getParameter("MID")!=null){   
    
%>

        <% 
                     HashMap a = new HashMap();
                    a.put("LIDS",request.getParameter("MID"));  
        try{
                   
                           String jrxmlFile =session.getServletContext().getRealPath("Report/individual_loan.jrxml");
                           InputStream input = new FileInputStream(new File(jrxmlFile));
                           JasperReport jasperReport = JasperCompileManager.compileReport(input);
                           JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,a,con);
                           response.setContentType("application/pdf");
                           JasperExportManager.exportReportToPdfStream(jasperPrint,response.getOutputStream());
                           response.getOutputStream().flush();
                           response.getOutputStream().close();
                           out.clear();
                           return;
                           
                         } catch(Exception e){
                               e.printStackTrace();
                                 
                         }
          %>
          <% }%>
          
   <%
      } else if(request.getParameter("member_loan_report").equals("group_pay")){
      if(request.getParameter("MID")!=null){   
    
%>

        <% 
            HashMap a = new HashMap();
                    a.put("LIDS",request.getParameter("MID"));  
        try{
                   
                           String jrxmlFile =session.getServletContext().getRealPath("Report/group_loan_payment.jrxml");
                           InputStream input = new FileInputStream(new File(jrxmlFile));
                           JasperReport jasperReport = JasperCompileManager.compileReport(input);
                           JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,a,con);
                           response.setContentType("application/pdf");
                           JasperExportManager.exportReportToPdfStream(jasperPrint,response.getOutputStream());
                           response.getOutputStream().flush();
                           response.getOutputStream().close();
                           out.clear();
                           return;
                           
                         } catch(Exception e){
                               e.printStackTrace();
                                 
                         }
          %>
    <% }%>       
          
<%} else if(request.getParameter("Report").equals("members")){ %>
          
           <% 
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/member-view.jrxml");
                           InputStream input = new FileInputStream(new File(jrxmlFile));
                           JasperReport jasperReport = JasperCompileManager.compileReport(input);
                           JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,con);
                           response.setContentType("application/pdf");
                           JasperExportManager.exportReportToPdfStream(jasperPrint,response.getOutputStream());
                           response.getOutputStream().flush();
                           response.getOutputStream().close();
                           out.clear();
                           return;
                           
                         } catch(Exception e){
                               e.printStackTrace();
                                 
         }
          %>
          
          
     <% } else if(request.getParameter("Report").equals("groups")){ %>  
     <% 
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/group.jrxml");
                           InputStream input = new FileInputStream(new File(jrxmlFile));
                           JasperReport jasperReport = JasperCompileManager.compileReport(input);
                           JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,con);
                           response.setContentType("application/pdf");
                           JasperExportManager.exportReportToPdfStream(jasperPrint,response.getOutputStream());
                           response.getOutputStream().flush();
                           response.getOutputStream().close();
                           out.clear();
                           return;
                           
                         } catch(Exception e){
                               e.printStackTrace();
                                 
                         }
          %>
      <% } else if(request.getParameter("Report").equals("General")){ %>  
     <% 
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("allgroups_incomes.jrxml");
                           InputStream input = new FileInputStream(new File(jrxmlFile));
                           JasperReport jasperReport = JasperCompileManager.compileReport(input);
                           JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,con);
                           response.setContentType("application/pdf");
                           JasperExportManager.exportReportToPdfStream(jasperPrint,response.getOutputStream());
                           response.getOutputStream().flush();
                           response.getOutputStream().close();
                           out.clear();
                           return;
                           
                         } catch(Exception e){
                               e.printStackTrace();
                                 
                         }
          %>
     
      <% }else {%>
      No report generated , please tyr again 
      
      <%}%>
   
       
   