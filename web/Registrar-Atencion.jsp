<%-- 
    Document   : RegistrarServicio
    Created on : 31-ene-2017, 14:28:01
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>El Perro de Pavlov | Registrar Atencion</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/MyStyles.css">
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
    
    if (document.form.servicio.value.length==0){
    alert("Debe ingresar nombre de servicio")
    document.form.servicio.focus()
    return 0;
    }

    if (document.form.id.value.length==0){
    alert("Debe ingresar un Id para el servicio")
    document.form.id.focus()
    return 0;
    }
    
    if (document.form.descripcion.value.length==0){
    alert("Ingrese desccripcion dde la mascota")
    document.form.descripcion.focus()
    return 0;
    }
    /* Luego validamos la edad, viendo si se ingresa una mayor a 18 años. Asignamos primero a una variable el valor ingresado y luego comprobando que no este vacío y que cumpla el requerimiento. También llamaremos a una función validarEntero que definiremos en el siguiente paso, dándole como parámetro la edad ingresada. Esta función realizará las validaciones necesarias para definir si es un dato numérico. */
    edad = document.form.peso.value
    edad = validarEntero(edad)
    document.form1.edad.value=edad
    if (edad==""){
    alert("Debe ingresar un peso valido.")
    document.form1.edad.focus()
    return 0;
    }else{
    if (edad<2){
    alert("Debe ser mayor de 2kg")
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
                    <li class="current"><a href="Ingresar-Mascota-Cliente.html">Registrar Mascota</a></li>
                    <li class="current"><a href="Registrar-Publicacion-Cliente.html">Registrar Publicación</a></li>
                </ul>
            </li>
            <li class="with_ul"><a href="#">Historiales</a>
                <ul>
                    <li class="current"><a href="Historial-Peso-Cliente.html">Historial de Peso</a></li>
                    <li class="current"><a href="Historial-Vacuna-Cliente.html">Historial de Vacunación</a></li>
                    <li class="current"><a href="Historial-Atencion-Cliente.html">Historial de Atención</a></li>
                </ul>
            </li>
            <li><a href="Cronograma-Vacunas-Futuras-Cliente.html">Vacunas Futuras</a></li>
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
      
         <div class="grid_5 prefix_1">
     
      <h2 class="ic1">Registrar Atenciones</h2>     
      <form id="form" name="form" action="#">
        <div class="success_wrapper">
          <div class="success">Contact form submitted!<br>
            <strong>We will be in touch soon.</strong> </div>
        </div>
        
        <fieldset>
          <label>
            <input type="text" name="id" placeholder="IdAtencion:">
            <br class="clear">
          </label>
          <label>
            <input type="text" name="mascota" placeholder="Mascota:">
            <br class="clear">
          </label>
          <label>
            <input type="text" name="servicio" plaeholder="Servicio:">
            <br class="clear"><br class="clear"><br class="clear"><br class="clear">
          </label> 
            <br>
            
           <label>
            <input type="text" name="peso" placeholder="PesoActual:">
            <br class="clear">
          </label>
           <label>
            <input type="text" name ="descripcion" placeholder="Caracteristicas:">
            <br class="clear">
          </label> 
           
          <label class="message2">
              <textarea> Descripción:</textarea>
            <br class="clear">
            <span class="error">*The message is too short.</span> 
          </label>
            
          <div class="clear"></div>
          <div class="btns"><a data-type="reset" class="btn" onclick="validar_formulario()">Registrar!</a>
            <div class="clear"></div>
          </div>
          
        </fieldset>
      </form>
    </div>
      
    
    <div class="grid_6">
        
            
        <h3><img src="images/perrito.png" class="img2"> </h3>
        <table id="tabla2" class="t2" style="margin: 0 auto;">
       
        <%
            for(int i=0;i<10;i++){
                if(i==0){
        %>
         <tr class="linea2">
            <td class="fila<%=i%2%>" class="titulos">
            <label class="titulos">IDCaracteristica</label>
            </td>
            <td class="fila<%=i%2%>">
            <label class="titulos">Descripcion</label>
            </td>
            <td class="fila<%=i%2%>">
            
        </tr>
        <%
                }
                else{
        %>
        <tr class="linea2">
            <td class="fila<%=i%2%>"></td>
            <td class="fila<%=i%2%>"></td>
           
        </tr>
        
        <%
                }
        }
        %>
        </table>        
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
