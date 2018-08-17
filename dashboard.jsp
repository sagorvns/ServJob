<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
//String id = request.getParameter("userid");
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

Statement statement2 = null;
ResultSet resultSet = null;
ResultSet resultSet2 = null;
%>

<%@include file="header.jsp"%>

<%
String id=request.getParameter("id");
int uid0=1;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

int sta=0;
int i=statement.executeUpdate("insert into job_req (job_id,user_id,status) values ('"+id+"','"+uid+"','"+sta+"')");

connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>
<html>
<head>
<title>ServJobs</title>
	
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="jobs and services" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
	<script src="js/jquery.easing.min.js"></script>

</head>
<body>




<div class="container-fluid">
	<div class="row" style="background-color:#fdecff;">

    <table class="table table-bordered">
    <thead>
      <tr>
        <th>Job Title</th>
        <th>Job Description</th>
        <th>Status</th>
      </tr>
      </thread>
 <%
 
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
statement2=connection.createStatement();

String sql ="select * from job_req where user_id='"+uid+"'";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	
	String job_id = resultSet.getString("job_id");
	String sql2 =  "select * from job where id='"+job_id+"'";
	resultSet2 = statement2.executeQuery(sql2);
	while(resultSet2.next()){
		
%>     
    <tbody>
      <tr>
        <td><%=resultSet2.getString("job_title") %>
        
        </td>
         <td><%=resultSet2.getString("skill") %></td>
      
        <td>
        <%
        Integer foo = (Integer) resultSet.getObject("status");
        if(foo==0)
        {
        	out.print("On Process");
        }
        if(foo==2)
        {
        	out.print("Select");
        }
        if(foo==3)
        {
        	out.print("Reject");
        }
        
        %>
        
        
        </td>
      </tr>
      
    </tbody>
  <% 

}	
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>  
  </table>
  
	</div>
</div>
	
<%@include file="footer.jsp"%>
</body>
</html>
