<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<html> 
<head> 
<title>Connection with mysql database</title> 
</head> 
<body>
<h1>Connection status </h1>
<%

Connection con=null; 
try{  
    Class.forName("com.mysql.jdbc.Driver");  
    con=DriverManager.getConnection("jdbc:mysql://localhost/employee","root","");  
    
    if(!con.isClosed())
    {
    	out.println("sucess");
    }
}catch(Exception e){System.out.println(e);}  
%>
</body> 
</html>