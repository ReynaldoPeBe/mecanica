<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="-">
<meta name="author" content="Jesús Reynaldo Pérez Benavides">
<title>Listado de inscritos</title>
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Mdb -->
<link rel="stylesheet" href="mdb-4.6.0/css/bootstrap.min.css">
<link rel="stylesheet" href="mdb-4.6.0/css/mdb.min.css">
<link rel="stylesheet" href="mdb-4.6.0/css/style.css">
</head>
<body>
	<div class="container">
		listado de inscritos
		<div class="row">
			<table class="table table-striped col-12 table-responsive-md">
				<thead class="green text-white">
					<tr>
						<th scope="col">#</th>
						<th scope="col">Nombre</th>
						<th scope="col">CI</th>
						<th scope="col">Celular</th>
						<th scope="col">Email</th>
						<th scope="col">Editar</th>
						<th scope="col">Eliminar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listpesonas}" var="p" varStatus="i">
						<tr>
							<th scope="row">${i.index+1}</th>
							<td>${p.apellidoPaterno} ${p.apellidoMaterno} ${p.nombre}</td>
							<td>${p.ci}</td>
							<td>${p.celular}</td>
							<td>${p.email}</td>
							<td>Modificar</td>
							<td>Eliminar</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
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

</body>
</html>