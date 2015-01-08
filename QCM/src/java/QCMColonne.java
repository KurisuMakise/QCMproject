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
    
    /**
     * Retoune la valeur correspondante à la réponse la plus utilisé
     * @return 
     */
    public int getMostClickReponseValueInt() {
        if(this.reponse[0] >= this.reponse[1])
            return reponse[0];
        else
            return reponse[1];
    }
    
    /**
     * Retoune le numero correspondant à la réponse la plus utilisé
     * @return 
     */
    public int getMostClickReponseInt() {
        if(this.reponse[0] >= this.reponse[1])
            return 0;
        else
            return 1;
    }
    
    /**
     * Retoune la lettre correspondant à la réponse la plus utilisé
     * @return 
     */
    public String getMostClickReponseString() {
        if(this.reponse[0] >= this.reponse[1])
            return this.lettre[0];
        else
            return this.lettre[1];
    }

    public void setValueReponse(int index) {
        this.reponse[index]++;
    }
}
