<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.mit.*" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
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
  background-color: red;
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
      <li><a href="#">Stockage</a></li>
      <li><a href="Livraison.jsp">Livraison Produit </a></li>
      <li><a href="Nouveau.jsp">Nouveau Produit</a></li>
      <li><a href="Sortie.jsp">Sortie</a></li>
    </ul>
  </div>
</nav>
  

<table class="table">
    <thead>
      <tr>
        <th>Id Produit</th>
        <th>Designation</th>
        <th>Quantite</th>
        <th>Unite</th>
      </tr>
    </thead>
    

<%
Connection conn=ConnectionProvider.getCon();
Statement st= conn.createStatement();
ResultSet rs=st.executeQuery("select * from stockage");

while(rs.next()){
%>
          <td><%=rs.getString("idpro") %></td>
          <td><%= rs.getString("design")%></td>
          <td><%= rs.getInt("quantite") %></td>
          <td><%= rs.getString("unite") %></td>
      
      </tr> <%} 
%>
   
    </tbody>
  </table>








</body>

<!-- Mirrored from www.w3schools.com/bootstrap/tryit.asp?filename=trybs_navbar_inverse&stacked=h by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 08 Mar 2019 12:31:25 GMT -->
</html>
