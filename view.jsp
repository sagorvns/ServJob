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
ResultSet resultSet = null;
Statement statement2 = null;
ResultSet resultSet2 = null;
Statement statement3 = null;
ResultSet resultSet3 = null;
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

<%@include file="header.jsp"%>

<div class="container-fluid">
	<div class="row" style="background-color:#fdecff;">

    <table class="table table-bordered">
    
      <tr>
        <th>Applicant Email</th>
        <th>Company Name</th>
        <th>Job Title</th>
        <th>Resume</th>
        <th>Action</th>
      </tr>
    
 <%
 
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
statement2=connection.createStatement();
statement3=connection.createStatement();


String sql ="select * from job_req where status=0";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){

	String j_id = resultSet.getString("job_id");
	String sql2 =  "select * from job where id='"+j_id+"'";
	resultSet2 = statement2.executeQuery(sql2);
	while(resultSet2.next()){

		

			String u_id = resultSet.getString("user_id");
			String sql3 =  "select * from signup where id='"+u_id+"'";
			resultSet3 = statement3.executeQuery(sql3);
			while(resultSet3.next()){

%>  
    <tbody>
      <tr>
		<td><%=resultSet3.getString("email") %></td>
        <td><%=resultSet2.getString("company_id") %></td>
        <td><%=resultSet2.getString("job_title") %></td>
       <td><a href="images\<%=resultSet3.getString("resume") %>">View/Open</a></td>     
        <td>
        
        <form action="action.jsp?id=<%=resultSet.getString("id") %>" method="post">
          <INPUT TYPE="radio" name="b1" value="YES"/>Select
			<INPUT TYPE="radio" name="b2" value="NO"/>Reject
				<INPUT TYPE="submit" VALUE="submit" />
				
        </form>
 
                                
      </tr>      
    </tbody>
  <% 
	}
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
