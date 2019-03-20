<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>${titulo}</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="-">
<meta name="author" content="Jesús Reynaldo Pérez Benavides">
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Mdb -->
<link rel="stylesheet" href="mdb-4.6.0/css/bootstrap.min.css">
<link rel="stylesheet" href="mdb-4.6.0/css/mdb.min.css">
<link rel="stylesheet" href="mdb-4.6.0/css/style.css">
<link rel="stylesheet" href="css/main.css" />
</head>
<body>
	<div class="contairner">
		<div id="particles">
			<div id="webcoderskull">
				<h4 class="text-white mb-3">Universidad Mayor de San Andrés</h4>
				<h4 class="text-white mb-3">Facultad de Ingenieria</h4>
				<c:if test="${not empty resultado}">
					<div class="alert alert-warning alert-dismissible fade show"
						role="alert">
						<strong>${resultado}</strong>
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</c:if>
				<h3 class="text-white">Carrera de ${titulo}</h3>
				<h4 class="text-white">Curso Impresión 3D</h4>
				<p class="text-white">Curso teórico practico en donde aprenderás
					sobre las tecnologías de manufactura aditiva, configuraciones de
					impresión, además de sus aplicaciones.</p>
				<button class="btn btn-warning" onclick="sd();">Quiero
					inscribirme</button>
			</div>
		</div>
	</div>
	<div id="formulariomecanica"></div>
	<!-- Librerias js -->
	<!-- jquery -->
	<script src="js/jquery_3.2.1/jquery-3.2.1.min.js"></script>
	<script src="js/jquery_3.2.1/jquery-ui.min.js"></script>
	<script src="js/jquery_3.2.1/tether.min.js"></script>
	<!-- MDB -->
	<script src="mdb-4.6.0/js/popper.min.js"></script>
	<script src="mdb-4.6.0/js/bootstrap.min.js"></script>
	<script src="mdb-4.6.0/js/mdb.min.js"></script>
	<script src="js/jquery-validation-1.16.0/dist/jquery.validate.min.js"></script>
	<script
		src="js/jquery-validation-1.16.0/dist/additional-methods.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/mecanica.js"></script>
</body>
</html>