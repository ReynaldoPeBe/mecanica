<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>${titulo}</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="-">
<meta name="author" content="Jes�s Reynbaldo P�rez Benavides">
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Mdb -->
<link rel="stylesheet" href="/mdb-4.6.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/mdb-4.6.0/css/mdb.min.css">
<link rel="stylesheet" href="/mdb-4.6.0/css/style.css">
<link rel="stylesheet" href="css/main.css" />
</head>
<body >
	<div class="contairner">
		<div id="particles">
			<div id="webcoderskull">
				<h1 class="text-white">Carrera de ${titulo}</h1>
				<h2 class="text-white">Curso Impresi�n 3D</h2>
				<p class="text-white">Curso te�rico practico en donde aprender�s sobre las
					tecnolog�as de manufactura aditiva, configuraciones de impresi�n,
					adem�s de sus aplicaciones.</p>
				<button class="btn btn-warning" onclick="sd();">Quiero inscribirme</button>
			</div>
		</div>
	</div>
	<div id="formulariomecanica"></div>
	<!-- Librerias js -->
	<!-- jquery -->
	<script src="/js/jquery_3.2.1/jquery-3.2.1.min.js"></script>
	<script src="/js/jquery_3.2.1/jquery-ui.min.js"></script>
	<script src="/js/jquery_3.2.1/tether.min.js"></script>
	<!-- MDB -->
	<script src="/mdb-4.6.0/js/popper.min.js"></script>
	<script src="/mdb-4.6.0/js/bootstrap.min.js"></script>
	<script src="/mdb-4.6.0/js/mdb.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/mecanica.js"></script>
</body>
</html>