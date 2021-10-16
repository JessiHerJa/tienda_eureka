<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <title>
    TIENDA EUREKA
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="assets/css/soft-ui-dashboard.css?v=1.0.3" rel="stylesheet" />
  <script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<script>
	window.onload = function() {
		var req = new XMLHttpRequest();
		req.open('GET', 'http://localhost:8080/contadorventa', false);
		req.send(null);
		var cont = null;
		if (req.status == 200)
			cont = JSON.parse(req.responseText);
		console.log(cont.toString());
		document.getElementById("consecutivo").value = cont;
	};
</script>
  
</head>

<body class="g-sidenav-show  bg-gray-100">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="https://demos.creative-tim.com/soft-ui-dashboard/pages/dashboard.html" target="_blank">
        <img src="assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold">TIENDA EUREKA</span>
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100 h-100" id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link " href="listausuarios.jsp">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>office</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1869.000000, -293.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g id="office" transform="translate(153.000000, 2.000000)">
                        <path class="color-background opacity-6" d="M12.25,17.5 L8.75,17.5 L8.75,1.75 C8.75,0.78225 9.53225,0 10.5,0 L31.5,0 C32.46775,0 33.25,0.78225 33.25,1.75 L33.25,12.25 L29.75,12.25 L29.75,3.5 L12.25,3.5 L12.25,17.5 Z"></path>
                        <path class="color-background" d="M40.25,14 L24.5,14 C23.53225,14 22.75,14.78225 22.75,15.75 L22.75,38.5 L19.25,38.5 L19.25,22.75 C19.25,21.78225 18.46775,21 17.5,21 L1.75,21 C0.78225,21 0,21.78225 0,22.75 L0,40.25 C0,41.21775 0.78225,42 1.75,42 L40.25,42 C41.21775,42 42,41.21775 42,40.25 L42,15.75 C42,14.78225 41.21775,14 40.25,14 Z M12.25,36.75 L7,36.75 L7,33.25 L12.25,33.25 L12.25,36.75 Z M12.25,29.75 L7,29.75 L7,26.25 L12.25,26.25 L12.25,29.75 Z M35,36.75 L29.75,36.75 L29.75,33.25 L35,33.25 L35,36.75 Z M35,29.75 L29.75,29.75 L29.75,26.25 L35,26.25 L35,29.75 Z M35,22.75 L29.75,22.75 L29.75,19.25 L35,19.25 L35,22.75 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Usuarios</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="listaclientes.jsp">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 45 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>shop </title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1716.000000, -439.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(0.000000, 148.000000)">
                        <path class="color-background opacity-6" d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z"></path>
                        <path class="color-background" d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Clientes</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="listaproveedores.jsp">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>credit-card</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(453.000000, 454.000000)">
                        <path class="color-background opacity-6" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"></path>
                        <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Proveedores</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="listaproductos.jsp">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>box-3d-50</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-2319.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(603.000000, 0.000000)">
                        <path class="color-background" d="M22.7597136,19.3090182 L38.8987031,11.2395234 C39.3926816,10.9925342 39.592906,10.3918611 39.3459167,9.89788265 C39.249157,9.70436312 39.0922432,9.5474453 38.8987261,9.45068056 L20.2741875,0.1378125 L20.2741875,0.1378125 C19.905375,-0.04725 19.469625,-0.04725 19.0995,0.1378125 L3.1011696,8.13815822 C2.60720568,8.38517662 2.40701679,8.98586148 2.6540352,9.4798254 C2.75080129,9.67332903 2.90771305,9.83023153 3.10122239,9.9269862 L21.8652864,19.3090182 C22.1468139,19.4497819 22.4781861,19.4497819 22.7597136,19.3090182 Z"></path>
                        <path class="color-background opacity-6" d="M23.625,22.429159 L23.625,39.8805372 C23.625,40.4328219 24.0727153,40.8805372 24.625,40.8805372 C24.7802551,40.8805372 24.9333778,40.8443874 25.0722402,40.7749511 L41.2741875,32.673375 L41.2741875,32.673375 C41.719125,32.4515625 42,31.9974375 42,31.5 L42,14.241659 C42,13.6893742 41.5522847,13.241659 41,13.241659 C40.8447549,13.241659 40.6916418,13.2778041 40.5527864,13.3472318 L24.1777864,21.5347318 C23.8390024,21.7041238 23.625,22.0503869 23.625,22.429159 Z"></path>
                        <path class="color-background opacity-6" d="M20.4472136,21.5347318 L1.4472136,12.0347318 C0.953235098,11.7877425 0.352562058,11.9879669 0.105572809,12.4819454 C0.0361450918,12.6208008 6.47121774e-16,12.7739139 0,12.929159 L0,30.1875 L0,30.1875 C0,30.6849375 0.280875,31.1390625 0.7258125,31.3621875 L19.5528096,40.7750766 C20.0467945,41.0220531 20.6474623,40.8218132 20.8944388,40.3278283 C20.963859,40.1889789 21,40.0358742 21,39.8806379 L21,22.429159 C21,22.0503869 20.7859976,21.7041238 20.4472136,21.5347318 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Productos</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active " href="insertarventa.jsp">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 40 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>settings</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-2020.000000, -442.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(304.000000, 151.000000)">
                        <polygon class="color-background opacity-6" points="18.0883333 15.7316667 11.1783333 8.82166667 13.3333333 6.66666667 6.66666667 0 0 6.66666667 6.66666667 13.3333333 8.82166667 11.1783333 15.315 17.6716667"></polygon>
                        <path class="color-background opacity-6" d="M31.5666667,23.2333333 C31.0516667,23.2933333 30.53,23.3333333 30,23.3333333 C29.4916667,23.3333333 28.9866667,23.3033333 28.48,23.245 L22.4116667,30.7433333 L29.9416667,38.2733333 C32.2433333,40.575 35.9733333,40.575 38.275,38.2733333 L38.275,38.2733333 C40.5766667,35.9716667 40.5766667,32.2416667 38.275,29.94 L31.5666667,23.2333333 Z"></path>
                        <path class="color-background" d="M33.785,11.285 L28.715,6.215 L34.0616667,0.868333333 C32.82,0.315 31.4483333,0 30,0 C24.4766667,0 20,4.47666667 20,10 C20,10.99 20.1483333,11.9433333 20.4166667,12.8466667 L2.435,27.3966667 C0.95,28.7083333 0.0633333333,30.595 0.00333333333,32.5733333 C-0.0583333333,34.5533333 0.71,36.4916667 2.11,37.89 C3.47,39.2516667 5.27833333,40 7.20166667,40 C9.26666667,40 11.2366667,39.1133333 12.6033333,37.565 L27.1533333,19.5833333 C28.0566667,19.8516667 29.01,20 30,20 C35.5233333,20 40,15.5233333 40,10 C40,8.55166667 39.685,7.18 39.1316667,5.93666667 L33.785,11.285 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Ventas</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link  " href="reportes.jsp">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
              <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>box-3d-50</title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-2319.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(603.000000, 0.000000)">
                        <path class="color-background" d="M22.7597136,19.3090182 L38.8987031,11.2395234 C39.3926816,10.9925342 39.592906,10.3918611 39.3459167,9.89788265 C39.249157,9.70436312 39.0922432,9.5474453 38.8987261,9.45068056 L20.2741875,0.1378125 L20.2741875,0.1378125 C19.905375,-0.04725 19.469625,-0.04725 19.0995,0.1378125 L3.1011696,8.13815822 C2.60720568,8.38517662 2.40701679,8.98586148 2.6540352,9.4798254 C2.75080129,9.67332903 2.90771305,9.83023153 3.10122239,9.9269862 L21.8652864,19.3090182 C22.1468139,19.4497819 22.4781861,19.4497819 22.7597136,19.3090182 Z"></path>
                        <path class="color-background opacity-6" d="M23.625,22.429159 L23.625,39.8805372 C23.625,40.4328219 24.0727153,40.8805372 24.625,40.8805372 C24.7802551,40.8805372 24.9333778,40.8443874 25.0722402,40.7749511 L41.2741875,32.673375 L41.2741875,32.673375 C41.719125,32.4515625 42,31.9974375 42,31.5 L42,14.241659 C42,13.6893742 41.5522847,13.241659 41,13.241659 C40.8447549,13.241659 40.6916418,13.2778041 40.5527864,13.3472318 L24.1777864,21.5347318 C23.8390024,21.7041238 23.625,22.0503869 23.625,22.429159 Z"></path>
                        <path class="color-background opacity-6" d="M20.4472136,21.5347318 L1.4472136,12.0347318 C0.953235098,11.7877425 0.352562058,11.9879669 0.105572809,12.4819454 C0.0361450918,12.6208008 6.47121774e-16,12.7739139 0,12.929159 L0,30.1875 L0,30.1875 C0,30.6849375 0.280875,31.1390625 0.7258125,31.3621875 L19.5528096,40.7750766 C20.0467945,41.0220531 20.6474623,40.8218132 20.8944388,40.3278283 C20.963859,40.1889789 21,40.0358742 21,39.8806379 L21,22.429159 C21,22.0503869 20.7859976,21.7041238 20.4472136,21.5347318 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </div>
            <span class="nav-link-text ms-1">Reportes</span>
          </a>
        </li>



      </ul>
    </div>

  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Ventas</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Registrar Venta</h6>
        </nav>
      </div>
    </nav>
    <!-- End Navbar -->
   
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h3 class="font-weight-bolder text-info text-gradient">Registrar Venta</h3>
              <ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">Permite ingresar una venta
						realizada a un cliente especifico, realizado por un usuario
						especifico</li>
				</ol>
				<i class="fas fa-table"></i> Registro de venta
            </div>
            <div class="card-body px-0 pt-0 pb-2">



          
            <div class="col-md-12">
            
              <div class="card card-plain">

                <div class="card-body">
                
                  <form role="form" id="form1">
                  
               

                  <div class="row">
                    <div class="col-md-2 mb-md-0 mb-4">
                    <h6>Datos venta</h6>

		 <label>Consecutivo</label>
		 <div class="mb-1">
		   <input type="text" class="form-control" readonly="readonly" aria-label="Consecutivo" aria-describedby="consecutivo-addon" id="consecutivo">
		 </div>
		 </div>
		 
		 <div class="card-body p-2">
		 <div class="row">
		 <h6>Datos Cliente</h6>
		 <div class="col-md-3 mb-md-0 mb-4">
		 <label><i id="checkcliente" class="fas fa-times text-danger"></i>Cédula cliente</label>
		 <div class="mb-1">
		   <input type="text" id="cedula_cliente" oninput="traerNombreCliente()" class="form-control" placeholder="Inserte su cédula cliente aquí" aria-label="Password" aria-describedby="password-addon">
		 </div>
		 </div>
		<div class="col-md-3">
		 <label>Nombre</label>
		 <div class="mb-1">
		   <input type="text" id="nombre_cliente" class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		</div>
		</div>
		
		<div class="card-body p-2">
		 <div class="row">
		 <h6>Datos del Usurio</h6>
		 <div class="col-md-3 mb-md-0 mb-4">
		 <label><i id="checkusuario"class="fas fa-times text-danger"></i>Username Usurio</label>
		 <div class="mb-1">
		   <input type="text" id="cedula_usuario" oninput="traerNombreUsuario()" class="form-control" placeholder="Inserte su cédula usurio aquí" aria-label="Password" aria-describedby="password-addon">
		 </div>
		 </div>
		<div class="col-md-3">
		 <label>Nombre</label>
		 <div class="mb-1">
		   <input type="text" id="nombre_usuario" class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		</div>
		</div>
		
		<div class="card-body p-3">
		 <div class="row">
		 <h6>Datos Productos</h6>
		  <!-- Producto 1 -->
		 <div class="col-md-2 mb-md-0 mb-4">
		 <label><i id="checkitem1" class="fas fa-times text-danger"></i>Cod.</label>
		 <div class="mb-1 ">
		   <input type="text" id="codigo_producto1" class="form-control" aria-label="Password" aria-describedby="producto-addon">
		  </div>
		 
		
		 </div>
		 
		 
		 <div class="col-md-1">
		 <label></label>
		 <div class="mt-1">
		   <button type="button" class="btn btn-info text-white" onclick="cargarProducto1()">
		 <i class="fas fa-search-dollar"></i></button>
		 </div>
		 </div>
		
		<div class="col-md-4">
		 <label>Nombre producto</label>
		 <div class="mb-1">
		   <input type="text" id="nombre_producto1" class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		 <div class="col-md-1">
		 <label>Cant.</label>
		 <div class="mb-1">
		   <input type="text" id="cant1" oninput="calcularPrecio1()" class="form-control"  aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		 <div class="col-md-2">
		 <label>Valor Total</label>
		 <div class="mb-1">
		   <input type="text" id="valtotal1" class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon" value="0">
		 </div>
		 </div>
		 
		 
		</div>
		</div>
		
		<!-- Producto 2 -->
		<div class="card-body p-3">
		 <div class="row">
		  
		 <div class="col-md-2 mb-md-0 mb-4">
		 <label><i id="checkitem2" class="fas fa-times text-danger"></i>Cod.</label>
		 <div class="mb-1 ">
		   <input type="text" id="codigo_producto2" class="form-control" aria-label="Password" aria-describedby="producto-addon">
		  </div>
		 
		
		 </div>
		 
		 
		 <div class="col-md-1">
		 <label></label>
		 <div class="mt-1">
		   <button type="button" class="btn btn-info text-white" onclick="cargarProducto2()">
		 <i class="fas fa-search-dollar"></i></button>
		 </div>
		 </div>
		
		<div class="col-md-4">
		 <label>Nombre producto</label>
		 <div class="mb-1">
		   <input type="text" id="nombre_producto2" class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		 <div class="col-md-1">
		 <label>Cant.</label>
		 <div class="mb-1">
		   <input type="text" id="cant2" oninput="calcularPrecio2()" class="form-control"  aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		 <div class="col-md-2">
		 <label>Valor Total</label>
		 <div class="mb-1">
		   <input type="text" id="valtotal2"  class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon" value="0">
		 </div>
		 </div>
		 
		 
		</div>
		</div>
		
		<!-- Producto 3 -->
		<div class="card-body p-3">
		 <div class="row">
		  
		 <div class="col-md-2 mb-md-0 mb-4">
		 <label><i id="checkitem3" class="fas fa-times text-danger"></i>Cod.</label>
		 <div class="mb-1 ">
		   <input type="text" id="codigo_producto3" class="form-control" aria-label="Password" aria-describedby="producto-addon">
		  </div>
		 
		
		 </div>
		 
		 
		 <div class="col-md-1">
		 <label></label>
		 <div class="mt-1">
		   <button type="button" class="btn btn-info text-white" onclick="cargarProducto3()">
		 <i class="fas fa-search-dollar"></i></button>
		 </div>
		 </div>
		
		<div class="col-md-4">
		 <label>Nombre producto</label>
		 <div class="mb-1">
		   <input type="text" id="nombre_producto3" class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		 <div class="col-md-1">
		 <label>Cant.</label>
		 <div class="mb-1">
		   <input type="text" id="cant3" oninput="calcularPrecio3()" class="form-control"  aria-label="Password" aria-describedby="nombre-addon">
		 </div>
		 </div>
		 <div class="col-md-2">
		 <label>Valor Total</label>
		 <div class="mb-1">
		   <input type="text" id="valtotal3" class="form-control" readonly="readonly" aria-label="Password" aria-describedby="nombre-addon" value="0">
		 </div>
		 </div>
		 
		 
		</div>
		</div>
		
		
		<!-- Producto 3 -->
		<div class="card-body p-3">
		 <div class="row">
		  
		 <div class="col-md-10 mb-md-0 mb-4">
		 <div class="border-top"></div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<label>Total venta</label>
										<div class="input-group input-group-sm mb-3">
											<input type="text" class="form-control" readonly="readonly" id="total_venta">
										</div>
									</div>
								</div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<label>Total IVA</label>
										<div class="input-group input-group-sm mb-3">
											<input type="text" class="form-control" readonly="readonly" id="total_iva">
										</div>
									</div>
								</div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
									<label>Total venta + IVA</label>
										<div class="input-group input-group-sm mb-3">
											<input type="text" class="form-control" readonly="readonly" id="total_venta_iva">
										</div>
									</div>
								</div>
		 
		 
		 </div>
		 
		 
		</div>
		</div>
		<div class="card-body p-3">
		
		<div class="row ">
									<div class="col-md-3 mb-md-0 mb-4">
										<button type="button" class="btn btn-success"
											onclick="registrar()">
											<i class="fas fa-plus-circle"></i> Registrar venta
										</button>
									</div>
									<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
										<button type="button" class="btn btn-warning"
											onclick="window.location.reload();">
											<i class="fas fa-sync-alt"></i> Recargar pagina
										</button>
									</div>
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
										<div class="alert alert-success visually-hidden" role="alert"
											id="correcto">Datos insertados con exito, recargue la
											pagina para una nueva venta</div>
										<div class="alert alert-danger visually-hidden" role="alert"
											id="error">Error al insertar datos, recargue la pagina
											y reintente de nuevo</div>
									</div>

								</div>
		
		
		</div>
		
	



</div>

                  </form>
                </div>

              </div>
            </div>
            
          





            </div>
          </div>	
        </div>
      </div>

      <footer class="footer pt-3  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-start">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
                made with <i class="fa fa-heart"></i> by
                <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
                for a better web.
              </div>
            </div>
            <div class="col-lg-6">
              <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                </li>
                <li class="nav-item">
                  <a href="https://creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </main>
  
  
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>

	<script>
		includeHTML();
	</script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>

	<script>
	function traerNombreCliente() {
		var client = document.getElementById("cedula_cliente").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/consultarcliente?cliente=' +
			client, false);
		req.send(null);
		var cliente = null;
		if (req.status == 200)
			cliente = JSON.parse(req.responseText);
		console.log(cliente);
		var icono = document.getElementById("checkcliente");
		if (cliente.toString() != "") {
			document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;
			icono.classList.replace("text-danger", "text-success");
			icono.classList.replace("fa-times", "fa-check");
		} else {
			document.getElementById("nombre_cliente").value = "";
			icono.classList.replace("text-success", "text-danger");
			icono.classList.replace("fa-check", "fa-times");
		}
	}
	function traerNombreUsuario() {
		var user = document.getElementById("cedula_usuario").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/consultarusuario?cedula=' +
			user, false);
		req.send(null);
		var usuario = null;
		if (req.status == 200)
			usuario = JSON.parse(req.responseText);
		console.log(usuario);
		var icono2 = document.getElementById("checkusuario");
		if (usuario.toString() != "") {
			document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;
			icono2.classList.replace("text-danger", "text-success");
			icono2.classList.replace("fa-times", "fa-check");
		} else {
			document.getElementById("nombre_usuario").value = "";
			icono2.classList.replace("text-success", "text-danger");
			icono2.classList.replace("fa-check", "fa-times");
		}
	}
	var precio1 = 0.0;
	function cargarProducto1() {
		var prod1 = document.getElementById("codigo_producto1").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/consultarproducto?code=' +
			prod1, false);
		req.send(null);
		var producto1 = null;
		if (req.status == 200)
			producto1 = JSON.parse(req.responseText);
		var icono = document.getElementById("checkitem1");
		if (producto1.toString() != "") {
			console.log(producto1);
			document.getElementById("nombre_producto1").value = producto1[0].nombre_producto;
			precio1 = parseFloat(producto1[0].precio_venta);
			console.log("Precio1: " + precio1)
			icono.classList.replace("text-danger", "text-success");
			icono.classList.replace("fa-times", "fa-check");
		} else {
			document.getElementById("nombre_producto1").value = "";
			icono.classList.replace("text-success", "text-danger");
			icono.classList.replace("fa-check", "fa-times");
		}
	}
	var precio2 = 0.0;
	function cargarProducto2() {
		var prod2 = document.getElementById("codigo_producto2").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/consultarproducto?code=' +
			prod2, false);
		req.send(null);
		var producto2 = null;
		if (req.status == 200)
			producto2 = JSON.parse(req.responseText);
		var icono = document.getElementById("checkitem2");
		if (producto2.toString() != "") {
			console.log(producto2);
			document.getElementById("nombre_producto2").value = producto2[0].nombre_producto;
			precio1 = parseFloat(producto2[0].precio_venta);
			console.log("Precio2: " + precio2)
			icono.classList.replace("text-danger", "text-success");
			icono.classList.replace("fa-times", "fa-check");
		} else {
			document.getElementById("nombre_producto2").value = "";
			icono.classList.replace("text-success", "text-danger");
			icono.classList.replace("fa-check", "fa-times");
		}
	}
	var precio3 = 0.0;
	function cargarProducto3() {
		var prod3 = document.getElementById("codigo_producto3").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/consultarproducto?code=' +
			prod3, false);
		req.send(null);
		var producto3 = null;
		if (req.status == 200)
			producto3 = JSON.parse(req.responseText);
		var icono = document.getElementById("checkitem3");
		if (producto3.toString() != "") {
			console.log(producto3);
			document.getElementById("nombre_producto3").value = producto3[0].nombre_producto;
			precio1 = parseFloat(producto3[0].precio_venta);
			console.log("Precio3: " + precio3)
			icono.classList.replace("text-danger", "text-success");
			icono.classList.replace("fa-times", "fa-check");
		} else {
			document.getElementById("nombre_producto3").value = "";
			icono.classList.replace("text-success", "text-danger");
			icono.classList.replace("fa-check", "fa-times");
		}
	}
	function calcularPrecio1() {
		var cantidad = document.getElementById("cant1").value;
		var valortotal = 0.0;
		if (cantidad == "" || cantidad == null) {
			document.getElementById("valtotal1").value = 0;
		} else {
			valortotal = parseFloat(cantidad) * precio1;
			console.log("Valor 1: " + valortotal);
			document.getElementById("valtotal1").value = valortotal;
		}
		calcularFinales();
	}
	function calcularPrecio2() {
		var cantidad = document.getElementById("cant2").value;
		var valortotal = 0.0;
		if (cantidad == "" || cantidad == null) {
			document.getElementById("valtotal2").value = 0;
		} else {
			valortotal = parseFloat(cantidad) * precio1;
			console.log("Valor 2: " + valortotal);
			document.getElementById("valtotal2").value = valortotal;
		}
		calcularFinales();
	}
	function calcularPrecio3() {
		var cantidad = document.getElementById("cant3").value;
		var valortotal = 0.0;
		if (cantidad == "" || cantidad == null) {
			document.getElementById("valtotal3").value = 0;
		} else {
			valortotal = parseFloat(cantidad) * precio1;
			console.log("Valor 3: " + valortotal);
			document.getElementById("valtotal3").value = valortotal;
		}
		calcularFinales();
	}
	function calcularFinales() {
		var val1 = document.getElementById("valtotal1").value;
		var val2 = document.getElementById("valtotal2").value;
		var val3 = document.getElementById("valtotal3").value;
		totalventa = parseFloat(val1) + parseFloat(val2) + parseFloat(val3);
		document.getElementById("total_venta").value = totalventa;
		var iva = totalventa * 0.19;
		document.getElementById("total_iva").value = iva;
		document.getElementById("total_venta_iva").value = iva + totalventa;
	}
	function registrar() {
		try {
			formData = new FormData();
			formData.append("codigo_venta", document.getElementById("consecutivo").value);
			formData.append("cedula_cliente", document.getElementById("cedula_cliente").value);
			formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
			formData.append("ivaventa", document.getElementById("total_iva").value);
			formData.append("total_venta", document.getElementById("total_venta").value);
			formData.append("valor_venta", document.getElementById("total_venta_iva").value);
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "http://localhost:8080/registrarventa");
			xhr.send(formData);
			setTimeout(
				function() {
					for (i = 1; i < 4; i++) {
						var actual = document.getElementById(("valtotal" + i.toString()).value);
						if (actual == 0) {
							continue;
						} else {
							var formData2 = new FormData();
							//formData2.append("codigo_detalle_venta", );
							formData2.append("cantidad_producto", document.getElementById("cant" +
								i.toString()).value);
							formData2.append("codigo_producto", document
								.getElementById("codigo_producto" +
									i
									.toString()).value);
							formData2
								.append(
									"codigo_venta",
									document
									.getElementById("consecutivo").value);
							formData2.append("valor_total", document
								.getElementById("valtotal" +
									i.toString()).value);
							formData2
								.append(
									"valor_venta",
									document
									.getElementById("total_venta").value);
							formData2
								.append(
									"valoriva",
									document
									.getElementById("total_venta_iva").value);
							var xhr2 = new XMLHttpRequest();
							xhr2
								.open("POST",
									"http://localhost:8080/registrardetalleventa");
							xhr2.send(formData2);
						}
					}
					var element = document.getElementById("error");
					element.classList.add("visually-hidden");
					var element2 = document.getElementById("correcto");
					element2.classList.remove("visually-hidden");
				}, 1500);
		} catch (error) {
			var element = document.getElementById("error");
			element.classList.remove("visually-hidden");
			var element2 = document.getElementById("correcto");
			element2.classList.add("visually-hidden");
		}
	}
	</script>
  
  

  <!--   Core JS Files   -->
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/soft-ui-dashboard.min.js?v=1.0.3"></script>
</body>

</html>