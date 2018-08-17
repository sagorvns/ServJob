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
String sql ="select * from signup where email='"+s1+"' and password='"+s2+"'";
resultSet = statement.executeQuery(sql);

if(resultSet.next())
{
	  HttpSession sessions=request.getSession();  
      session.setAttribute("name",s1);  
      session.setAttribute("pass",s2);  

      int user_id=resultSet.getInt("id");
      session.setAttribute("u_id",user_id);
     
    
      
	request.getRequestDispatcher("index.jsp").include(request, response);  
	
//response.sendRedirect("index.jsp");

}
else
{
	response.sendRedirect("admin.jsp");
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>
