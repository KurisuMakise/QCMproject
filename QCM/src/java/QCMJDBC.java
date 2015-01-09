
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

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

    public QCMJDBC() {

        Connection con = mc.connect();

    }

    public String getQuestion(int numQuestion) {
        String question = null;

        try {
            Statement S = con.createStatement();
            String select = "SELECT question from question WHERE id_question= " + numQuestion;
            ResultSet RS = S.executeQuery(select);
            while (RS.next()) {
                question = RS.getString("question");
            }

        } catch (SQLException ex) {
            Logger.getLogger(QCMJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return question;
    }

    public ArrayList<String> getReponse(int numQuestion) {
        ArrayList<String> selectrep = new ArrayList<String>();
        try {

            Statement S = con.createStatement();

            String select = "SELECT reponse from reponse WHERE reponse.question_idquestion= " + numQuestion;
            ResultSet RS = S.executeQuery(select);
            while (RS.next()) {
                String str = RS.getString("question");
                selectrep.add(str);
            }

        } catch (SQLException ex) {
            Logger.getLogger(QCMJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return selectrep;
    }

}
