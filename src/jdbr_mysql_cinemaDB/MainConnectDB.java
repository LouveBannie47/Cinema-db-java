package jdbr_mysql_cinemaDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MainConnectDB {

public static void main(String[] args) {
	System.out.println(" programme de connection a cinemaDB dans mysql");

	String url = "jdbc:mysql://localhost/cinemadb";

	String login = "root";

	String passwd = "root";

		
		Connection cn =null; 

		Statement st =null;

		ResultSet rs =null;
 

		try {

			// Etape 1 : Chargement du driver

			Class.forName("com.mysql.jdbc.Driver");

			//Class.forName("com.mysql.cj.jdbc.Driver");
			

			// Etape 2 : récupération de la connexion

			cn = DriverManager.getConnection(url, login, passwd);


			// Etape 3 : Création d'un statement

			st = cn.createStatement();


            System.out.println("==================== LISTE DES ACTEURS ====================");
            
            String sqlActeurs = "SELECT * FROM tableacteur";
            
            // Etape 4.1 : exécution requête
            
            rs = st.executeQuery(sqlActeurs);
            
            // Si récup données alors étapes 5 (parcours Resultset)
            
            System.out.println(rs);
            
            while (rs.next()) {
                
            	System.out.println(
            		    "(" 
            		    + rs.getInt("idActeur") + ", '"
            		    
            		    + rs.getString("nomActeur") + "', '"
            		    
            		    + rs.getString("prenomActeur") + "', '"
            		    
            		    + rs.getString("nationalite") + "')"
            		    
            		);
                
            }

         
            System.out.println("\n==================== LISTE DES FILMS ====================");
            
            String sqlFilms = "SELECT * FROM tablefilm";
            
            // Etape 4.2 : exécution requête
            
            rs = st.executeQuery(sqlFilms);
            
            // Si récup données alors étapes 5 (parcours Resultset)
            
            System.out.println(rs);
            
            while (rs.next()) {
            	
            	System.out.println(
            		    "(" 
            		    + rs.getInt("idFilm") + ", '"
            		    
            		    + rs.getString("titre") + "', '"
            		    
            		    + rs.getString("anneeSortie") + "', '"
            		    
            		    + rs.getString("genre") + "')"
            		    
            		    + rs.getString("dureeMinute") + "', '"
            		    
            		    + rs.getString("realisateur") + "')"
            		    
            		);
                
            }

		}
		catch (ClassNotFoundException e) {//si il y un probleme de driver

			e.printStackTrace();

		}
		catch (SQLException e) {//si il y un probleme de sql

			e.printStackTrace();

		}


	}

}
