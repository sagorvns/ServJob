<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.PreparedStatement"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
//String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "servjob";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;

Statement statement = null;



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

String id=request.getParameter("id");

if (request.getParameter("b1")!=null){
    
	
		
try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="Update job_req set status=? WHERE id="+id;
PreparedStatement ps= null;
ps =connection.prepareStatement(sql);
ps.setString(1,"2");

int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("admin.jsp");
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}

}
else{
			
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="Update job_req set status=? WHERE id="+id;
PreparedStatement ps= null;
ps =connection.prepareStatement(sql);
ps.setString(1,"3");

int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("admin.jsp");
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
	
}

%>
</body>
</html>