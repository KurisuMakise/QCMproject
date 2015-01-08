<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// variables qui contiendront le numéro de la question en cours, les questions et possibilitées de réponses du questionnaire
    int numQuestion;
    String Question;
    String ReponseA;
    String ReponseB;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questionnaire</title>
    </head>
    <body>
        <center>Questionnaire</center>
        <form name="frmImpots" action="/QCM/main" method="POST">
                <table>
                    <tr>Question n° <!--requete pour avoir le numero de la question--></tr>
                    <tr>
                        <td><!--requete pour avoir la question corresponante--></td>
                        <td>
                            <input type="radio" name="reponse" value="A"/>
                            <input type="radio" name="reponse" value="B"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="OK"/>
                        </td>
                    </tr>
                </table>
            </form>        
    </body>
</html>



<!-- Tronche que ca doit avoir

                Questionnaire
                
    Question n°X
    
    Question................................ ?
    O   Reponse A
    O   Reponse B
    
    <> OK    

-->