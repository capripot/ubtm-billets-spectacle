<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">

  <title>UT'Spectacle - Réservation de billets de spectacles sur internet</title>

  <link rel="stylesheet" media="screen" href="style.css">
  
  <script src="/js/modernizr-2.5.3.js"></script>
</head>
<body>
<div id="page">
	<header>
		<h1><a href="index.jsp" title="Revenir à l'accueil du site">UT'Spectacle</a></h1>
		<form action="Recherche">
		<ul id="menu">
			<li><a href="index.jsp">Accueil</a></li>
			<li><a href="CatSpectacle?cat=concert">Concert</a></li>
			<li><a href="CatSpectacle?cat=spectacle">Spectacle</a></li>
			<li><a href="CatSpectacle?cat=théâtre">Théâtre</a></li>
			<li><a href="Region">Régions</a></li>
			<li><a href="#">Promotions</a></li>
			<li><input type="text" name="recherche" value="Recherche" onClick="if(this.value=='Recherche')this.value=''" onBlur="if(this.value=='')this.value='Recherche'" /></li>
		</ul>
		</form>
	</header>
	
	<div id="content">