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
<title>Eliminar proveedor</title>
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
			<a class="navbar-brand links" href="listaproveedores.jsp">
			<i class="fas fa-truck"></i> Proveedores</a>
			<a class="navbar-brand links" href="listaproductos.jsp">
			<i class="fas fa-apple-alt"></i> Productos</a>
			<a class="navbar-brand links" href="listaventas.jsp">
			<i class="fas fa-money-check-alt"></i> Ventas</a>
			<a class="navbar-brand links" href="listareportes.jsp">
			<i class="fas fa-clipboard-list"></i> Reportes</a>
		</div>
	</nav>
	
	
	
	
	<!-- contenido  -->

	<div style="padding-left: 5px">
	
	
	<div class="alert alert-warning" role="alert">
		  <h2 style="text-align:center;" ><i class="fas fa-table"></i> Eliminar Proveedor</h2>
		</div>
	
	
		
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al eliminar el proveedor, verifique que 
				exista un proveedor con ese NIT</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Proveedor eliminado con �xito</div>

			<form id="form1">
			
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">NIT</span> <input
						type="text" class="form-control"
						placeholder=" Inserte NIT aqui..."
						aria-describedby="basic-addon1" required id="nit_proveedor">
				</div>
				<button type="button" class="btn btn-danger" onclick="eliminar()">
				<i class="fas fa-skull-crossbones"></i> Eliminar proveedor
				</button>

			</form>
			</div>
	<br>		
	<div class="container-opciones">

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
	</button>
	
	</div>	
	
	
	<br>

	</div>
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
		function eliminar() {
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
				
				console.log(clientes[i].nit_proveedor);
				if (clientes[i].nit_proveedor == y) {
					console.log(clientes[i].nit_proveedor + " " + y);
					coincidencia = true;
					break;
				}
			}
			console.log(coincidencia);
			if (coincidencia != false) {
				var cedula=document.getElementById("nit_proveedor").value;
				
				var xhr = new XMLHttpRequest();
				xhr.open("DELETE", "http://localhost:8080/eliminarproveedor?nit="+cedula);
				
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				document.getElementById("nit_proveedor").value = "";
				xhr.send();
			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				
				document.getElementById("nit_proveedor").value = "";;
			}
		}
	</script>
	

</body>
</html>