<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.mit.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Stock</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: red;
   color: white;
   text-align: center;
}
.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 1px;
  cursor: pointer;
  font-size: 20px;
}
</style>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Stock Gestion</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Acceuil.jsp">Acceuil</a></li>
      <li><a href="Stockage.jsp">Stockage</a></li>
      <li><a href="Livraison.jsp">Livraison Porduit</a></li>
      <li><a href="Nouveau.jsp">Nouveau Produit</a></li>
        <li><a href="#">Sortie</a></li>
    </ul>
  </div>
</nav>
<div class="container">
  
  <form name="" method="get" action="asuccess.jsp">
    <div class="form-group">
      <label for="usr">NumSo:</label>
      <input name="a1" type="text" class="form-control" id="usr">
    </div>
    
    <div class="form-group">
      
      <label for="usr">Id Produit:</label>
    <select name="a" class="form-control">
<%
 Connection conn=ConnectionProvider.getCon();
 Statement st= conn.createStatement();
 ResultSet rs=st.executeQuery("select * from stockage");

while(rs.next()){
%>
  	<option><%=rs.getString("idpro")%></option>
  	<%}%>
  </select>
     <div class="form-group">
      <label for="usr">Qte :</label>
      <input name="a2" type="text" class="form-control" >
    </div>
    <div class="form-group">
    <div class="form-group">
      <label for="">Date du Sortie:</label>
     <input name="b" type="date" class="form-control" id="pwd">
    </div>
   <button class="btn" style="width:60%"><i class="fa fa-download"></i> Degage</button>
    </div>
  </form>

</body>
</html>