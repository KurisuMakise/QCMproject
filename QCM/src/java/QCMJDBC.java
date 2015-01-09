
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hitema
 */
public class QCMJDBC {
    
    MyConnexion mc = new MyConnexion();
    Connection con = null;
    
    public QCMJDBC(){
        
        
        
        
        
    
        Connection con = mc.connect();
        
      
        
    }
    
    public String getQuestion(int numQuestion) throws SQLException{
        
        String question = null;
        Statement S=con.createStatement();
        String select= "SELECT question from question WHERE id_question= "+numQuestion;
        ResultSet RS=S.executeQuery(select);
         while(RS.next()){
             question=RS.getString("question");
         }
        return question;
        
    }
    
    public ArrayList<String> getReponse(int numQuestion) throws SQLException{
        ArrayList<String> selectrep = new ArrayList<String>();
        Statement S=con.createStatement();
        
        String select= "SELECT reponse from reponse WHERE reponse.question_idquestion= "+numQuestion;
        ResultSet RS=S.executeQuery(select);
         while(RS.next()){
             String str=RS.getString("question");
             selectrep.add(str);
         }
        return selectrep;
    }
    
    
}
