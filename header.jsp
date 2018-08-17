<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- header -->
<div class="header">
	<div class="container">
		<ul>
			<li>
			<% 
response.setContentType("text/html");  
  
			HttpSession sessions=request.getSession(false);  

 String name=(String)sessions.getAttribute("name"); 
 
 Integer uid = (Integer) session.getAttribute("u_id");
 //int uid=(Integer)sessions.getAttribute("u_id");  
 //String uid2=Integer.toString(uid);

 if(sessions!=null&&name!=null&&uid!= null){  
          
        out.print("Hello, "+name+"");
        //out.print(uid);
  	
%>        
        <a href="logout.jsp">LOGOUT</a>
        <a href="resume.jsp">Upload Resume</a><br>
        <a href="dashboard.jsp">DASHBOARD</a><br>
 <% 
        } 
        else
        {%>
        <span class="glyphicon glyphicon-time" aria-hidden="true"></span>24*7 365 days Open	
       <% }
%>
			
			</li>
			<li><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Qyality Service</li>
			<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@example.com">info@servjobs.com</a></li>
		</ul>
	</div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
	<div class="container">
		<div class="col-md-3 header-left">
			<img src="images/servjobs.jpg" style="margin-top:-15px;">
		</div>
		<div class="col-md-6 header-middle">
			<form action="list.jsp" method="get">
				<div class="search">
<input type="search" value="Search" name="search_query" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
				</div>
				
				<div class="sear-sub">
				
					<input type="submit" value=" ">
				</div>
				<div class="clearfix"></div>
			</form>
			 
		</div>
		<div class="col-md-3 header-right footer-bottom">
			<ul>
				<li><a href="#" class="use1" data-toggle="modal" data-target="#myModal4"><span>Login</span></a>
					
				</li>
				<li><a class="fb" href="#"></a></li>
				<li><a class="twi" href="#"></a></li>
				<li><a class="insta" href="#"></a></li>
				<li><a class="you" href="#"></a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
					<li class="active menu__item menu__item--current"><a class="menu__link" href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SERVICE <span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
									<img src="images/woo1.jpg" alt=" "/>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="list.jsp?job=architecture">Architecture</a></li>
											<li><a href="list.jsp?job=accountant">Accountant</a></li>
											<li><a href="list.jsp?job=Bank">Bank</li>
											<li><a href="list.jsp?job=web devloper">Web Developer</a></li>
											<li><a href="list.jsp?job=lawyer">Lawyer</a></li>
											<li><a href="list.jsp?job=doctor">Doctor</a></li>
											<li><a href="list.jsp?job=hair stylist">Hair Stylist</a></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="list.jsp?job=teacher">Teacher</a></li>
											<li><a href="list.jsp?job=animal careers">Animal Careers</a></li>
											<li><a href="list.jsp?job=computer programmer">Computer Programmer</a></li>
											<li><a href="list.jsp?job=social worker">Social Worker</a></li>
											<li><a href="list.jsp?job=pharmacist">Pharmacist</a></li>
											<li><a href="list.jsp?job=waiter">Waiter</a></li>
											<li><a href="list.jsp?job=book publishing">Book Publishing</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CITY<span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="list.jsp?city=bengaluru">Bengaluru</a></li>
											<li><a href="list.jsp?city=varanasi">Varanasi</a></li>
											<li><a href="list.jsp?city=delhi">Delhi</a></li>
											<li><a href="list.jsp?city=kolkata">Kolkata</a></li>
											<li><a href="list.jsp?city=mumbai">Mumbai</a></li>
											<li><a href="list.jsp?city=chennai">Chennai</a></li>
											<li><a href="list.jsp?city=hyderabab">Hyderabab</a></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="list.jsp?city=jaipur">Jaipur</a></li>
											<li><a href="list.jsp?city=agra">Agra</a></li>
											<li><a href="list.jsp?city=pune">Pune</a></li>
											<li><a href="list.jsp?city=ahmedabad">Ahmedabad</a></li>
											<li><a href="list.jsp?city=shimla">Shimla</a></li>
											<li><a href="list.jsp?city=surat">Surat</a></li>
											<li><a href="list.jsp?city=chandigarh">Chandigarh</a></li>
										</ul>
									</div>
									<div class="col-sm-6 multi-gd-img multi-gd-text ">
										<img src="images/woo.jpg" alt=" "/>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
				
					<li class=" menu__item"><a class="menu__link" href="contact.jsp">About Us</a></li>	
					<!--<li class=" menu__item"><a class="menu__link" href="aboutus.jsp">About us</a></li>-->
					<li class=" menu__item"><a class="menu__link" href="Admins.jsp">Admin</a></li>
					</ul>
				</div>
			  </div>
			</nav>	
		</div>
		<div class="top_nav_right">
			<div class="cart box_1">
						<a href="goal.jsp">
							<h2> <div class="total">
							
								</div>
								
							</h2>
						</a>
						<p style="padding:12px;"><a href="javascript:;" class="simpleCart_empty">Our Goal</a></p>
						
		</div>
		
		<div class="clearfix"></div>
	</div>
	
	<!-- login -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
								<div class="login">
									<div class="login-bottom">
										<h3>Sign up for free</h3>
										
										<form action="signdb.jsp" method="POST">
										<div class="sign-up">
												<h4>Full Name :</h4>
												<input type="text"  name="full_name" id="full_name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											
											<div class="sign-up">
												<h4>Email :</h4>
												<input type="text"  name="email"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-up">
												<h4>Password :</h4>
												<input type="password"  name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
										<!--  	<div class="sign-up">
									<h4>Upload Resume :</h4><br>
									<input type="file"  name="file" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Resume';}" required="">
												
											</div>  -->
							
											<br>
											<div class="sign-up">
											<input type="submit" value="REGISTER NOW" >
											</div>
											
										</form>
									</div>
									<div class="login-right">
										<h3>Sign in with your account</h3>
										<form  action="login.jsp" method="post">
											<div class="sign-in">
												<h4>Email :</h4>
												<input type="text" name="email" "value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
												<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<div class="sign-in">
												<input type="submit" value="SIGN IN" >
											</div>
										</form>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- //login -->
	
	
</div>
