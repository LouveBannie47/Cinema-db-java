# Cinema-db-java

Projet Java permettant de se connecter à une base de données MySQL et d’afficher les informations des acteurs (nom, prénom, nationalité) à l’aide de JDBC.

# Contenu du projet

- `src/jdbr_mysql_cinemaDB/MainConnectDB.java` : fichier principal Java
- `cinemadb.sql` : export de la base de données MySQL
- `README.md` : ce fichier

# Prérequis

- Java JDK 8 ou supérieur
- MySQL installé
- Un IDE (Eclipse recommandé)
- Le driver JDBC MySQL

## Installation du driver JDBC

Télécharger le driver MySQL Connector : https://dev.mysql.com/downloads/connector/j/

Puis dans Eclipse :
- Clic droit sur le projet
- Build Path
- Add External JARs
- Ajouter le fichier .jar téléchargé

# Importation la base de données dans MySQL

`mysql -u root -p < cinemadb.sql`

<img width="1916" height="1003" alt="Capture d&#39;écran 2026-03-26 142310" src="https://github.com/user-attachments/assets/2317c80a-dd8a-4676-8a01-f8778848fb98" />

# Exécution du projet

- Ouvrir le projet dans Eclipse
- Vérifier les informations de connexion dans le code :
  String url = "jdbc:mysql://localhost/cinemadb";
  String login = "root";
  String passwd = "root";
- Lancer le programme : Run As → Java Application

# Exemple de sortie

==================== LISTE DES ACTEURS ====================
com.mysql.cj.jdbc.result.ResultSetImpl@5136d012
(1, 'DiCaprio', 'Leonardo', 'Américaine')
(2, 'Johansson', 'Scarlett', 'Américaine')

==================== LISTE DES FILMS ====================
com.mysql.cj.jdbc.result.ResultSetImpl@7690781
(1, 'Inception', '2010', 'Science-fiction')148', 'Christopher Nolan')
(2, 'Lucy', '2014', 'Action')89', 'Luc Besson')
