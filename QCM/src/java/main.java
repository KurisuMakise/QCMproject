
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
    
    String msgErreur=null;
    String urlErreur=null;
    QCM qcm=null;
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
        if(msgErreur!=null){
            
            request.setAttribute("msgErreur",msgErreur);
            
            getServletContext().getRequestDispatcher(urlErreur).forward(request,response);
            
        }
        
        int rep=-1;
        int reponseButtonRadio=Integer.parseInt(request.getParameter("reponseButtonRadio")); 
        int reponsenumQuestion=Integer.parseInt(request.getParameter("reponsenumQuestion")); 
        int numColonne = reponsenumQuestion%4;
        reponsenumQuestion++;
        int numQuestion=Integer.parseInt(request.getParameter("numQuestion")); 
        numQuestion++;
    }
    
    
}
