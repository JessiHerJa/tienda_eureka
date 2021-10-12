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
<title>Buscar Cliente</title>
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

	
	
	
	<div class="alert alert-warning" role="alert">
		  <h2 style="text-align:center;" ><i class="fas fa-table"></i> Buscar cliente</h2>
		</div>
	
	
		
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al buscar el cliente, el cliente no �xiste</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Cliente encontrado con �xito</div>

			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">C�dula</span> <input
						type="text" class="form-control"
						placeholder="  Inserte su c�dula aqu�"
						aria-describedby="basic-addon1" required id="cedula_cliente">
					
				</div>
				<br>
				<button type="button" class="btn btn-primary" onclick="enviar()">
					<i class="fas fa-search"></i> Buscar cliente
					</button>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Tel�fono</span> <input
						type="text" class="form-control"
						placeholder="  Inserte su t�lefono aqu�"
						aria-describedby="basic-addon2" required id="telefono_cliente">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Nombre Completo</span>
					<input type="text" class="form-control"
						placeholder="  Inserte su nombre aqu�"
						aria-describedby="basic-addon3" required id="nombre_cliente">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Correo</span> <input
						type="text" class="form-control"
						placeholder="  Inserte su correo aqu�"
						aria-describedby="basic-addon4" required id="correo_cliente">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Direcci�n</span> <input
						type="text" class="form-control"
						placeholder="  Inserte direcci�n aqu�"
						aria-describedby="basic-addon5" required id="direccion_cliente">
				</div>
				

			</form>
			</div>
			<br>		
	<div class="container-opciones">

	<button type="button" class="btn btn-primary" onclick="window.location.href='/insertarcliente.jsp'">
		<i class="fas fa-chalkboard-teacher"></i> Agregar clientes
	</button>
	
	<button type="button" class="btn btn-secondary" onclick="window.location.href='/eliminarcliente.jsp'">
		<i class="fas fa-window-close"></i> Eliminar clientes
	</button>
	
	<button type="button" class="btn btn-success" onclick="window.location.href='/actualizarcliente.jsp'">
		<i class="fas fa-external-link-square-alt"></i> Actualizar cientes
	</button>
	
	<button type="button" class="btn btn-danger" onclick="window.location.href='/buscarcliente.jsp'">
		<i class="fas fa-search-plus"></i> Buscar clientes
	</button>
	
	<button type="button" class="btn btn-warning" onclick="window.location.href='/listarclientes.jsp'">
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
	<script>
		function enviar() {
				
				var req = new XMLHttpRequest();
				var coincidencia = false;
				var user=   document.getElementById("cedula_cliente").value;
				req.open('GET', 'http://localhost:8080/consultarcliente?cliente='+user, false);
				req.send(null);
				var cliente = null;
				if (req.status == 200)
					cliente = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));
				
			
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				console.log(cliente.toString());
				
			if (cliente.toString()!=""){
				document.getElementById("cedula_cliente").value = cliente[0].cedula_cliente;
				document.getElementById("telefono_cliente").value = cliente[0].telefono_cliente;
				document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;
				document.getElementById("correo_cliente").value = cliente[0].correo_cliente;
				document.getElementById("direccion_cliente").value = cliente[0].direccion_cliente;
				
				document.getElementById("cedula_cliente").value = "";
			
			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_cliente").value = "";
				document.getElementById("telefono_cliente").value = "";
				document.getElementById("nombre_cliente").value = "";
				document.getElementById("correo_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
			}
		}
	</script>
	

</body>
</html>