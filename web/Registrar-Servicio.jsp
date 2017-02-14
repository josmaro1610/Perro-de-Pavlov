<%-- 
    Document   : RegistrarServicio
    Created on : 31-ene-2017, 14:28:01
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>El Perro de Pavlov | Registrar Servicio</title>
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
     
      <h2 class="ic1">Registrar Servicios</h2>     
      <form id="form" name="form" action="#">
        <div class="success_wrapper">
          <div class="success">Contact form submitted!<br>
            <strong>We will be in touch soon.</strong> </div>
        </div>
        
        <fieldset>
          <label>
            <input type="text" value="Id:">
            <br class="clear">
            <span class="empty error-empty">*This field is required.</span> 
          </label>
          <label>
            <input type="text" value="Nombre:">
            <br class="clear">
            <span class="empty error-empty">*This field is required.</span> 
          </label>
          <label>
            <input type="text" value="Costo:">
            <br class="clear">
            <span class="empty error-empty">*This field is required.</span> 
          </label>      
          <label class="message2">
              <textarea> Descripción:</textarea>
            <br class="clear">
            <span class="error">*The message is too short.</span> 
            <span class="empty">*This field is required.</span> 
          </label>
            
          <div class="clear"></div>
          <div class="btns"><a data-type="reset" class="btn">Registrar!</a>
            <div class="clear"></div>
          </div>
          
        </fieldset>
      </form>
    </div>
      
      
    <!--<div class="grid_6">
        
      <h2>¿Aun no eres usuario?</h2>
      <br>
      <img src="images/page1_img5.jpg" alt="" class="img_inner fleft">
      <div class="extra_wrapper style1">
        <p class="text1"><a href="Servicios.html">Click aqui</a> Para mas informacion acerca de los servicios ofrecidos por la veterinaria el Perro de Pavlov </p>
      </div>
      <div class="clear"></div>
      La veterinaria el Perro de Pavlov le ofrece un control de sus mascotas ingresando su usuario y contraseña, donde les proporcionamos la siguiente informacion:<br>
      <ul class="list l1">
        <li> <span>
          <time datetime="2045-01-01">1</time>
          </span>
          <div class="extra_wrapper">
            <div class="col1">Control de vacunas con fechas de sus proximas vacunas.</div>
          </div>
        </li>
        <li> <span class="cnt">
          <time datetime="2045-01-01">2</time>
          </span>
          <div class="extra_wrapper">
            <div class="col1">Historial de las atenciones.</div>
          </div>
        </li>
        <li> <span>
          <time datetime="2045-01-01">3</time>
          </span>
          <div class="extra_wrapper">
            <div class="col1">Nuevos tratamientos para su mascota.</div>
          </div>
        </li>
        <li> <span class="cnt">
          <time datetime="2045-01-01">4</time>
          </span>
          <div class="extra_wrapper">
            <div class="col1">Recordatorios para llevar a su mascota a su control.</div>
          </div>
        </li>
      </ul>
     
        
    </div>-->
    
    <div class="grid_6">
        
        <h3><img src="images/perrito.png" class="img"> </h3>
        <table class="t2" style="margin: 0 auto;">
       
        <%
            for(int i=0;i<10;i++){
                if(i==0){
        %>
         <tr class="linea2">
            <td class="fila<%=i%2%>" class="titulos">
            <label class="titulos">ID</label>
            </td>
            <td class="fila<%=i%2%>">
            <label class="titulos">Nombre</label>
            </td>
            <td class="fila<%=i%2%>">
            <label class="titulos">Costo</label>
            </td>
            <td class="fila<%=i%2%>">
            <label class="titulos">Descripción</label>
            </td>
        </tr>
        <%
                }
                else{
        %>
        <tr class="linea2">
            <td class="fila<%=i%2%>"></td>
            <td class="fila<%=i%2%>"></td>
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
