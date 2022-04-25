<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.mit.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="com.mit.variable"/>

<jsp:setProperty property="*" name="obj"/>

<%
try{
int status=CustomerDAO.insertSo(obj);
if (status>0)
	out.println("insered succesful");
else 
	out.print("error");}
catch(Exception e){
	e.printStackTrace();
}
response.sendRedirect("Sortie.jsp");
%>
</body>
</html>