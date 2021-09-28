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
<title>Insertando usuario</title>
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
	
	
	
	
	<!-- contenido  -->

	<div style="padding-left: 5px">
	
	
	<div class="alert alert-warning" role="alert">
		  <h2 style="text-align:center;" ><i class="fas fa-table"></i> Datos del nuevo usuario</h2>
		</div>
	
	
		
		<div class="container">
		
		
			<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al crear el usuario, verifique que no exista un usuario con la cedula y usuario dados</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Usuario creado con exito</div>

			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">C�dula</span> <input
						type="text" class="form-control"
						placeholder="  Inserte su c�dula aqu�"
						aria-describedby="basic-addon1" required id="cedula_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Correo</span> <input
						type="text" class="form-control"
						placeholder="  Inserte su correo aqu�."
						aria-describedby="basic-addon2" required id="email_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Nombre Completo</span>
					<input type="text" class="form-control"
						placeholder="  Inserte su nombre aqu�"
						aria-describedby="basic-addon3" required id="nombre_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Username</span> <input
						type="text" class="form-control"
						placeholder="  Inserte username aqu�"
						aria-describedby="basic-addon4" required id="user">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Password</span> <input
						type="text" class="form-control"
						placeholder="  Inserte password aqui..."
						aria-describedby="basic-addon5" required id="password">
				</div>
				
				<button type="button" class="btn btn-success" onclick="enviar()">
				<i class="fas fa-check"></i> Insertar nuevo usuario
				</button>


			</form>

			


			
		</div>
		
	<br>		
	<div class="container-opciones">

	<button type="button" class="btn btn-primary" onclick="window.location.href='/insertarusuario.jsp'">
		<i class="fas fa-chalkboard-teacher"></i> Agregar usuario
	</button>
	
	<button type="button" class="btn btn-secondary" onclick="window.location.href='/eliminarusuario.jsp'">
		<i class="fas fa-window-close"></i> Eliminar usuario
	</button>
	
	<button type="button" class="btn btn-success" onclick="window.location.href='/actualizarusuario.jsp'">
		<i class="fas fa-external-link-square-alt"></i> Actualizar usuario
	</button>
	
	<button type="button" class="btn btn-danger" onclick="window.location.href='/buscarusuario.jsp'">
		<i class="fas fa-search-plus"></i> Buscar usuario
	</button>
	
	<button type="button" class="btn btn-warning" onclick="window.location.href='/listarusuarios.jsp'">
		<i class="fas fa-clipboard"></i> Listar todos los usuarios
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
			var x = document.getElementById("user").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarusuarios', false);
			req.send(null);
			var usuarios=null;
			if (req.status == 200)
				usuarios=JSON.parse(req.responseText);
			  	console.log(JSON.parse(req.responseText));
			  	
			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].usuario ==x ) {
					console.log(usuarios[i].usuario +" "+x);	
					coincidencia =true
					break;
				}
				
				if (usuarios[i].cedula_usuario ==y ) {
					console.log(usuarios[i].cedula_usuario +" "+y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);	
			
			if (coincidencia==false){
				var formData = new FormData();
	 			formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
	 			formData.append("email_usuario", document.getElementById("email_usuario").value);
	 			formData.append("nombre_usuario", document.getElementById("nombre_usuario").value);
	 			formData.append("password",document.getElementById("password").value);
	 			formData.append("usuario",document.getElementById("user").value);
	 			var xhr = new XMLHttpRequest();
	 			xhr.open("POST", "http://localhost:8080/registrarusuario");
	 			
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
	 			xhr.send(formData);

			}else{
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}	
		}
	</script>

</body>
</html>