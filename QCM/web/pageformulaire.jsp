<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// variables qui contiendront le numéro de la question en cours, les questions et possibilitées de réponses du questionnaire
    int numQuestion;
    String question;
    String reponseA;
    String reponseB;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questionnaire</title>
        <script language="JavaScript" type="text/javascript">
            function validerReponse()
            {
                
            }
        </script>
    </head>
    <body>
        <center>Questionnaire</center>
        <form name="frmImpots" action="/QCM/main" method="POST">
                <table>
                    <tr>Question n° <!--     numQuestion     requete pour avoir le numero de la question--></tr>
                    <tr>
                        <td><!--    question        requete pour avoir la question corresponante--></td>
                        <td>
                            <input type="radio" name="reponse" value="A"/> <!--     reponseA    requete pour avoir la reponseA correspondante-->
                            <input type="radio" name="reponse" value="B"/> <!--     reponseB    requete pour avoir la reponseB correspondante-->
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" value="OK" onclick="validerReponse()"/>
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