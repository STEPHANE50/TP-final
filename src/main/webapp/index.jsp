<%@ page import="java.util.*" %> <!-- importation des utilitaires JAVA-->
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="oracle.jdbc.OracleDriver"%>
<%@ page import="java.sql.*"%>
<html>
<head> 
    
</head>
	<body > 
		<%String databaseUrl = "jdbc:oracle:thin:SYSTEM/manon.01@localhost:1521:XE";%>
		<%String requeteSql = "SELECT NAME,CITY FROM TEAMS where CITY='San Francisco'";%>
		<% 
        	DriverManager.registerDriver(new OracleDriver());


        Connection connexion = DriverManager.getConnection(databaseUrl);
        Statement requete = connexion.createStatement();
        ResultSet resultat = requete.executeQuery(requeteSql);
        while (resultat.next()) {
            String nom = resultat.getString("NAME");
            out.println(nom);
            }
         
        %>
        ${nom}
	</body>

</html>
