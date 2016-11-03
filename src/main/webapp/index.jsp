<%@ page import="java.util.*" %> <!-- importation des utilitaires JAVA-->
<html>
<head> 
    
</head>
<<<<<<< HEAD
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
=======
	<body> 
	        <p> $ {nom} </p>
>>>>>>> a9a93bd0480a136d95dcc7c07c7f6625314ab6cb
	</body>

</html>
