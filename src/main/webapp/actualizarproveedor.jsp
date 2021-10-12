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
<title>Actualizar proveedor</title>
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
			<a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-users"></i> Usuarios
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-address-book"></i> Clientes
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-truck"></i> Proveedores
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-apple-alt"></i> Productos
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>
	<div class="alert alert-warning" role="alert">

		<h2 style="text-align:center;">
			<i class="fas fa-sync"></i> Datos a actualizar del proveedor
		</h2>
	</div>
		
	
		
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al actualizar el proveedor, verifique que el nit sea correcto</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Proveedor actualizado con éxito</div>

			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">NIT Proveedor</span> <input
						type="text" class="form-control"
						placeholder="Inserte cédula aqui..."
						aria-describedby="basic-addon1" required id="nit_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Ciudad proveedor</span> <input
						type="text" class="form-control"
						placeholder="Inserte télefono aqui..."
						aria-describedby="basic-addon2" required id="ciudad_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Dirección proveedor</span>
					<input type="text" class="form-control"
						placeholder="Inserte nombre aqui..."
						aria-describedby="basic-addon3" required id="direccion_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre proveedor</span> <input
						type="text" class="form-control"
						placeholder="Inserte correo aqui..."
						aria-describedby="basic-addon4" required id="nombre_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Teléfono proveedor</span> <input
						type="text" class="form-control"
						placeholder="Inserte direccion aqui..."
						aria-describedby="basic-addon5" required id="telefono_proveedor">
				</div>
				<button type="button" class="btn btn-warning" onclick="actualizar()">
				<i class="fas fa-edit"></i> Actualizar proveedor
				</button>
			</form>
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
	<script>
		function actualizar() {
			
			var y = document.getElementById("nit_proveedor").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarproveedores', false);
			req.send(null);
			var clientes = null;
			if (req.status == 200)
				clientes = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));
			for (i = 0; i < clientes.length; i++) {
				console.log(clientes[i].cliente);
				console.log(clientes[i].nit_proveedor);
				
				
				if (clientes[i].nit_proveedor == y) {
					console.log(clientes[i].nit_proveedor + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);
			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("nit_proveedor", document
						.getElementById("nit_proveedor").value);
				formData.append("ciudad_proveedor", document
						.getElementById("ciudad_proveedor").value);
				formData.append("direccion_proveedor", document
						.getElementById("direccion_proveedor").value);
				formData.append("nombre_proveedor",
						document.getElementById("nombre_proveedor").value);
				formData.append("telefono_proveedor",
						document.getElementById("telefono_proveedor").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", "http://localhost:8080/actualizarproveedor");
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
				xhr.send(formData);
			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
			}
		}
	</script>

</body>
</html>
