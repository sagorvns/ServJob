<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "servjob";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

/*
UploadPortletRequest uploadRequest = PortalUtil.getUploadPortletRequest(request);
        String bookTitle = uploadRequest.getParameter("bookTitle");
        
        UploadPortletRequest uploadPortletRequest = PortalUtil.getUploadPortletRequest(request);
        File file = uploadPortletRequest.getFile("bookfile"); 
        String bookTitle = uploadPortletRequest.getParameter("bookTitle");
        
        

File file ;
int maxFileSize = 5000 * 1024;
int maxMemSize = 5000 * 1024;
String filePath = "C:\\Users\\Dell\\eclipse-workspace\\ServJobs\\WebContent\\images\\";
String contentType = request.getContentType();
if ((contentType.indexOf("multipart/form-data") >= 0)) {
DiskFileItemFactory factory = new DiskFileItemFactory();
factory.setSizeThreshold(maxMemSize);
factory.setRepository(new File("e:\\data"));
ServletFileUpload upload = new ServletFileUpload(factory);
upload.setSizeMax( maxFileSize );


String fileName=null;
FileItem fi; 
try{ 
List fileItems = upload.parseRequest(request);
Iterator i = fileItems.iterator();
while ( i.hasNext () ) 
{
fi= (FileItem)i.next();
if ( !fi.isFormField () ) {
 String fieldName = fi.getFieldName();
fileName = fi.getName();
boolean isInMemory = fi.isInMemory();
long sizeInBytes = fi.getSize();
file = new File( filePath + fileName) ;
fi.write( file ) ;	
out.println("Uploaded Filename: "+ fileName +"<br>");
}
}
}catch(Exception ex) {
System.out.println(ex);
}
}else{
out.println("Error in file upload.");
}
*/

     	Connection connection = null;	
		Statement statement = null;
		String s1 = request.getParameter("full_name");
		String s2= request.getParameter("email");
		String s3= request.getParameter("password");
	
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st=connection.createStatement();

int i=st.executeUpdate("insert into signup (full_name,email,password) values ('"+s1+"','"+s2+"','"+s3+"')");

if(i > 0)
{
	response.sendRedirect("index.jsp");
}else
{
	response.sendRedirect("job.jsp");	
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>				
</body>
</html>