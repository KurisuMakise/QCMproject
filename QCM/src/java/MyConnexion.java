/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author hitema
 */
public class MyConnexion {
    
    
    private String url ="jdbc:mysql://localhost/qcm_bdd";
    private String user = "root";
    private String pass = "";
    
    //constuctor     
    public MyConnexion(){
        
        try{
            //Instanciation d'un com.mysql.jdbc.Driver.
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("DRIVER MYSQL DEMARRE");
            
        }
        catch(ClassNotFoundException ex){
            System.out.println("Impossible de trouver le Driver");
            
        }
               
    }
    
    public Connection connect(){
        
        Connection con = null;
        
        try{
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("CONNECTION ETABLIE");
            
        }
        catch(SQLException sql){
            System.out.println("CImpossible d'établir une connection");
        }
        
        return con;
    }
    
    public void close(Connection con){
        try{
            
            con.close();
            System.out.println("Connexion fermée");
        }
        catch(SQLException sql){
            System.out.println("Pas de fermeture(pas de connexion)");
        }
    }
}

