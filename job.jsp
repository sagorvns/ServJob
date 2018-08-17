<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.div4 {
    width: 920px;
    height: 220px;    
    padding: 10px;
	margin:60px 0px 0px 30px;
    border: 1px solid black;
    box-sizing: border-box;
	 box-shadow: 10px 10px 5px #888888;
}
</style>
<title>SERVJOBS</title>

</style>
<div class="clearfix"> </div>
		</div>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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

<div class="container-fluid" style="background-image: url('ba1.jpg');">

	<div class="row" >
 
			<div class="col-sm-2">
			
			</div>
			
			<div class="col-sm-8" style="background-color:white;">
			<center><h1 style="margin-top:20px">Registration Form</h1></center><br>

	<form class="form-horizontal" action="jobdb.jsp" method="POST">
	
	<div class="form-group">
    <label class="control-label col-sm-2" for="jobtitle">Job Title:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="job_title" name="job_title" placeholder="Enter Job Title">
    </div>
	</div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="cid">Company Name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="company_id" name="company_id" placeholder="Enter Company ID">
    </div>
	</div>
 
 
  <div class="form-group">
    <label class="control-label col-sm-2" for="cname">Job Location:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="job_location" name="job_location" placeholder="Enter Job Location">
    </div>
	</div>

 
  <div class="form-group">
    <label class="control-label col-sm-2" for="jsalary">Job Salary:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="job_salary" name="job_salary" placeholder="Enter Job Salary">
    </div>
	</div>	
 
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="address">Skill:</label>
  <div class="col-sm-10"> 
  <textarea class="form-control" name="skill" placeholder="Enter Skill"></textarea>	
  </div>
  </div>
  
 <div class="form-group">
    <label class="control-label col-sm-2" for="address">Eligibility:</label>
  <div class="col-sm-10"> 
  <textarea class="form-control" name="eligibility" placeholder="Enter Eligibility"></textarea>	
  </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="address"> Job Discription:</label>
  <div class="col-sm-10"> 
  <textarea class="form-control" name="discription" placeholder="Enter Discription"></textarea>	
  </div>
  </div>
  		<br>
			<center>
			<button style="background-color:orange;padding:0px 200px 0px 0px;" type="submit" value="Register"><br><br>	
			
			</center>
</form>		
			
</div>
			
			
			
			<div class="col-sm-2">
			</div>
			
			
			

	</div>
</div>



		<div class="clearfix"> </div>
		</div>
			
<%@include file="footer.jsp"%>


</body>
</html>
