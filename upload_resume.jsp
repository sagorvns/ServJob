<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.HttpSession" %> 
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
fi = (FileItem)i.next();
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

Connection connection = null;	
Statement statement = null;
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st=connection.createStatement();

response.setContentType("text/html"); 
HttpSession sessions=request.getSession(false);  

String name=(String)sessions.getAttribute("name");  
out.print("Hello, "+name+"");

//String[] e=name.split("\\@");

int a=st.executeUpdate("UPDATE signup set resume='"+fileName+"' WHERE email LIKE '%"+name+"%'");


if(a > 0)
{
response.sendRedirect("index.jsp");
}else
{
response.sendRedirect("job.jsp");	
}

connection.close();

}catch(Exception ex) {
System.out.println(ex);
}
}else{
out.println("Error in file upload.");
}
%>