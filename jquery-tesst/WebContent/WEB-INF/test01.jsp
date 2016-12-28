<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String name=(String)request.getParameter("txtFirstName");
response.getWriter().print(name+"xcvc");
//out.println((String)request.getParameter("data"));
/* if(request.getParameter("p").isEmpty()){
	//out.print((String)request.getParameter("p"));
} */
/* if(request.getParameter("name").equalsIgnoreCase(name)){
	out.print("name already exists");
} */
%>