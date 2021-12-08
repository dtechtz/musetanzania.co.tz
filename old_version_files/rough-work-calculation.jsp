<div class="panel-2">
                    <div class="panel-2-header">
                        Summary of Application
                    </div>
                    <div class="panel-2-body">
                       
                        <input type="text" id="number2">
                        <input type="text" id="result">
                        <input type="submit" value="Update Details " class="botton" onclick="add_number()">
                        <script>
                         function add_number() {

            var first_number = parseInt(document.getElementById("number1").value);
            var second_number = parseInt(document.getElementById("number2").value);
            var result = first_number + second_number;

            document.getElementById("result").value = result;
             }
        </script>
                    </div>
            </div>


 public  void Edit_and_Confirm_Loan_Application(int userid,int plan, int type, double loan,double Inpay,String purpose, String date,String apdate,String expdate,String status,int LoanID){
        PreparedStatement pst =null;
        try {
             if(con.isClosed()){
               try {
                   ClassDB.DBconnection.this.EstablichConnection();
               } catch (ClassNotFoundException ex) {
                   Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
               }
            }
            pst = con.prepareStatement("UPDATE loan_giving SET Reg_ID=?,Plan_ID=?,Type_ID=?,Loan_Amount=?,Payable_Amount=?,Purpose=?,Date=?,Approve_Date=?,Expire_Date=?,Status=? WHERE ID=?");
            pst.setInt(1, userid);
            pst.setInt(2, plan);
            pst.setInt(3, type);
            pst.setDouble(4, loan);
            pst.setDouble(5, Inpay);
            pst.setString(6, purpose);
            pst.setString(7, date);
            pst.setString(8, apdate);
            pst.setString(9, expdate);
            pst.setString(10, status);
            pst.setInt(11, LoanID);
            pst.executeUpdate();
            
           
        } catch (SQLException ex) {
            Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
               if(con != null)  try {
                        con.close();
                        
                      } catch (SQLException ex) {
                 Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
             }
             if(pst != null)  try {
                        pst.close();
                        
                      } catch (SQLException ex) {
                 Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
             }
             if(pst != null)  try {  
              pst.close();
                 } catch (SQLException ex) {
                  Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
              }   
                       
                    
         }
    }