<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama�o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta�a -->
<title>Lista de clientes</title>
<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style.css" rel="stylesheet" type="text/css" />


<script>
	var baseurl = "http://localhost:8080/listarclientes";
	function loadclientes() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var clientes = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-striped table-hover'><tr><th>Cedula</th><th>Telefono</th><th>Nombre</th><th>Correo</th><th>Direccion</th></tr>";
				var main = "";
				for (i = 0; i < clientes.length; i++) {
					main += "<tr><td>" + clientes[i].cedula_cliente
							+ "</td><td>" + clientes[i].telefono_cliente
							+ "</td><td>" + clientes[i].nombre_cliente
							+ "</td><td>" + clientes[i].correo_cliente + "</td><td>"
							+ clientes[i].direccion_cliente + "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadclientes();
	}
</script>

</head>


<body>
	<!-- Navbar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"> Tienda Eureka</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#"><i
				class="fas fa-home"></i> Home <span class="sr-only"></span></a>
    </div>
  </div>
</nav>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-users"></i> Usuarios</a> 
			<a class="navbar-brand links" href="listaclientes.jsp">
			<i class="fas fa-address-book"></i> Clientes</a>
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-truck"></i> Proveedores</a>
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-apple-alt"></i> Productos</a>
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-money-check-alt"></i> Ventas</a>
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-clipboard-list"></i> Reportes</a>
		</div>
	</nav>
	
	
	
	
	<!-- contenido  -->
	
	<div style="padding-left: 5px;">
	
		<div class="alert alert-warning" role="alert">
		  <h2 style="text-align:center;"><i class="fas fa-table"></i> Tabla de clientes</h2>
		</div>
		
			<div class="container">
				<div class="row">
					<!--  Aqui es donde se autogenera la tabla basado en el script -->
					<div class="col align-self-center" id="usuariosinfo">
					
					</div>
	
				</div>
			</div>
			
	<br>		
	<div class="container-opciones">

	<button type="button" class="btn btn-primary" onclick="window.location.href='/insertarcliente.jsp'">
		<i class="fas fa-chalkboard-teacher"></i> Agregar clientes
	</button>
	
	<button type="button" class="btn btn-secondary" onclick="window.location.href='/insertarcliente.jsp'">
		<i class="fas fa-window-close"></i> Eliminar clientes
	</button>
	
	<button type="button" class="btn btn-success" >
		<i class="fas fa-external-link-square-alt"></i> Actualizar cientes
	</button>
	
	<button type="button" class="btn btn-danger" onclick="window.location.href='/buscarcliente.jsp'">
		<i class="fas fa-search-plus"></i> Buscar clientes
	</button>
	
	<button type="button" class="btn btn-warning">
		<i class="fas fa-clipboard"></i> Listar todos los clientes
	</button>
	
	</div>
	
	
	<br>
	
		
		<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#"><i class="fas fa-barcode"></i>
					Grupo 8 
					</a>
			</div>
		</div>
	</nav>
		
			
	</div>



</body>
</html>