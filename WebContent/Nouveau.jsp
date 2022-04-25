<!DOCTYPE html>
<html lang="en">
<head>
  <title>Nouveau</title>
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
      <li><a href="#">Nouveau Produit</a></li>
        <li><a href="Sortie.jsp">Sortie</a></li>
    </ul>
  </div>
</nav>
<div class="container">
  
  <form name="" method="get" action="Esuccess.jsp">
    <div class="form-group">
      <label for="usr">Id Produit:</label>
      <input  name="a" type="text" class="form-control" >
    </div>
    <div class="form-group">
      <label for="">Designation:</label>
      <input  name="b" type="text" class="form-control" >
    </div>
    
      <div class="form-group">
    <div class="form-group">
      <label for="">Unite:</label>
     <input name="c" type="texte" class="form-control">
    </div>
   <button class="btn" style="width:60%"><i class="fa fa-download"></i> EnregistrE</button>
    </div>
  </form>

</body>
</html>