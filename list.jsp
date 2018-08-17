<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connection.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<style>
.div4 {
    width: 800px;
    height: 220px;    
    padding: 10px;
	margin:60px 0px 0px 30px;
    border: 1px solid black;
    box-sizing: border-box;
	 box-shadow: 10px 10px 5px #888888;
}
#line:after {
  content: "";
  background-color: #000;
  position: absolute;
  width: 2px;
  height: 999px;
  top: 10px;
  left: 80%;
  display: block;
  margin-left:30px;
  margin-top:-30px;
}


</style>

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

<div class="clearfix"></div>

<div class="container-fluid">
	
	<div class="row" style="background-color:#fdecff;">
	
			<div class="col-sm-2" id="line" style="margin:20px;padding:10px 0px 10px 30px;">

			<b><h3 style="margin:30px 0px 10px 50px;"><font color="red"><b>CITY</b></font></h3></b>
			
											<ul class="multi-column-dropdown">
											<b><li><a href="list.jsp?city=delhi">Delhi</a></li>
											<li><a href="list.jsp?city=kolkata">Kolkata</a></li>
											<li><a href="list.jsp?city=mumbai">Mumbai</a></li>
											<li><a href="list.jsp?city=chennai">Chennai</a></li>
											<li><a href="list.jsp?city=hyderabab">Hyderabab</a></li>
											<li><a href="list.jsp?city=jaipur">Jaipur</a></li>
											<li><a href="list.jsp?city=agra">Agra</a></li>
											<li><a href="list.jsp?city=pune">Pune</a></li>
											<li><a href="list.jsp?city=ahmedabad">Ahmedabad</a></li>
											<li><a href="list.jsp?city=shimla">Shimla</a></li></b>
											</ul>
			
			<b><h3 style="margin:30px 0px 10px 50px;"><font color="red"><b>JOBS</b></font></h3></b>
			
											<ul class="multi-column-dropdown">
											<b><li><a href="list.jsp?job=architecture">Architecture</a></li>
											<li><a href="list.jsp?job=accountant">Accountant</a></li>
											<li><a href="list.jsp?job=Bank">Bank</li>
											<li><a href="list.jsp?job=web devloper">Web Developer</a></li>
											<li><a href="list.jsp?job=lawyer">Lawyer</a></li>
											<li><a href="list.jsp?job=doctor">Doctor</a></li>
											<li><a href="list.jsp?job=hair stylist">Hair Stylist</a></li>
											<li><a href="list.jsp?job=teacher">Teacher</a></li>
											<li><a href="list.jsp?job=animal careers">Animal Careers</a></li>
											<li><a href="list.jsp?job=computer programmer">Computer Programmer</a></li></b>
											
										</ul>
			
			</div>
				
				
		<div class="clearfix"> </div>
		</div>				
			<div class="col-sm-10" style="margin:-970px 0px 0px 260px;padding:10px 60px 10px 30px;">

<%
Connection connection = null;	
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String city=request.getParameter("city");
String title=request.getParameter("job");
String search=request.getParameter("search_query");
out.print(search);
String sql ="select * from job where job_location LIKE '%"+city+"%' OR job_title LIKE '%"+title+"%' OR job_title LIKE '%"+search+"%'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	%>
<div style="margin:40px 15px 0px 0px;" class="div4 col-md-12"><h2><%=resultSet.getString("job_title") %></h2>
	<font color="red"><%=resultSet.getString("company_id") %></font>
	<p style="margin:10px 0px 0px 0px;"><%=resultSet.getString("skill") %></p>						
	<p>Location:<%=resultSet.getString("job_location") %></p><br>
	<a href="detail.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="btn btn-primary">Explore Details</button></a>				
</div>

	
 <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}


String city=request.getParameter("city");


%>				

			</div>
	</div>
</div>
		<div class="clearfix"> </div>
		</div>
			
<%@include file="footer.jsp"%>


</body>
</html>
