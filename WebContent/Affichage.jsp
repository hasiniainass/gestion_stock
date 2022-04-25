<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1" import="com.mit.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dernier MAJ</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>

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
      <li><a href="Stockage.jsp">Stockage</a></li>
      <li><a href="Stockage.jsp">Stockage</a></li>
      <li><a href="Livraison.jsp">Livraison Produit</a></li>
      <li><a href="Nouveau.jsp">Nouveau Produit</a></li>
      <li><a href="Sortie.jsp">Sortie</a></li>
      <li class="active"><a href="#">Maj</a></li>
    </ul>
  </div>
</nav>
  
<%
Connection conn=ConnectionProvider.getCon();
Statement st= conn.createStatement();
ResultSet rs=st.executeQuery("select * from stockage");

while(rs.next()){
%>

  	<%} %>
 
 
  
   </div>
  </form>
</div>
<table class="table">
    <thead>
      <tr>
        <th>Identification</th>
        <th>Num Livraison</th>
        <th>Quantite Livre</th>
        <th>Dte de Livraison</th>
      </tr>
    </thead>
    <tbody>
    <%

ResultSet s=st.executeQuery("select * from livraison");

while(s.next()){
%>
   
      <tr>
            <td><%= s.getString("idpro") %></td>
            <td><%=s.getString("numliv") %></td>
            <td><%= s.getString("qtelivre")%></td>
            <td><%= s.getString("dateliv")%></td>
                    
      </tr> 
   
    <%
}
    %>
    </tbody> 
    
</body>
    <p>..........................................................................................................Mise a jour de Livraison.............................................</p>
    <a onclick="window.print()">Version pdf</a>
<!-- Mirrored from www.w3schools.com/bootstrap/tryit.asp?filename=trybs_navbar_inverse&stacked=h by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 08 Mar 2019 12:31:25 GMT -->
</html>