<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.mit.*" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Livraison </title>
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
      <li><a href="#">Livraison Produit</a></li>
      <li><a href="Nouveau.jsp">Nouveau Produit</a></li>
       <li><a href="Sortie.jsp">Sortie</a></li>
       <li><a href="Affichage.jsp">MAJ</a></li>
    </ul>
    </div>
</nav>
<div class="container">
  

  <form name="" method="get" action="isucces.jsp">
 <div class="form-group">
      <label for="usr">num livraison:</label>
      <input name="a3" type="text" class="form-control" >
    </div>
 
      <label for="usr">Id Produit:</label>
    <select name="a" class="form-control">
<%
Connection conn=ConnectionProvider.getCon();
Statement st= conn.createStatement();
ResultSet rs=st.executeQuery("select * from stockage");

while(rs.next()){
%>
  	<option><%=rs.getString("idpro") %></option>
  	<%} %>
  </select>
    <div class="form-group">
      <label for="usr">Qte Livré:</label>
      <input name="a1" type="text" class="form-control">
    </div>
      <div class="form-group">   
     <label for="usr">Date du  Livraison:</label>
    <input name="c" type="date" class="form-control" >
     
    </div>
   <button type="submit" class="btn" style="width:100%"><i class="fa fa-download"></i> Livré</button>
    </div>
  </form>
</div>

 
</body>
</html>