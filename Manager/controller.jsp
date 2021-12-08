<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<jsp:useBean id="CH" class="ClassDB.DBconnection" scope="page"/>
<%
if(request.getParameter("page").toString().equals("Login")){
    if(CH.VaridateLogin(request.getParameter("password"),request.getParameter("username"),request.getParameter("user_type"))){
        session.setAttribute("Status", "1");
        session.setAttribute("UserID",CH.getUserID(request.getParameter("username")));
        response.sendRedirect("Redirection.jsp");
    }
    else{
        request.getSession().setAttribute("Status", "-1");
        response.sendRedirect("index.jsp");
    }
    
}
// MEMBER REGISTRATION
else if(request.getParameter("page").toString().equals("member_registration")){
    if(request.getParameter("operation").toString().equals("add_new")){
       CH.AddNewMember(Integer.parseInt(request.getParameter("regid")),request.getParameter("fname"),request.getParameter("mname"),request.getParameter("lname"),request.getParameter("gender"),request.getParameter("date"),request.getParameter("regional"),request.getParameter("dist"),request.getParameter("ward"),request.getParameter("phone"),request.getParameter("email"),request.getParameter("card-type"),request.getParameter("card-number"),request.getParameter("group"),request.getParameter("working"),request.getParameter("business_name"),request.getParameter("mincome"),request.getParameter("other_source"),request.getParameter("other_income"),request.getParameter("fpropety"),request.getParameter("fdesc"),request.getParameter("mpropety"),request.getParameter("sdesc"),request.getParameter("lpropety"),request.getParameter("tdesc"),request.getParameter("fee_amount"),request.getParameter("ref_name"),request.getParameter("ref_address"),request.getParameter("ref_type"),request.getParameter("ref_number"),request.getParameter("ref_contact"),request.getParameter("regdate"));
        //response.sendRedirect("menu-panel.jsp?load=00022_add_new&sms=done");
    }
    else if(request.getParameter("operation").toString().equals("delete")){
        CH.DeleteMemberDetails(Integer.parseInt(request.getParameter("code")));
        response.sendRedirect("menu-panel.jsp?load=00021_view_all");
        
    }
     else if(request.getParameter("operation").toString().equals("profile")){
        CH.Update_Profile_Details(request.getParameter("userupdate"),Integer.parseInt(request.getParameter("proID")));
        response.sendRedirect("menu-panel.jsp?load=profile&sms=updated");
        
    }
    else if(request.getParameter("operation").toString().equals("Edit")){
        CH.Update_Member_Details(request.getParameter("fname"),request.getParameter("mname"),request.getParameter("lname"),request.getParameter("gender"),request.getParameter("date"),request.getParameter("regional"),request.getParameter("dist"),request.getParameter("ward"),request.getParameter("phone"),request.getParameter("email"),request.getParameter("card-type"),request.getParameter("card-number"),request.getParameter("group"),request.getParameter("working"),request.getParameter("business_name"),request.getParameter("mincome"),request.getParameter("other_source"),request.getParameter("other_income"),request.getParameter("fpropety"),request.getParameter("mpropety"),request.getParameter("lpropety"),request.getParameter("fee_amount"),request.getParameter("memberID"));
        //response.sendRedirect("menu-panel.jsp?load=00021_view_all");
        
    }
     else if(request.getParameter("operation").toString().equals("member_Activate")){
         CH.Activate_member_details(request.getParameter("activate_code"));
        
    }
   
   
}
//LOAN PLAN  PANEEL 
 else if(request.getParameter("page").toString().equals("loan_plan")){
    if(request.getParameter("operation").toString().equals("add_plan")){
        CH.Add_loan_Plan(request.getParameter("loantype"),request.getParameter("plan"),request.getParameter("interest"),request.getParameter("penalt"));
       
    }
    else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_loan_Plan(Integer.parseInt(request.getParameter("ref")));
       
        
    }
    else if(request.getParameter("operation").toString().equals("update")){
        CH.Update_loan_Plan(request.getParameter("lnppena"),request.getParameter("lnint"),request.getParameter("lnpen"),Integer.parseInt(request.getParameter("lnid")));
       
    }
    
    
}
// LOAN PLAN ENDS 
// DEPOSIT
 
 else if(request.getParameter("page").toString().equals("deposit_panel")){
    if(request.getParameter("operation").toString().equals("deposit")){
        CH.Add_new_Disposit_Account(request.getParameter("date"),Double.parseDouble(request.getParameter("amount")),Double.parseDouble(request.getParameter("newbalance")),Integer.parseInt(request.getParameter("category")),Integer.parseInt(request.getParameter("payment")),request.getParameter("desc"),request.getParameter("AC"));
        response.sendRedirect("menu-panel.jsp?load=00080-trs-new&sms=success");
        
        
    }
    else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_Disposit_Account(Integer.parseInt(request.getParameter("code")));
        response.sendRedirect("menu-panel.jsp?load=00082-trs-tr");
        
    }
    else if(request.getParameter("operation").toString().equals("Update")){
        CH.Update_Disposit_Account(request.getParameter("date"),Double.parseDouble(request.getParameter("amount")),Double.parseDouble(request.getParameter("newbalance")),Integer.parseInt(request.getParameter("category")),Integer.parseInt(request.getParameter("payment")),request.getParameter("desc"),request.getParameter("AC"),Integer.parseInt(request.getParameter("DipositID")));
       if(CH!=null){
           response.sendRedirect("menu-panel.jsp?load=00080-trs-new&sms=success");
       }else{
            response.sendRedirect("menu-panel.jsp?load=00080-trs-new&error=rejected");
       }
       
        
    }
    
    
}
 
 //END OF DEPOSIT
//WITH DROW PANEL
 else if(request.getParameter("page").toString().equals("expenses")){
    if(request.getParameter("operation").toString().equals("update_balance")){
        CH.Add_by_Update_new_Expediture_amount(Double.parseDouble(request.getParameter("newbalance")),Double.parseDouble(request.getParameter("newbalance")));
        CH.Add_new_Expenses_Amount(Integer.parseInt(request.getParameter("AC")),Integer.parseInt(request.getParameter("expcate")),Double.parseDouble(request.getParameter("amount")),request.getParameter("expdate"),request.getParameter("desc1"));
        response.sendRedirect("menu-panel.jsp?load=00081-trs-exp&sms=success");
        
        
    }
    else if(request.getParameter("operation").toString().equals("Delete_event")){
        CH.DeleteChurchEvent(Integer.parseInt(request.getParameter("EV_ID")));
        response.sendRedirect("Adm_home.jsp?load=4");
        
    }
    else if(request.getParameter("operation").toString().equals("Update")){
       CH.Add_by_Update_new_Expediture_amount(Double.parseDouble(request.getParameter("newbalance")),Double.parseDouble(request.getParameter("newbalance")));
        CH.Update_Expenses_Amount(Integer.parseInt(request.getParameter("AC")),Integer.parseInt(request.getParameter("expcate")),Double.parseDouble(request.getParameter("amount")),request.getParameter("expdate"),request.getParameter("desc1"),Integer.parseInt(request.getParameter("TRSID")));
        response.sendRedirect("menu-panel.jsp?load=00081-trs-exp&sms=success");
        
    }
      else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_Expenses_Amount(Integer.parseInt(request.getParameter("code")));
        response.sendRedirect("menu-panel.jsp?load=00083-trs-sheet");
        
    }
    
    
}
 
 //END OF WITH DRAW
// LOAN TYPE  PANEL 
else if(request.getParameter("page").toString().equals("loan_type")){
    if(request.getParameter("operation").toString().equals("add_type")){
        CH.Add_loan_type(request.getParameter("type"),request.getParameter("desc"));
        response.sendRedirect("menu-panel.jsp?load=00050_ln_type&sms=success");
        
    }
     else if(request.getParameter("operation").toString().equals("Edit_type")){
        CH.Update_loan_type(request.getParameter("type"),request.getParameter("desc"),Integer.parseInt(request.getParameter("LID")));
        response.sendRedirect("menu-panel.jsp?load=00050_ln_type&sms=success");
        
    }
    else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_loan_type(Integer.parseInt(request.getParameter("ref")));
        
    }
    else if(request.getParameter("operation").toString().equals("Add_group")){
        CH.AddMember_Group(request.getParameter("group"));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=4");
        
    }
    else if(request.getParameter("operation").toString().equals("Delete_Group")){
        CH.DeleteGroupName(Integer.parseInt(request.getParameter("Group_ID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=5");
        
    }
    else if(request.getParameter("operation").toString().equals("Update_Group")){
        CH.UpdateMember_Group(request.getParameter("group"),Integer.parseInt(request.getParameter("Group_ID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=5");
        
        
    }
    
   
    
    else if(request.getParameter("operation").toString().equals("Add_Income")){
        CH.AddIncomeCategory(request.getParameter("income"));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=7");
        
    }
    else if(request.getParameter("operation").toString().equals("Delete_Income")){
        CH.DeleteIncomeGroup(Integer.parseInt(request.getParameter("Income_ID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=6");
        
    }
    else if(request.getParameter("operation").toString().equals("Update_Income")){
        CH.EditIncomeCategory(request.getParameter("income"), Integer.parseInt(request.getParameter("IID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=6");
        
    }
    else if(request.getParameter("operation").toString().equals("Add_Expenses")){
        CH.AddExpensesCategory(request.getParameter("expe"));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=9");
    }
    else if(request.getParameter("operation").toString().equals("Delete_Expenses")){
        CH.DeleteExpensesCatehory(Integer.parseInt(request.getParameter("EID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=8");
        
    }
    else if(request.getParameter("operation").toString().equals("Update_Expenses")){
        CH.UpdateExpensesCategory(request.getParameter("expe"), Integer.parseInt(request.getParameter("EXPID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=8");
        
    }
    else if(request.getParameter("operation").toString().equals("Add_pay_mode")){
        CH.AddPaymentMode(request.getParameter("mode"));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=11");
        
    }
    else if(request.getParameter("operation").toString().equals("Delete_Mode")){
        CH.DeletePaymentMode(Integer.parseInt(request.getParameter("PM_ID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=10");
        
    }
    else if(request.getParameter("operation").toString().equals("Edit_Mode")){
        CH.UpdatePaymentMode(request.getParameter("mode"), Integer.parseInt(request.getParameter("Mode_ID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=10");
        
    }
    else if(request.getParameter("operation").toString().equals("Add_project")){
        CH.AddnewProject(request.getParameter("proname"), request.getParameter("desc"), request.getParameter("amount"), request.getParameter("Statuses"), request.getParameter("pdate"));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=3");
        
    }
    else if(request.getParameter("operation").toString().equals("Delete_project")){
        CH.DeleteProjectDetails(Integer.parseInt(request.getParameter("Project_ID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=2");
        
    }
    else if(request.getParameter("operation").toString().equals("Edit_project")){
        CH.EditProjectDetails(request.getParameter("proname"), request.getParameter("desc"), request.getParameter("amount"), request.getParameter("Statuses"), request.getParameter("pdate"), Integer.parseInt(request.getParameter("PID")));
        response.sendRedirect("Adm_home.jsp?load=7&page_dr=2");  
    }
    
}
//LOAN TYPE  ENDS 
//LOAN GIVING START
else if(request.getParameter("page").toString().equals("loan_giving")){
    if(request.getParameter("operation").toString().equals("apply")){
      CH.Add_Loan_Application(Integer.parseInt(request.getParameter("borrower")),Integer.parseInt(request.getParameter("plan")),Integer.parseInt(request.getParameter("type")),request.getParameter("invoice"),Double.parseDouble(request.getParameter("amount")),Double.parseDouble(request.getParameter("payed_amount")),request.getParameter("applydate"),request.getParameter("loan_ap_status"));
       CH.Add_Serving_Amount(Integer.parseInt(request.getParameter("invoice")),Integer.parseInt(request.getParameter("borrower")),Double.parseDouble(request.getParameter("payed_amount")),request.getParameter("applydate"));
    }
    else if(request.getParameter("operation").toString().equals("add_pay_method")){
        CH.Add_Payment_method(request.getParameter("method"),request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00092-pay-method&sms=added");
        
    }
    else if(request.getParameter("operation").toString().equals("repay_serving")){
       CH.Add_Serving_Amount(Integer.parseInt(request.getParameter("invoice_repay")),Integer.parseInt(request.getParameter("regid_repay")),Double.parseDouble(request.getParameter("client_payment")),request.getParameter("client_payment_date"));  
        
    }
    else if(request.getParameter("operation").toString().equals("category")){
        CH.Add_income_category(request.getParameter("name"), request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00091-stg-ctg&sms=added");
        
    }
    else if(request.getParameter("operation").toString().equals("confirm_loan")){
        //CH.Edit_and_Confirm_Loan_Application(Integer.parseInt(request.getParameter("userIDR")),Integer.parseInt(request.getParameter("planID")),Integer.parseInt(request.getParameter("typeID")),Double.parseDouble(request.getParameter("amount")),Double.parseDouble(request.getParameter("IntPay")),request.getParameter("desc"),request.getParameter("date"),request.getParameter("apdate"),request.getParameter("expdate"),request.getParameter("stutas"),Integer.parseInt(request.getParameter("Ref_id")));
          if(CH.ValidateCapital_before_approve_loan(request.getParameter("amount"))){
        CH.Edit_and_Confirm_Loan_Application(request.getParameter("stutas"),request.getParameter("apdate"),request.getParameter("expdate"),request.getParameter("IntPay"),Integer.parseInt(request.getParameter("planID")),Integer.parseInt(request.getParameter("typeID")),request.getParameter("date"),Double.parseDouble(request.getParameter("amount")),request.getParameter("desc"),Integer.parseInt(request.getParameter("RefID")));
          //CH.Update_Diposit_fo_New_Loan(Double.parseDouble(request.getParameter("new_dp")),Integer.parseInt(request.getParameter("RefID")));
         CH.Add_Return_Amount(Integer.parseInt(request.getParameter("depositerID")),Integer.parseInt(request.getParameter("userloanID")),request.getParameter("apdate"));
        CH.Update_Approved_for_Loan_NO(Integer.parseInt(request.getParameter("depositerID")));
         response.sendRedirect("menu-panel.jsp?load=00033_ln_lst&sms=done");
          } else{
             response.sendRedirect("menu-panel.jsp?load=00033_ln_lst&error=check-amount"); 
          }
    }
    else if(request.getParameter("operation").toString().equals("confirm")){
        CH.Update_Confirm_Loan(Integer.parseInt(request.getParameter("User")));
        CH.Update_Release_Loan(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
       }
     else if(request.getParameter("operation").toString().equals("release")){
        CH.Update_Release_Loan(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
       }
     else if(request.getParameter("operation").toString().equals("Member_confirm")){
        CH.Update_Confirm_Loan(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=00021_view_all");
       }
     else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_Loan_Giving(Integer.parseInt(request.getParameter("code")));
        //CH.Update_Approved_for_Loan_YE(Integer.parseInt(request.getParameter("depositerID")));
        response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
       }
     else if(request.getParameter("operation").toString().equals("Delete_Return_individual")){
        CH.Delete_Loan_Return(Integer.parseInt(request.getParameter("code")));
        //CH.Update_Approved_for_Loan_YE(Integer.parseInt(request.getParameter("depositerID")));
        response.sendRedirect("menu-panel.jsp?load=00044_lp_lst");
       }
     else if(request.getParameter("operation").toString().equals("confirm-return")){
        CH.Update_Return_Status(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=00044_lp_lst");
       }
    else if(request.getParameter("operation").toString().equals("denied")){
         CH.Update_Dinaed_Loan(Integer.parseInt(request.getParameter("RefID")));
        response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
       }
     else if(request.getParameter("operation").toString().equals("update_deposit")){
        CH.Update_Diposit_fo_New_Loan(Double.parseDouble(request.getParameter("new_dp")),Integer.parseInt(request.getParameter("RefID")));
        response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
    }
    else if(request.getParameter("operation").toString().equals("manager_update")){
        CH.Manager_loan_update(request.getParameter("m_type"), request.getParameter("m_plan"),Double.parseDouble(request.getParameter("loan_order")), Double.parseDouble(request.getParameter("loan_save2")),request.getParameter("loan_ap_status1"),request.getParameter("loan_invoice_m"));
        //response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
    }
     else if(request.getParameter("operation").toString().equals("manager_approve")){
        CH.Manager_loan_approve(request.getParameter("approve"));
        //response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
    }
     else if(request.getParameter("operation").toString().equals("manager_reject")){
        CH.Manager_loan_rejected(request.getParameter("approve"));
        //response.sendRedirect("menu-panel.jsp?load=00033_ln_lst");
    }
    else if(request.getParameter("operation").toString().equals("loan_save_repayment")){
        CH.Update_serving_amount(Double.parseDouble(request.getParameter("loan_save3")),request.getParameter("repay_status_10"),request.getParameter("invoice_repay"));
    }
     else if(request.getParameter("operation").toString().equals("disburse_loan")){
        CH.Disburse_Loan(Double.parseDouble(request.getParameter("loan_disburse_new_fee")),request.getParameter("startdate"), request.getParameter("enddate"), request.getParameter("Next_Date"),request.getParameter("collection_day"),request.getParameter("total_term_days"),request.getParameter("disbuse_invoice"));
         CH.Update_Disposit_Account_disburse(Double.parseDouble(request.getParameter("balance_new_account")));
         CH.Chamge_member_status_ON_Disburse_Loan(request.getParameter("member_update_status"));
     }
     else if(request.getParameter("operation").toString().equals("collect_loan")){
        CH.Collection_amount(Integer.parseInt(request.getParameter("member_user")), Integer.parseInt(request.getParameter("loan_id")),request.getParameter("member_user_bill"),Double.parseDouble(request.getParameter("loan_disburse1")),request.getParameter("Collect_date"));
         CH.Update_loan_giving(Double.parseDouble(request.getParameter("uploan_collected_am")), request.getParameter("next_date"), request.getParameter("alert"), request.getParameter("member_user_bill"));
        CH.Add_Serving_Amount(Integer.parseInt(request.getParameter("member_user_bill")),Integer.parseInt(request.getParameter("member_user")),Double.parseDouble(request.getParameter("loan_serving")),request.getParameter("Collect_date"));  
     }
    
}
//LOAN GROUP  GIVING 
else if(request.getParameter("page").toString().equals("loan_group_giving")){
    if(request.getParameter("operation").toString().equals("apply")){
        CH.group_Application(Integer.parseInt(request.getParameter("group_name")),Integer.parseInt(request.getParameter("Gplan")),Integer.parseInt(request.getParameter("Gtype")),request.getParameter("Ginvoice"),Double.parseDouble(request.getParameter("Gamount")),request.getParameter("Gapplydate"));
    }
     else if(request.getParameter("operation").toString().equals("individual_appy")){
        CH.group_Individual_Application(Integer.parseInt(request.getParameter("app_m_id")),request.getParameter("registrationID"),request.getParameter("Group_invoiceID"),Double.parseDouble(request.getParameter("enter_amount")),Double.parseDouble(request.getParameter("fees_payed")),request.getParameter("starter"));
         CH.Add_Serving_Amount(Integer.parseInt(request.getParameter("Group_invoiceID")),Integer.parseInt(request.getParameter("app_m_id")),Double.parseDouble(request.getParameter("fees_payed")),request.getParameter("distribute_date"));
    }
      else if(request.getParameter("operation").toString().equals("group_member_update")){ 
           CH.Update_group_Members_loan_partion(Double.parseDouble(request.getParameter("amount_100")),request.getParameter("bill_id_100"),request.getParameter("ref_id_100"));
        
    }
        else if(request.getParameter("operation").toString().equals("Group_loan_adjust")){ 
         CH.Adjust_group_loan_amount(request.getParameter("adjam54"),request.getParameter("adjust_g_loan_am_00"));
        
    }
     else if(request.getParameter("operation").toString().equals("confirm_loan")){
        //CH.Edit_and_Confirm_Loan_Application(Integer.parseInt(request.getParameter("userIDR")),Integer.parseInt(request.getParameter("planID")),Integer.parseInt(request.getParameter("typeID")),Double.parseDouble(request.getParameter("amount")),Double.parseDouble(request.getParameter("IntPay")),request.getParameter("desc"),request.getParameter("date"),request.getParameter("apdate"),request.getParameter("expdate"),request.getParameter("stutas"),Integer.parseInt(request.getParameter("Ref_id")));
        if(CH.ValidateCapital_before_approve_loan(request.getParameter("amount"))){
          CH.Edit_and_Confirm_Loan_Group_Application(request.getParameter("stutas"),request.getParameter("apdate"),request.getParameter("expdate"),request.getParameter("IntPay"),Integer.parseInt(request.getParameter("planID")),Integer.parseInt(request.getParameter("typeID")),request.getParameter("date"),Double.parseDouble(request.getParameter("amount")),request.getParameter("desc"),Integer.parseInt(request.getParameter("RefID")));
              CH.Update_Diposit_fo_New_Loan_Group(Double.parseDouble(request.getParameter("new_dp")));
               CH.Add_Group_Return_Amount(Integer.parseInt(request.getParameter("depositerID")),Integer.parseInt(request.getParameter("userloanID")),request.getParameter("apdate"));
            CH.Update_Group_Approved_for_Loan_NO(Integer.parseInt(request.getParameter("depositerID")));
         response.sendRedirect("menu-panel.jsp?load=0070_loan_group&sms=done");
         }else{
             response.sendRedirect("menu-panel.jsp?load=0070_loan_group&error=check-amount");
         }
    }
      else if(request.getParameter("operation").toString().equals("disburse_loan")){
          CH.Group_Disburse_Loan(Double.parseDouble(request.getParameter("serving_acc_individual")),request.getParameter("startdate"), request.getParameter("enddate"),request.getParameter("total_term_days"),request.getParameter("nextdate"),request.getParameter("loanid001"),request.getParameter("regid001"));
        CH.Chamge_member_status_ON_Disburse_Loan(request.getParameter("regid001"));
         CH.Update_Disposit_Account_disburse(Double.parseDouble(request.getParameter("loan_disburse_new_2")));
     }
       else if(request.getParameter("operation").toString().equals("Group_loan_status")){ 
         CH.Disburse_Group_loan_status(request.getParameter("collection_day_2"),request.getParameter("disburseInvoice"));
        
    }
       else if(request.getParameter("operation").toString().equals("collect_loan")){
         CH.Group_member_collection(Integer.parseInt(request.getParameter("member_user")),Integer.parseInt(request.getParameter("loan_id")),request.getParameter("member_user_bill"),Double.parseDouble(request.getParameter("loan_disburse1")),request.getParameter("Collect_date"),request.getParameter("alert"));
         CH.Update_loan_giving_group(Double.parseDouble(request.getParameter("uploan_collected_am")),request.getParameter("next_date"), request.getParameter("alert"), request.getParameter("member_user_bill"),request.getParameter("member_user"));
         CH.Add_Serving_Amount(Integer.parseInt(request.getParameter("member_user_bill")),Integer.parseInt(request.getParameter("member_user")),Double.parseDouble(request.getParameter("loan_serving")),request.getParameter("Collect_date"));  
       }
        else if(request.getParameter("operation").toString().equals("Group_loan-Finish_status")){ 
         CH.Finish_Group_loan_status(request.getParameter("disburse_status"));
        
    }
     else if(request.getParameter("operation").toString().equals("confirm")){
        CH.Release_Group_Loan(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group&sms=done");
       }
    else if(request.getParameter("operation").toString().equals("release")){
        CH.Release_Group_Loan(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group");
       }
      else if(request.getParameter("operation").toString().equals("Group_confirm")){
        CH.Update_Confirm_Group_Loan(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=00070_py_acc");
       }
      else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_Group_Loan_Giving(Integer.parseInt(request.getParameter("code")));
        //CH.Update_Approved_for_Loan_YE(Integer.parseInt(request.getParameter("depositerID")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group");
       }
      else if(request.getParameter("operation").toString().equals("Delete_Return")){
        CH.Delete_Group_Loan_Return(Integer.parseInt(request.getParameter("code")));
        //CH.Update_Approved_for_Loan_YE(Integer.parseInt(request.getParameter("depositerID")));
        response.sendRedirect("menu-panel.jsp?load=00041_lp_new_gr");
       }
       else if(request.getParameter("operation").toString().equals("Delete_Return_individual")){
        CH.Delete_Group_Loan_Return(Integer.parseInt(request.getParameter("code")));
        //CH.Update_Approved_for_Loan_YE(Integer.parseInt(request.getParameter("depositerID")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group");
       }
        else if(request.getParameter("operation").toString().equals("Delete_individual_offer")){
        CH.Delete_Individual_Offer(Integer.parseInt(request.getParameter("code")));
        //CH.Update_Approved_for_Loan_YE(Integer.parseInt(request.getParameter("depositerID")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group");
       }
         else if(request.getParameter("operation").toString().equals("Update_individual_offer")){
        CH.Update_Group_individual_amount(Double.parseDouble(request.getParameter("amount")),Integer.parseInt(request.getParameter("userID1")),Integer.parseInt(request.getParameter("LoanID1")));
        //CH.Update_Approved_for_Loan_YE(Integer.parseInt(request.getParameter("depositerID")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group");
       }
       
      else if(request.getParameter("operation").toString().equals("confirm-return")){
        CH.Update_Return_Status_Group(Integer.parseInt(request.getParameter("User")));
        response.sendRedirect("menu-panel.jsp?load=00041_lp_new_gr");
       }
    else if(request.getParameter("operation").toString().equals("denied")){
        CH.Update_Dinaed_Group_Loan(Integer.parseInt(request.getParameter("RefID")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group&sms=done");
       }
     else if(request.getParameter("operation").toString().equals("individual_apply")){
          CH.Individual_allocation(Integer.parseInt(request.getParameter("userID1")),Integer.parseInt(request.getParameter("GroupID1")),Integer.parseInt(request.getParameter("LoanID1")),Double.parseDouble(request.getParameter("amount")),request.getParameter("date"));
             response.sendRedirect("menu-panel.jsp?load=0070_loan_group&sms=done");
       
       }
       else if(request.getParameter("operation").toString().equals("loan_accept")){ 
        CH.Accep_Group_loan(request.getParameter("acept_to_reject"));
        
    }
         else if(request.getParameter("operation").toString().equals("loan_reject")){ 
         CH.Reject_Group_loan(request.getParameter("acept_to_reject"));
        
    }
     else if(request.getParameter("operation").toString().equals("delete")){
        CH.DeleteGloup_Loan_OfferDetails(Integer.parseInt(request.getParameter("code")));
        if(CH!=null){
        response.sendRedirect("menu-panel.jsp?load=00021_view_all");
        }else{
            
        }
        
        
    }
    
}
//END OF  LOAN GROUP GIVING
//LOAM RETURN
else if(request.getParameter("page").toString().equals("Return_loan")){
    if(request.getParameter("operation").toString().equals("user_return")){
        CH.Add_Individual_Monthl_Amount(Integer.parseInt(request.getParameter("userid")), Integer.parseInt(request.getParameter("loanid")),Double.parseDouble(request.getParameter("rtamount")),request.getParameter("rtdate"));
        CH.Update_deposit_Individual_return(Double.parseDouble(request.getParameter("pay")));
        response.sendRedirect("menu-panel.jsp?load=00044_lp_lst&sms=success");
    }
    if(request.getParameter("operation").toString().equals("group_return")){
        if(CH.ValidateLoan_Individual_pay(Integer.parseInt(request.getParameter("loanid")))){
        CH.Add_Group_Monthl_Amount(Integer.parseInt(request.getParameter("userid")), Integer.parseInt(request.getParameter("loanid")),Double.parseDouble(request.getParameter("rtamount")),request.getParameter("rtdate"));
        CH.Update_deposit_Group_return(Double.parseDouble(request.getParameter("pay")));
        response.sendRedirect("menu-panel.jsp?load=0070_loan_group&sms=success");
        }else{
          response.sendRedirect("menu-panel.jsp?load=0070_loan_group&pay_error=code:403");      
        }
    }
}
//END LAON RETURN 
    
//LOAN GIVING ENDS 
// SETTING PANEL START 
else if(request.getParameter("page").toString().equals("setting")){
    if(request.getParameter("operation").toString().equals("add_pay_account")){
        CH.Add_Payment_account(request.getParameter("pay"),request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00090-stg-acc&sms=success");
        
        
    }
    else if(request.getParameter("operation").toString().equals("add_pay_method")){
        CH.Add_Payment_method(request.getParameter("method"),request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00092-pay-method&sms=added");
        
    }
    else if(request.getParameter("operation").toString().equals("Edit_pay_method")){
        CH.Edit_Payment_Methode(request.getParameter("method"),request.getParameter("description"),Integer.parseInt(request.getParameter("code")));
        response.sendRedirect("menu-panel.jsp?load=00092-pay-method&sms=updated");
        
    }
     else if(request.getParameter("operation").toString().equals("Delete_Pay_Methode")){
        CH.Delete_Paymethode(Integer.parseInt(request.getParameter("code")));
        response.sendRedirect("menu-panel.jsp?load=00091-stg-ctg&sms=added");
        
    }
    else if(request.getParameter("operation").toString().equals("category")){
        CH.Add_income_category(request.getParameter("name"), request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00091-stg-ctg&sms=added");
        
    }
     else if(request.getParameter("operation").toString().equals("Edit_category")){
        CH.Edit_Income_Category(request.getParameter("name"), request.getParameter("description"),Integer.parseInt(request.getParameter("incID")));
        response.sendRedirect("menu-panel.jsp?load=00091-stg-ctg&sms=added");
        
    }
     else if(request.getParameter("operation").toString().equals("Edit_Expenses_category")){
        CH.Edit_Expenses_Category(request.getParameter("name"), request.getParameter("description"),Integer.parseInt(request.getParameter("incID")));
        response.sendRedirect("menu-panel.jsp?load=00100-exp-cate&sms=added");
        
    }
      else if(request.getParameter("operation").toString().equals("Delete_Expenses_Category")){
        CH.Delete_Expenses_Category(Integer.parseInt(request.getParameter("code")));
        response.sendRedirect("menu-panel.jsp?load=00100-exp-cate&sms=deleted");
        
    }
     else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_Income_Category(Integer.parseInt(request.getParameter("code")));
        response.sendRedirect("menu-panel.jsp?load=00091-stg-ctg&sms=added");
        
    }
     else if(request.getParameter("operation").toString().equals("expense_category")){
        CH.Add_expense_category(request.getParameter("name"), request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00100-exp-cate&sms=added");
        
    }
     else if(request.getParameter("operation").toString().equals("Add_User")){
         if(CH.ConfirmUsername(request.getParameter("username"))){
          response.sendRedirect("menu-panel.jsp?load=001000ac&error=code0000282292929"); 
         }
         else{
        CH.Add_Users(Integer.parseInt(request.getParameter("userID")), request.getParameter("username"),request.getParameter("utype"), request.getParameter("pass"));
        response.sendRedirect("menu-panel.jsp?load=001000ac&sms=added");
         } 
    }
      else if(request.getParameter("operation").toString().equals("reset")){
         if(CH.ConfirmUsername(request.getParameter("username"))){
          response.sendRedirect("index.jsp"); 
         }
         else{
        CH.Add_Users(Integer.parseInt(request.getParameter("userID")), request.getParameter("username"),request.getParameter("utype"), request.getParameter("pass"));
        response.sendRedirect("menu-panel.jsp?load=001000ac&sms=added");
         } 
    }
     else if(request.getParameter("operation").toString().equals("Update_User")){
        CH.Update_Users( request.getParameter("username"),request.getParameter("utype"), request.getParameter("pass"), Integer.parseInt(request.getParameter("USERIDD")));
        response.sendRedirect("menu-panel.jsp?load=001000ac&sms=done");
        
    }
     else if(request.getParameter("operation").toString().equals("Block_User")){
        CH.Block_Users(Integer.parseInt(request.getParameter("USERIDD")));
        response.sendRedirect("menu-panel.jsp?load=001000ac&sms=done");
        
    }
    else if(request.getParameter("operation").toString().equals("add_regional")){
        CH.Create_New_Regional(request.getParameter("nwcountry"),request.getParameter("newregional"));
        
        
    } 
     else if(request.getParameter("operation").toString().equals("add_district")){
        CH.Create_New_District(request.getParameter("regid"),request.getParameter("newdistrict"));
        
        
    } 
    
}
//reset
 else if(request.getParameter("page").toString().equals("Reset")){
         if(CH.ConfirmUsername(request.getParameter("user"))){
             CH.Reset_Password(request.getParameter("pass"),request.getParameter("user"));
          response.sendRedirect("index.jsp?redirection=verify&sms=good"); 
         }
         else{
        response.sendRedirect("index.jsp?redirection=verify&code=error"); 
         } 
    }
//end

// SETTING  PANEL  ENDS 
//GROUP LOAN START 
else if(request.getParameter("page").toString().equals("Group_panel")){
    if(request.getParameter("operation").toString().equals("add_group")){
        CH.Add_Group_Loan(request.getParameter("group"), request.getParameter("desc"));
        response.sendRedirect("menu-panel.jsp?load=00070_py_acc&sms=success");
        
        
    }
    else if(request.getParameter("operation").toString().equals("Edit_group")){
        CH.Add_Group_Loan_To_Edit(request.getParameter("group"),request.getParameter("desc"),Integer.parseInt(request.getParameter("GID")));
        response.sendRedirect("menu-panel.jsp?load=00070_py_acc&sms=success");
        
    }
    else if(request.getParameter("operation").toString().equals("add_pay_method")){
        CH.Add_Payment_method(request.getParameter("method"),request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00092-pay-method&sms=added");
        
    }
    else if(request.getParameter("operation").toString().equals("Delete")){
        CH.Delete_Group_Details(Integer.parseInt(request.getParameter("IDS")));
        if(CH!=null){
        response.sendRedirect("menu-panel.jsp?load=00070_py_acc&sms=success");
        }else{
           response.sendRedirect("menu-panel.jsp?load=00070_py_acc&error=code0070"); 
        }
        
    }
    else if(request.getParameter("operation").toString().equals("category")){
        CH.Add_income_category(request.getParameter("name"), request.getParameter("description"));
        response.sendRedirect("menu-panel.jsp?load=00091-stg-ctg&sms=added");
        
    }
    
    
    
}

//GROUP LOAN 

else if(request.getParameter("page").toString().equals("finance")){
    if(request.getParameter("operation").toString().equals("Add_income")){
        CH.AddNewIncomePayment(Integer.parseInt(request.getParameter("IDD")),Integer.parseInt(request.getParameter("Igroups")),request.getParameter("amounts"),request.getParameter("Pmodes"),request.getParameter("descr"),request.getParameter("pdate"));
        response.sendRedirect("Adm_home.jsp?load=5");
        
    }
    else if(request.getParameter("operation").toString().equals("Edit_income")){
        CH.EditIncomePayment(Integer.parseInt(request.getParameter("Igroups")),request.getParameter("amounts"),request.getParameter("Pmodes"),request.getParameter("descr"),request.getParameter("pdate"),Integer.parseInt(request.getParameter("IDD")));
        response.sendRedirect("Adm_home.jsp?load=5"); 
    }
   else if(request.getParameter("operation").toString().equals("Add_IGroup")){
        CH.AddGroupPyament(Integer.parseInt(request.getParameter("Igroup")), Integer.parseInt(request.getParameter("pid")),request.getParameter("gpay"),request.getParameter("des"),request.getParameter("dates"));
        response.sendRedirect("Adm_home.jsp?load=5&page_dr=3");
    }
   else if(request.getParameter("operation").toString().equals("Delete_Group")){
       CH.DeleteIcomeGroup(Integer.parseInt(request.getParameter("GP_ID")));
       response.sendRedirect("Adm_home.jsp?load=5&page_dr=3");
   }
   else if(request.getParameter("operation").toString().equals("Update_Group")){
      CH.EditGroupPyament(Integer.parseInt(request.getParameter("Igroup")),Integer.parseInt(request.getParameter("pid")),request.getParameter("gpay"),request.getParameter("des"),request.getParameter("dates"), Integer.parseInt(request.getParameter("GPID")));
      response.sendRedirect("Adm_home.jsp?load=5&page_dr=3");
       
   }
  
}
else if(request.getParameter("page").toString().equals("create")){
    if(request.getParameter("ac").toString().equals("new")){
        CH.create_new(request.getParameter("new_user"),request.getParameter("pass1"),request.getParameter("pass2"));
     response.sendRedirect("login.jsp");
      
    }
    
 }
else if(request.getParameter("page").toString().equals("logout")){
    session.setAttribute("status","0");
    response.sendRedirect("../index.jsp");
}

%>
