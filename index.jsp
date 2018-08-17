<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="App Mobile" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pignose css -->
<link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />

<!-- //pignose css -->
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

<style>
.parallax {
  
    background-image: url("images/servjob.jpg");
    
    min-height: 400px; 
	border:2px solid black;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	//opacity:0.5;
	filter(opacity=50);
}

.parallax:hover{
	opacity:1.0;
	filter:alpha(opacity=100);
	
}

</style>


</head>
<body>

<%@include file="header.jsp"%>
        
<!-- //banner-top -->
<div class="banner-grid" >
	<div id="visual">
			<div class="slide-visual">
				<!-- Slide Image Area (1000 x 424) -->
					<div class="parallax">
					<h1 style="margin:100px 0px 0px 150px;">Explore with us!</h1>
						<h4 style="margin:10px 0px 0px 150px;">Register Today</h4>	
					</div>
				</div>
				</div>
</div>
<!-- product-nav-->
<div class="product-easy" ">
	<div class="container">
		
		<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
							$(document).ready(function () {
								$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true   // 100% fit in a container
								});
							});
							
		</script>
		
		<div class="sap_tabs" >
			<div id="horizontalTab" style="display: block; width: 100%;" >
				<ul class="resp-tabs-list">
					<li class="resp-tab-item" aria-controls="tab_item-0" role="tab" ><span>SELECT CITY</span></li> 
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>OUR SERVICE</span></li> 
					
				</ul>				  	 
				<div class="resp-tabs-container" >
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0" >
						<!--delhi-->
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/a1.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/a1.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												</div>
										</div>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=delhi">DELHI</a></h4>
									<div class="info-product-price">
										
									</div>												
								</div>
							</div>
						</div>
						<!----Delhi---->
						<!--Mumbai-->
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/a8.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/a8.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
											
											</div>
										</div>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=mumbai">MUMBAI</a></h4>
									<div class="info-product-price">										
									</div>
																		
								</div>
							</div>
						</div>
						<!--mumbai-->
						
						<!--pune-->
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/a3.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/a3.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
										
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=pune">PUNE</a></h4>
									<div class="info-product-price">
										
									</div>
																
								</div>
							</div>
						</div>
						<!--VARANASI-->
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/a4.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/a4.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
									
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=varanasi">VARANASI</a></h4>
									<div class="info-product-price">
										
									</div>
																	
								</div>
							</div>
						</div>
						<!--KOLKATA-->
						<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/a5.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/a5.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=kolkata">KOLKATA</a></h4>
									<div class="info-product-price">
										
									</div>
																	
								</div>
							</div>
						</div>
					<!--shimla-->	
						<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/g2.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/g2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">							
											</div>
										</div>					
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=shimla">SHIMLA</a></h4>
									<div class="info-product-price">
										
									</div>
																		
								</div>
							</div>
						</div>
						<!--KASHMIR-->
						<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/g3.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/g3.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">					
											</div>
										</div>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=kashmir">KASHMIR</a></h4>
									<div class="info-product-price">
										
									</div>
																	
								</div>
							</div>
						</div>
						<!--Chennai-->
						<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/mw2.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/mw2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
										
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?city=chennai">CHENNAI</a></h4>
									<div class="info-product-price">
										
									</div>
												
								</div>
							</div>
						</div>
						<!--city close-->
						<div class="clearfix"></div>
					</div>
					<!--SERVICE-->
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/w1.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/w1.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
									
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?job=teacher">TEACHER</a></h4>
									<div class="info-product-price">
										
									</div>
																		
								</div>
							</div>
						</div>
						
						<!--DOCTOR-->
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/w2.png" alt="" class="pro-image-front">
									<img  height="240" width=100% src="images/w2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
										
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?job=doctor">DOCTOR</a></h4>
									<div class="info-product-price">
									
									</div>										
								</div>
							</div>
						</div>
						
						<!--SERVENT-->
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/w3.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/w3.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
										
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?job=servent">SERVENT</a></h4>
									<div class="info-product-price">
									
									</div>										
								</div>
							</div>
						</div>
						
						<!--CHEF-->
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img height="240" width=100% src="images/w4.png" alt="" class="pro-image-front">
									<img height="240" width=100% src="images/w4.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												
											</div>
										</div>
										
										
								</div>
								<div class="item-info-product ">
									<h4><a href="list.jsp?job=chef">CHEF</a></h4>
									<div class="info-product-price">
									
									</div>										
								</div>
							</div>
						</div>
						
						<div class="clearfix"></div>						
					</div>
					
					<!--911-->
						</div>	
				</div>	
			</div>
		</div>
	</div>
</div>
<!-- //product-nav -->

<div class="coupons">
	<div class="container">
		<div class="coupons-grids text-center">
			<div class="col-md-3 coupons-gd">
				<h3>Do Business With Us</h3>
			</div>
			<div class="col-md-3 coupons-gd">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
				<h4>LOGIN TO YOUR ACCOUNT</h4>
				
			</div>
			<div class="col-md-3 coupons-gd">
				<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
				<h4>SELECT YOUR SERVICE</h4>
				
			</div>
			<div class="col-md-3 coupons-gd">
				<span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
				<h4>GET JOB & SERVICE</h4>
				
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>

<%@include file="footer.jsp"%>

</body>
</html>