<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add New Employee</h1>  
<form action="Connect" method="post">  

Name:<input type="text" name="name"/><br>
password:<input type="text" name="password"/><br>
email:<input type="text" name="email"/><br>

<input type="submit" value="Save Employee"/> <br>

</form>  
  <br>
<a href="ViewServlet">view employees</a>
</body>
</html>