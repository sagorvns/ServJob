<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl ="jdbc:mysql://localhost:3306/";
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
ResultSet resultSet = null;

String s1 = request.getParameter("email");
String s2= request.getParameter("password");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from admin where email='"+s1+"' and password='"+s2+"'";
resultSet = statement.executeQuery(sql);

if(resultSet.next())
{
response.sendRedirect("admin.jsp");

}
else
{
	response.sendRedirect("Admins.jsp");
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>
