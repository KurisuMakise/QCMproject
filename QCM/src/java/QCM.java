/**
 *
 * @author Takumi
 */
public class QCM {
    private QCMColonne[] themeQuestion = new QCMColonne[4];

    public QCM() {
            this.themeQuestion[0] = new QCMColonne("E","I");
            this.themeQuestion[1] = new QCMColonne("S","N");
            this.themeQuestion[2] = new QCMColonne("T","F");
            this.themeQuestion[3] = new QCMColonne("J","P");
    }
    
    public String getFullLetter() {
        return themeQuestion[0].getMostClickReponseString()+
                themeQuestion[1].getMostClickReponseString()+
                themeQuestion[2].getMostClickReponseString()+
                themeQuestion[3].getMostClickReponseString();
    }

    public QCMColonne[] getThemeQuestion() {
        return themeQuestion;
    }
    
}