<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.PreparedStatement"%>
<%
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
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
     	Connection connection = null;	
		Statement statement = null;
		String name= "aaa";
		String name2= "aaa";
		String s1 = request.getParameter("job_title");
		String s2= request.getParameter("company_id");
		String s3= request.getParameter("job_location");
		float s4 = Float.parseFloat(request.getParameter("job_salary"));
		String s5= request.getParameter("skill");
		String s6 = request.getParameter("eligibility");
		String s7= request.getParameter("discription");
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st=connection.createStatement();

int i=st.executeUpdate("insert into job (job_title,company_id,job_location,job_salary,eligibility,skill,discription) values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");

if(i > 0)
{
	response.sendRedirect("index.jsp");
}else
{
	response.sendRedirect("job.jsp");	
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>				
</body>
</html>