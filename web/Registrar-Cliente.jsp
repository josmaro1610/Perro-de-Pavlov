<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@page import="com.mongodb.Block"%>
    <%@page import="com.mongodb.MongoClient"%>
    <%@page import="com.mongodb.client.FindIterable"%>
    <%@page import="com.mongodb.client.MongoDatabase"%>
    <%@page import="com.mongodb.DBCollection"%>
    <%@page import="com.mongodb.DBObject"%>
    <%@page import="com.mongodb.Mongo"%>
    <%@page import="com.mongodb.DB"%>
    <%@page import="com.mongodb.client.MongoCursor"%>
    <%@page import="com.mongodb.client.MongoCollection"%>
    <%@page import="com.mongodb.BasicDBObjectBuilder"%>
    <%@page import="com.mongodb.BasicDBObject"%>
    <%@page import="javax.swing.text.Document"%>
    <%@page import="java.io.*"%>
    <%@page import="java.util.*"%>
<html lang="en">
<head>
<title>Pet Club | Registrar Cliente</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<script src="js/jquery.js"></script>
<script src="js/forms.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
jQuery(document).ready(function () {
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<header>
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="images/5.png" alt=""></a> </h1>
      <div class="menu_block">
        <nav>
          <ul class="sf-menu">
            <li class="current"><a href="menu admi.html">Inicio</a></li>
            <li class="with_ul"><a href="#">Procesos</a>
                <ul>
                    <li class="current"><a href="Registrar-Cliente-(admi).html">Registrar Cliente</a></li>
                    <li class="current"><a href="Ingresar-Mascota.html">Registrar Mascota</a></li>
                    <li class="current"><a href="Registrar-Peso.html">Registrar Peso</a></li>
                    <li class="current"><a href="Registrar-Vacuna.html">Registrar Vacuna</a></li>
                    <li class="current"><a href="Registrar-Publicacion.html">Registrar Publicación</a></li>
                </ul>
            </li>
            <li class="with_ul"><a href="#">Historiales</a>
                <ul>
                    <li class="current"><a href="Historial-Peso.html">Historial de Peso</a></li>
                    <li class="current"><a href="Historial-Vacuna.html">Historial de Vacunación</a></li>
                    <li class="current"><a href="Historial-Atencion.html">Historial de Atención</a></li>
                </ul>
            </li>
            <li><a href="Cronograma-Vacunas-Futuras.html">Vacunas Futuras</a></li>
            <li><a href="index.html">Cerrar Sesión</a></li>
          </ul>
        </nav>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>
<div class="content pt1">
  <div class="container_12">
    <div class="grid_6">
      
      <h2 class="ic1">Historial de Vacunas</h2>
      <form id="form" action="#">
        <div class="success_wrapper">
          <div class="success">Contact form submitted!<br>
            <strong>We will be in touch soon.</strong> </div>
        </div>
        <fieldset>
          <label class="name">
            <input type="text" value="Cliente:">
            <br class="clear">
            <span class="empty error-empty">*This field is required.</span> 
          </label>
          <label class="name">
            <input type="text" value="Mascota:">
            <br class="clear">
            <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> 
          </label>
          <div class="clear"></div>
          <div class="btns"><a data-type="submit" class="btn">Enviar</a><a data-type="reset" class="btn">Limpiar</a>
            <div class="clear"></div>
          </div>
        </fieldset>
      </form>
      
      <table class="table-bordered table-condensed table-hover table-responsive table-striped">
		<h2>Historial de Vacunas</h2>
			<tr>
				<td> IdVacuna</td>
				<td> Vacuna</td>
				<td> Fecha</td>
			</tr>
			<tr>
				<td> V000001</td>
				<td> Vacuna Polivalente</td>
				<td> 12/05/2016</td>
			</tr>
			<tr>
				<td> V000002</td>
				<td> Vacuna Refuerzo Polivalente</td>
				<td> 12/06/2016</td>
			</tr>
			<tr>
				<td> V000003</td>
				<td> Vacuna Rabia</td>
				<td> 12/07/2016</td>
			</tr>
		</TABLE>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="grid_12">
      <div class="socials"> <a href="#"></a> <a href="https://web.facebook.com/El-Perro-de-Pavlov-726682070755630/"></a> <a href="#"></a> <a href="#"></a> </div>
      <p>El Perro de Pavlov &copy; 2017 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/">Laboratorio VI</a></p>
    </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
</html>