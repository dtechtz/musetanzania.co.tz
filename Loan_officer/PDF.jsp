<%@page import="java.util.HashMap"%>
<%@page contentType="application/pdf" %>
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

       <% if(request.getParameter("Report").equals("members")){ %>
          
           <% 
                 HashMap a = new HashMap();
                 a.put("RegID",Integer.parseInt(request.getParameter("code")));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/members_report.jrxml");
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
          
          
     <% } else if(request.getParameter("Report").equals("memberapplication")){ %>  
     <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/individual_application.jrxml");
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

     
     <%}else if(request.getParameter("Report").equals("groupapplication")){%>
      <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/group_application.jrxml");
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
   <%}else if(request.getParameter("Report").equals("membersanction")){%>   
   <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/individual_sunction.jrxml");
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
     <%}else if(request.getParameter("Report").equals("groupsanction")){%> 
      <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/group_sunction.jrxml");
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
    <%}else if(request.getParameter("Report").equals("privatedisburse")){%> 
    <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/member_disbursement.jrxml");
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
   <%}else if(request.getParameter("Report").equals("groupdisburse")){%>  
   <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/group_disbursement.jrxml");
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
    <%}else if(request.getParameter("Report").equals("groupcollection")){%>  
    <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/individual_collection.jrxml");
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
 <%}else if(request.getParameter("Report").equals("privatecollection")){%> 
 <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/group_collection.jrxml");
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
 <%}else if(request.getParameter("Report").equals("saving")){%> 
 <% 
                 HashMap a = new HashMap();
                 a.put("startdate",request.getParameter("startdate"));
                 a.put("enddate",request.getParameter("enddate"));
        try{
                        
                           String jrxmlFile =session.getServletContext().getRealPath("Report/saving.jrxml");
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
     <%}else{%>
     
     <%}%>