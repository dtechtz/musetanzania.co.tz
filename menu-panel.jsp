<%-- 
    Document   : menu-panel
    Created on : Jun 11, 2021, 11:57:43 AM
    Author     : Dickson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MSE -Tanzania</title>
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="Jquery/jquery-ui-1.12.1/jquery-3.5.1.min.js" type="text/javascript"></script>
        <link href="Jquery/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        <script src="Jquery/jquery-ui-1.12.1/jquery-ui.min.js" type="text/javascript"></script>
         <link rel="stylesheet" href="style-admin-1.css">
          <link href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet" />
           <link href="//cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css" rel="stylesheet" />
          <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
          <script src="//cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
          <script src="//cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
          <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
          <script src="//cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
         <script src="//cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script src="//cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
      <script src="//cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>
      
         <script>
          $(function(){
                 $("#datepicker").datepicker();
               });
        </script>
        <script>
          $(function(){
                 $("#datepicker-2").datepicker();
               });
        </script>
         <script>
          $(function(){
                 $("#datepicker-3").datepicker();
               });
        </script>
        
        <link rel="icon" href="icone.ico">
        <style>
             .has-error{
                background-color: #ffcccc;
                border-color:  #cc0000;
               
   }
        </style>
    </head>
    <body>
        <%
        int timeout = session.getMaxInactiveInterval();
        response.setHeader("Refresh", timeout +"; URL = index.jsp");
        %>
        <input type="checkbox" id="moving">
        <%
            if(request.getParameter("load").toString().equals("00011_start")){
        
        %>
        <jsp:include page="admin-board.jsp"/>
        
        <%
            }else if(request.getParameter("load").toString().equals("00022_add_new")){

        %>
        
        <jsp:include page="member_registration.jsp"/>
        <%
         }else if(request.getParameter("load").toString().equals("00022_add_new_new")){
        %>
        <jsp:include page="new_reg_form.jsp"/>
        <% }else if(request.getParameter("load").toString().equals("00021_view_all")){
       
         %>
          <jsp:include page="member-view.jsp"/>
         <%
            } else if(request.getParameter("load").toString().equals("00022_new_reg")){  
         %>
        <jsp:include page="regional_form.jsp"/>
        <%
           } else if(request.getParameter("load").toString().equals("00022_new_dist")){  
        %>
        <jsp:include page="district_form.jsp"/>
        <%
          } else if(request.getParameter("load").toString().equals("00033_ln_lst")){
        %>
        <jsp:include page="loan-list.jsp"/>
        <%
         } else if(request.getParameter("load").toString().equals("00033_ln_bursement")){
        %>
        <jsp:include page="loan_disbursement.jsp"/>
        
        <%
        }else if(request.getParameter("load").toString().equals("000333849_ln_history")){
        %>
        <jsp:include page="loan-history.jsp"/>
        <%
            }else if(request.getParameter("load").toString().equals("00031_nw_ln")){
        %>
        <jsp:include page="loan-application-form.jsp"/>
        <%
            } else if(request.getParameter("load").toString().equals("000311_nw_ln")){
        %>
        <jsp:include page="new_loan_application_form.jsp"/>
        
         <%
            }else if(request.getParameter("load").toString().equals("00044_lp_lst")){
        %>
        <jsp:include page="loan-payment-view.jsp"/>
        
        <%} else if(request.getParameter("load").toString().equals("00041_lp_new")){%>
        <jsp:include page="loan-payment-new.jsp"/> 
        <%
            }else if(request.getParameter("load").toString().equals("00041_lp_new_gr")){
        %>
         <jsp:include page="group-loan-payment.jsp"/> 
        <%
             }else if(request.getParameter("load").toString().equals("group_loan_disbursment")){
         %>
         <jsp:include page="group_loan_disbursment.jsp"/> 
         
         <%
          } else if(request.getParameter("load").toString().equals("group_loan_history")){
         %>
         <jsp:include page="group_loan_history.jsp"/>
         <%
         } else if(request.getParameter("load").toString().equals("group_loan_collection")){    
         %>
          <jsp:include page="group_loan_collection.jsp"/>
       <%
        } else if(request.getParameter("load").toString().equals("00050_ln_type")){
        %>
        <jsp:include page="loan-type.jsp"/>
        
        <%
         }else if(request.getParameter("load").toString().equals("00060_ln_pl")){
        %>
       
        <jsp:include page="loan-plan.jsp"/> 
        
        <%
        } else if(request.getParameter("load").toString().equals("00070_py_acc")){
        %>
        <jsp:include page="group-new-account.jsp"/> 
        <%
            }else if(request.getParameter("load").toString().equals("0070_loan_group")){
        %>
        <jsp:include page="group-loan-list.jsp"/> 
        
        <%
        }else if(request.getParameter("load").toString().equals("007056_loan_group_allo")){
        %>
        <jsp:include page="group-members-loan-allocation.jsp"/> 
        <%
        } else if(request.getParameter("load").toString().equals("0077_group_apply")){
        %>
        <jsp:include page="new-group-application-form.jsp"/>
        <%
        } else if(request.getParameter("load").toString().equals("00071_py_lst")){
        %>
        <jsp:include page="payment-account-list.jsp"/> 
        <%
           } else if(request.getParameter("load").toString().equals("00072-py-bal")){
        %>
        <jsp:include page="payment-balance.jsp"/>
        <%
        } else if(request.getParameter("load").toString().equals("00080-trs-new")){
        %>
               <jsp:include page="transaction-deposit.jsp"/>
        <%
            }else if(request.getParameter("load").toString().equals("00081-trs-exp")){
        %>
        <jsp:include page="transaction-expenses.jsp"/> 
        <%
        } else if(request.getParameter("load").toString().equals("00082-trs-tr")){
        %>
        <jsp:include page="transaction-view.jsp"/> 
        <%
           }else if(request.getParameter("load").toString().equals("00083-trs-sheet")){
        %>
        <jsp:include page="transaction-expenses-sheet.jsp"/>
        <%
            }else if(request.getParameter("load").toString().equals("00090-stg-acc")){
        %>
        <jsp:include page="payment-acount-create.jsp"/>
        <%} else if(request.getParameter("load").toString().equals("00091-stg-ctg")){
          
         %>
         <jsp:include page="income-category.jsp"/>
         <%} else if(request.getParameter("load").toString().equals("00092-pay-method")){%>
         <jsp:include page="payment-methode.jsp"/>
         <%
             } else if(request.getParameter("load").toString().equals("00100-exp-cate")){
         %>
         <jsp:include page="expenses-category.jsp"/> 
         <%
             }else if(request.getParameter("load").toString().equals("00101-ballance")){
         %>
         <jsp:include page="transaction-balance.jsp"/> 
         <%
             }else if(request.getParameter("load").toString().equals("profile")){
         %>
         <jsp:include page="admin-board.jsp"/>
         <%
          }else if(request.getParameter("load").toString().equals("applicationReport")){
         %>
         <jsp:include page="Application_Report.jsp"/>
         <%
         }else if(request.getParameter("load").toString().equals("sanctionReport")){
         %>
          <jsp:include page="Sanction_Report.jsp"/>
          <%
          }else if(request.getParameter("load").toString().equals("disburseReport")){
          %>
           <jsp:include page="Disbursement_Report.jsp"/>
           <%
            }else if(request.getParameter("load").toString().equals("collectionReport")){
           %>
            <jsp:include page="Collection_Report.jsp"/>
            <%
             }else if(request.getParameter("load").toString().equals("savingReport")){
            %>
             <jsp:include page="Saving_Report.jsp"/>
         <%
             } else if(request.getParameter("load").toString().equals("001000ac")){
         %>
         <jsp:include page="user-account.jsp"/> 
        <%} else{
        %>
        <jsp:include page="error-page.jsp"/>
        <%}%>
        
    </body>
</html>
