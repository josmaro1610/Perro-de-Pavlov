<!DOCTYPE html>
<html lang="en">
<head>
<title>El Perro de Pavlov | Historial de Atenciones</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
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


/* Abrimos etiqueta de código */
    function validar_formulario(){ /* Abrimos la función validar_formulario */
    /* Partimos por validar que se haya ingresado un valor para el nombre, esto lo hacemos mediante un if y preguntamos si el campo es igual a 0, si es así, desplegamos un mensaje para que se ingrese el nombre y volvemos al formulario. */
    if (document.form.mascota.value.length==0){
    alert("Debe ingresar el nombre de la mascota")
    document.form.mascota.focus()
    return 0;
    }
    
    if (document.form.dueno.value.length==0){
    alert("Debe ingresar un pseudonimo")
    document.form.dueno.focus()
    return 0;
    }

    if (document.form.email.value.length==0){
    alert("Debe ingresar un email")
    document.form.email.focus()
    return 0;
    }
    
    if (document.form.comentario.value.length==0){
    alert("Ingrese un comentario")
    document.form.comentario.focus()
    return 0;
    }
    /* Luego validamos la edad, viendo si se ingresa una mayor a 18 años. Asignamos primero a una variable el valor ingresado y luego comprobando que no este vacío y que cumpla el requerimiento. También llamaremos a una función validarEntero que definiremos en el siguiente paso, dándole como parámetro la edad ingresada. Esta función realizará las validaciones necesarias para definir si es un dato numérico. */
    edad = document.form1.edad.value
    edad = validarEntero(edad)
    document.form1.edad.value=edad
    if (edad==""){
    alert("Debe ingresar su edad.")
    document.form1.edad.focus()
    return 0;
    }else{
    if (edad<18){
    alert("Debe ser mayor de 18")
    document.form1.edad.focus()
    return 0;
    }
    }

    /* Finalmente, validamos el motivo del contacto */
    if (document.form1.motivo.selectedIndex==0){
    alert("Debe seleccionar un motivo de su contacto.")
    document.form1.interes.focus()
    return 0;
    }
    
    

    /* Si paso todas las validaciones, desplegamos un mensaje de éxito y enviamos el formulario */
    alert("Los datos fueron ingresados correctamente y seran enviados");
    document.form1.submit();
    }
    
    

    function validarEntero(valor){
    /* Mediante parseInt intentaremos transformar el valor a número entero. Si el dato fue ingresado bien y ya lo era, no hará nada */
    valor = parseInt(valor)

    /* Se comprobará si el valor es un número */
    if (isNaN(valor)) {
    /* Si no lo es, se devuelve una cadena vacía */
    return ""
    }else{
    /* De lo contrario se devuelve el número */
    return valor
    }
    }
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
                    <li class="current"><a href="Registrar-Publicacion-Cliente.jsp">Registrar Publicación</a></li>
                </ul>
            </li>
            <li class="with_ul"><a href="#">Historiales</a>
                <ul>
                    <li class="current"><a href="Historial-Peso-Cliente.jsp">Historial de Peso</a></li>
                    <li class="current"><a href="Historial-Vacuna-Cliente.jsp">Historial de Vacunación</a></li>
                    <li class="current"><a href="Historial-Atencion-Cliente.jsp">Historial de Atención</a></li>
                </ul>
            </li>
            <li><a href="Cronograma-Vacunas-Futuras-Cliente.jsp">Vacunas Futuras</a></li>
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
      
      <h2 class="ic1">Historial de Atenciones</h2>
      <form id="form" name="form" action="#">
        <div class="success_wrapper">
          <div class="success">Contact form submitted!<br>
            <strong>We will be in touch soon.</strong> </div>
        </div>
        <fieldset>
          
          <label class="name">
            <input type="text" name="mascota" placeholder="Mascota:">
            <br class="clear">
                                                                 
          </label>
          <div class="clear"></div>
          <div class="btns"><a data-type="submit" class="btn" onclick="validar_formulario()">Enviar</a><a data-type="reset" class="btn">Limpiar</a>
            <div class="clear"></div>
          </div>
        </fieldset>
      </form>
      
      <table class="table-bordered table-condensed table-hover table-responsive table-striped">
		<h2>Historial de Pesos</h2>
			<tr>
				<td>Fecha</td>
				<td>Servicio</td>
			</tr>
                        <tr>
				<td> 12/05/2016</td>
                                <td>Grooming</td>
			</tr>
			<tr>
				<td> 12/06/2016</td>
                                <td>Masaje</td>
			</tr>
			<tr>
				<td> 12/07/2016</td>
                                <td>VacunaciÃ³n</td>
			</tr>
                        <tr>
				<td> 12/08/2016</td>
                                <td>DesparacitaciÃ³n</td>
			</tr>
			<tr>
				<td> 12/09/2016</td>
                                <td>VacunaciÃ³n</td>
			</tr>
			<tr>
				<td> 12/10/2016</td>
                                <td>Grooming</td>
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

