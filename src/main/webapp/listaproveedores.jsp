<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Lista proveedores</title>
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
	var baseurl = "http://localhost:8080/listarproveedores";
	function loadusuarios() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var usuarios = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-striped table-hover'><tr><th>NIT Proveedor</th><th>Ciudad</th><th>Dirección</th><th>Nombre</th><th>Teléfono</th></tr>";
				var main = "";
				for (i = 0; i < usuarios.length; i++) {
					main += "<tr><td>" + usuarios[i].nit_proveedor
							+ "</td><td>" + usuarios[i].ciudad_proveedor
							+ "</td><td>" + usuarios[i].direccion_proveedor
							+ "</td><td>" + usuarios[i].nombre_proveedor + "</td><td>"
							+ usuarios[i].telefono_proveedor + "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadusuarios();
	}
</script>

</head>


<body>
	<!-- Navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Tienda Eureka</a>
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
			<a class="navbar-brand links" href="listaproductos.jsp">
			<i class="fas fa-apple-alt"></i> Productos</a>
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-money-check-alt"></i> Ventas</a>
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-clipboard-list"></i> Reportes</a>
		</div>
	</nav>
	
	
	<!-- contenido  -->
	
	
		
		<div class="alert alert-warning" role="alert">
		  <h2 style="text-align:center;"><i class="fas fa-table"></i> Tabla de proveedores</h2>
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

<<<<<<< Updated upstream
	<button type="button" class="btn btn-primary" onclick="window.location.href='/insertarproveedor.jsp'">
		<i class="fas fa-chalkboard-teacher"></i> Agregar proveedores
	</button>
	
	<button type="button" class="btn btn-secondary" onclick="window.location.href='/eliminarproveedor.jsp'">
		<i class="fas fa-window-close"></i> Eliminar proveedores
	</button>
	
	<button type="button" class="btn btn-success" onclick="window.location.href='/actualizarproveedor.jsp'">
		<i class="fas fa-external-link-square-alt"></i> Actualizar proveedores
	</button>
	
	<button type="button" class="btn btn-danger" onclick="window.location.href='/buscarproveedor.jsp'">
		<i class="fas fa-search-plus"></i> Buscar proveedores
	</button>
	
	<button type="button" class="btn btn-warning" onclick="window.location.href='/listarproveedores.jsp'">
		<i class="fas fa-clipboard"></i> Listar todos los proveedores
=======
	<button type="button" class="btn btn-success" onclick="window.location.href='/insertarproveedor.jsp'">
		<i class="fas fa-chalkboard-teacher"></i> Agregar proveedor
	</button>
	
	<button type="button" class="btn btn-danger" onclick="window.location.href='/eliminarproveedor.jsp'">
		<i class="fas fa-window-close "></i> Eliminar proveedor
	</button>
	
	<button type="button" class="btn btn-primary" onclick="window.location.href='/actualizarproveedor.jsp'">
		<i class="fas fa-external-link-square-alt"></i> Actualizar proveedor
	</button>
	
	<button type="button" class="btn btn-warning" onclick="window.location.href='/buscarproveedor.jsp'">
		<i class="fas fa-search-plus"></i> Buscar proveedor
	</button>
	
	<button type="button" class="btn btn-secondary" onclick="window.location.href='/listaproveedores.jsp'">
		<i class="fas fa-clipboard"></i> Lista proveedores
>>>>>>> Stashed changes
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


</body>
</html>