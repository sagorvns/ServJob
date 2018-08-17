<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connection.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="javax.servlet.http.HttpSession" %>   
<html>
<head>

<title>SERVJOBS</title>

<div class="clearfix"> </div>
		</div>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smartphone Compatible web template web design" />
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


<div class="clearfix"></div>

<div class="container-fluid">
	<div class="row" style="background-color:#fdecff;">
		<div class="col-sm-9">
<%
String id=request.getParameter("id");
out.print(id);
Connection connection = null;	
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String jid=request.getParameter("id");
out.print(id);
String sql ="select * from job where id='"+jid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div style="margin:20px;padding:10px 0px 10px 30px;background-color:white;">
			    <h2 style="margin:10px 0px 0px 0px;"><%=resultSet.getString("job_title") %></h2>
				<font color="red"><%=resultSet.getString("company_id") %></font>
<p style="margin:10px 0px 0px 0px;">Keywords / Skills : P<%=resultSet.getString("skill") %></p>
				<p>saraly:<%=resultSet.getString("job_salary") %></p><br>
				<hr>
				<h2>Job Description</h2><br>
				
				<ol type="1">
				<li><%=resultSet.getString("discription") %></li>
				
				</ol>
				<hr>
				
				<h3><u>Location</u></h3><br>
				<p><%=resultSet.getString("job_location") %></p><br>
				
				
				<h3><u>Education</u></h3><br>
				<p><%=resultSet.getString("eligibility") %></p><br>
				
				<h3><u>Post On</u></h3><br>
				<p>July 3rs 2017</p><br>
				<hr>
				<h2><u>Key Skill</u></h2><br>
				<p><%=resultSet.getString("skill") %></p><br>
				<br>
			<% 
response.setContentType("text/html");  
  
 HttpSession sess=request.getSession(false);  
 
        if(sess!=null&&name!=null){  
       
%>        
        <a href="dashboard.jsp?id=<%=resultSet.getString("id") %>"><button  type="button" class="btn btn-primary">Apply Now</button></a>
 <% 
        } 
        else
        {%>
        <a href="index.jsp"><button  type="button" class="btn btn-primary">Log In For Apply</button></a>
        <%}
%>			
			
			</div>
			</div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from job LIMIT 3";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
				<div class="col-sm-3" style="margin-top:45px;padding:10px 0px 10px 30px;background-color:white; ">
				<h2 style="margin:10px 0px 0px 0px; color:orange;">Similar Jobs</h2><br>

					<div>
					<a href="detail.jsp?id=<%=resultSet.getString("id") %>"><h4><%=resultSet.getString("job_title") %></h4>
					<font color="red"><%=resultSet.getString("company_id") %></font>
				<p style="margin:10px 0px 0px 0px;">Skill: <%=resultSet.getString("skill") %></p>
				<p>Location: <%=resultSet.getString("job_location") %></p>
				<p>Eligibility: <%=resultSet.getString("eligibility") %></p>
					</div>
					<hr>
				
			</div>
	<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}%>		
			
	</div>

	</div>



		<div class="clearfix"> </div>
		</div>
			
<%@include file="footer.jsp"%>


</body>
</html>
