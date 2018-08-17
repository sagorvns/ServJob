<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<style>
.div4 
{
    width: 800px;
    height: 220px;    
    padding: 10px;
	margin:60px 0px 0px 30px;
    border: 1px solid black;
    box-sizing: border-box;
	 box-shadow: 10px 10px 5px #888888;
}

</style>

<title>ServJobs</title>

</style>
<div class="clearfix"> </div>
</div>
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

<div class="container-fluid" >

	<div class="row" style="background-color:white;">
	
			<div class="col-sm-12" style="padding:10px 0px 10px 30px;background-image: url('ba1.jpg');">

				<center><h1><b>WELCOME ADMIN</b></h1><br>
				 <a href="job.jsp"><h2><b>Job Registration</b></h2></a><br>
				  <a href="update_job.jsp"><h2><b>Update Job</b></h2></a><br>
				 <a href="view.jsp"><h2><b>View Applications</b></h2></a>				 
				</center>				
			</div>
		</div>
	</div>
	
		<div class="clearfix"> </div>
		</div>

<!---module-->
												
<!---module End-->
<%@include file="footer.jsp"%>

</body>
</html>