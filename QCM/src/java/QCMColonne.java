/**
 *
 * @author Takumi
 */
public class QCMColonne {
    private int[] reponse = {0,0};
    private String[] lettre = new String[2];

    public QCMColonne(String lettre1, String lettre2) {
        lettre[0] = lettre1;
        lettre[1] = lettre2;
    }
    
    
    
    public int getResultatOnReponse(int index) {
        return reponse[index];
    }

    public void setValueReponse(int index, int value) {
        this.reponse[index] = value;
    }
}
