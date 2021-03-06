<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.ofertaPaquetes.dtos.AgenciaDTO"  %>
    <%@page import="com.ofertaPaquetes.dtos.TipoServicioDTO"  %>
    <%@page import="com.ofertaPaquetes.dtos.DestinoDTO"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Paquetes - Alta</title>
<script type="text/javascript" src="js/jquery/jquery-1.12.1.js"></script>
<script type="text/javascript" src="js/Bootstrap/bootstrap.js"></script>
<link type="text/css" href="css/Bootstrap/bootstrap.css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery_ui/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery_ui/jquery-ui-datetimepicker-es.js"></script>
<script type="text/javascript" src="js/jquery_validation/src/core.js"></script>
<script type="text/javascript" src="js/jquery_validation/src/localization/messages_es_AR.js"></script>
<script type="text/javascript" src="js/multiselect/bootstrap-multiselect.js"></script>

<link type="text/css" href="css/Site.css" rel="stylesheet" />
<link type="text/css" href="css/jquery_ui/jquery-ui.css" rel="stylesheet" />
<link type="text/css" href="css/jquery_ui/jquery-ui.structure.css" rel="stylesheet" />
<link type="text/css" href="css/jquery_ui/jquery-ui.theme.css" rel="stylesheet" />
<link type="text/css" href="css/multiselect/bootstrap-multiselect.css" rel="stylesheet" />

<style>
	#frmGrpServicios.form-group>span{
		width:100%;
		display:block;
	}
	
	#frmGrpServicios.form-group>span>.btn-group{
		width:100%;
	}
	
	#frmGrpServicios.form-group>span>.btn-group>button{
		width:100%;
	}
</style>

</head>
<nav id="menu" class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="menu-link navbar-brand" href="/OfertaPaquetesWebSite/Index.jsp"><span class="glyphicon glyphicon-home"></span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	<li><a class="menu-link" href="/OfertaPaquetesWebSite/Paquetes">Volver</a></li>  
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<body>
   <div class="container">
  <h2>Agregar paquetes</h2>
  <p>Formulario para la carga de paquetes al sistema.</p>                                                                                      
  
  <form id="frmPaquetes" method="post">
  <div class="form-group">
    <label>Nombre:</label>
    <input class="form-control" id="nombre" name="nombre" required>
  </div>
  <div class="form-group">
    <label for="descripcion">Descripci�n:</label>
    <textarea class="form-control" style="min-height:150px" name="descripcion" id="descripcion" required></textarea>
  </div>
  
  <div class="row">
	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
	  <div class="form-group">
		<label>Destino:</label>
		<select class="form-control" id="destino" name="destino" required>
			<option value="default">Seleccione...</option>
			<% List<DestinoDTO> lstDest = (List<DestinoDTO>) request.getAttribute("listDestinos");
    		for(DestinoDTO d : lstDest)
    		{%>
			<option value=<%=d.getIdDestino() %>><%=d.getNombre() %></option>
			<%} %>
		  </select>
	  </div>
	</div>
	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
	  <div class="form-group">
		<label>Agencia:</label>
		<select class="form-control" id="agencia" name="agencia" required>
			<option value="default">Seleccione...</option>
			<% List<AgenciaDTO> lst = (List<AgenciaDTO>) request.getAttribute("listAgencias");
    		for(AgenciaDTO p : lst)
    		{%>
				<option value=<%=p.getIdAgencia() %>><%=p.getNombre() %></option>
			<%} %>
		  </select>
	  </div>
  	</div>
  	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
	  <div class="form-group" id="frmGrpServicios">
		<label>Servicios:</label>
		<select class="form-control" id="servicios" name="servicios" multiple="multiple" required>
		<% List<TipoServicioDTO> lstServ = (List<TipoServicioDTO>) request.getAttribute("listServicios");
    		for(TipoServicioDTO s : lstServ)
    		{%>
			<option value=<%=s.getIdTipoServicio() %>><%=s.getNombre() %></option>
			<%} %>
		  </select>
	  </div>
  	</div>
  </div>
  
  <div class="form-group">
	<label>Foto:</label>
	<!-- <input class="form-control" id="foto" name="foto" type="file" accept="image/*" required> -->
  </div>
  <div class="row">
  
  
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
			<div class="form-group">
				<label>Fecha de Salida:</label>
				<input class="form-control" id="fechaSalida" name="fechaSalida" required>
			</div>
	</div>
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
		<div class="form-group">
			<label>Fecha de Llegada:</label>
			<input class="form-control" id="fechaLlegada" name="fechaLlegada" required>
		</div>
	</div>
  
  </div>
  <div class="row">
	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		<div class="form-group">
			<label>Cupo:</label>
			<input class="form-control" id="cupo" name="cupo" type="number" required>
		</div>
	</div>
	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		<div class="form-group">
			<label>Cant. de personas:</label>
			<input class="form-control" id="cantPersonas" name="cantPersonas" type="number" required />
		</div>
	</div>
	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
	  <div class="form-group">
		<label>Precio del paquete:</label>
		<input class="form-control" id="precio" name="precio" type="number" step="0.01" required />
	  </div>
	</div>
  </div>
  
  <div class="form-group">
	<label>Pol�ticas de cancelaci�n:</label>
	<textarea class="form-control" id="politicasCancelacion" name="politicasCancelacion" style="minheight:150px" required></textarea>
  </div>
  
	<div class="checkbox">
		<label><input id="estado" name="estado" type="checkbox" value="">Habilitado</label>
	</div>
  
  <button type="submit" class="btn btn-primary center-block">Guardar</button>
</form>
</div>

<script>

//Sacar esta config desde el archivo js que trae el jqueryValidator
$.extend( $.validator.messages, {
	required: "Este campo es obligatorio.",
	remote: "Por favor, complet� este campo.",
	email: "Por favor, escrib� una direcci�n de correo v�lida.",
	url: "Por favor, escrib� una URL v�lida.",
	date: "Por favor, escrib� una fecha v�lida.",
	dateISO: "Por favor, escrib� una fecha (ISO) v�lida.",
	number: "Por favor, escrib� un n�mero entero v�lido.",
	digits: "Por favor, escrib� s�lo d�gitos.",
	creditcard: "Por favor, escrib� un n�mero de tarjeta v�lido.",
	equalTo: "Por favor, escrib� el mismo valor de nuevo.",
	extension: "Por favor, escrib� un valor con una extensi�n aceptada.",
	maxlength: $.validator.format( "Por favor, no escribas m�s de {0} caracteres." ),
	minlength: $.validator.format( "Por favor, no escribas menos de {0} caracteres." ),
	rangelength: $.validator.format( "Por favor, escrib� un valor entre {0} y {1} caracteres." ),
	range: $.validator.format( "Por favor, escrib� un valor entre {0} y {1}." ),
	max: $.validator.format( "Por favor, escrib� un valor menor o igual a {0}." ),
	min: $.validator.format( "Por favor, escrib� un valor mayor o igual a {0}." ),
	nifES: "Por favor, escrib� un NIF v�lido.",
	nieES: "Por favor, escrib� un NIE v�lido.",
	cifES: "Por favor, escrib� un CIF v�lido."
} );

	
  $( function() {
   $.validator.addMethod("valueNotEquals", function(value, element, arg){
  return arg !== value;
 }, "Value must not equal arg.");
  
  $("#frmPaquetes").validate({
  rules: {
   destino: { valueNotEquals: "default" },
   servicios: { valueNotEquals: "default" },
   agencia : { valueNotEquals: "default" },
  },
  messages: {
   destino: { valueNotEquals: "Este campo es requerido" },
   servicios: { valueNotEquals: "Este campo es requerido" },
   agencia: { valueNotEquals: "Este campo es requerido" }
  }  
 });
  $( "#fechaSalida" ).datepicker();
  $( "#fechaLlegada" ).datepicker();
  
  $("#fechaSalida").change(function(){
	$( "#fechaLlegada" ).datepicker( "option", "minDate", $( "#fechaSalida" ).datepicker( "getDate" ));
  })
  } );

  $("#servicios").multiselect({
	  nonSelectedText: 'Seleccione...'
	  });
  </script>
  </body>
</html>