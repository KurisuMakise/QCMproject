
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author hitema
 */
public class main extends HttpServlet {

    String msgErreur = null;
    String urlErreur = null;
    String urlPageformulaire = null;

    String urlPagededepart = null;

    String urlPageresultat = null;

    QCM qcm = null;

    QCMJDBC qcmjdbc = null;
    
    public main() {
        qcmjdbc = new QCMJDBC();
       
    }
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        if (msgErreur != null) {

            request.setAttribute("msgErreur", msgErreur);

            getServletContext().getRequestDispatcher(urlErreur).forward(request, response);

        }

        HttpSession session = request.getSession();

        if (request.getAttribute("reponseButtonRadio") != null) {

            int reponseButtonRadio = Integer.parseInt(request.getParameter("reponseButtonRadio"));
            int reponsenumQuestion = Integer.parseInt(request.getParameter("numQuestion"));
            int numColonne = reponsenumQuestion % 4;
            qcm.getThemeQuestion()[numColonne].setValueReponse(reponseButtonRadio);
            reponsenumQuestion++;
            int numQuestion = Integer.parseInt(request.getParameter("numQuestion"));
            numQuestion++;
            request.setAttribute("question", qcmjdbc.getQuestion(numQuestion)); 
            
            
            ArrayList<String> array = qcmjdbc.getReponse(numQuestion);
            request.setAttribute("reponseA", array.get(0).toString()); 
            request.setAttribute("reponseB", array.get(1).toString()); 
            
            request.setAttribute("QCM", qcm);
            
        }
        

    }

    public void init() {

// on recupere les parametres d'initialisation 
        ServletConfig config = getServletConfig();
        urlPageformulaire = config.getInitParameter("urlPageformulaire");

        urlPagededepart = config.getInitParameter("urlPagedepart");
        urlPageresultat = config.getInitParameter("urlPageresultat");
    }

}
