<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<%
try{
String FirstName=request.getParameter("Fname");
String LastName=request.getParameter("Lname");
int Password=Integer.parseInt(request.getParameter("Password"));
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/plant","root","");
PreparedStatement ps=conn.prepareStatement("insert into littleleaf values(?,?,?)");
ps.setString(1,FirstName);
ps.setString(2,LastName);
ps.setInt(3,Password);
ps.executeUpdate();
out.println("Record Inserted Successfully...!");
ps.close();
conn.close();
}
catch(Exception e)
{
out.println(e);
}
%>
