<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Author: Jesús Reynaldo Pérez Benavides -->

<c:if test="${haycupowasabi==1}">
	<div class="container mt-5 mb-5">
		<div class="card">
			<h5
				class="card-header default-color-dark white-text text-center py-4">
				<strong>${f}</strong>
			</h5>
			<div class="card-body px-lg-5">
				<form:form action="/inscripcion" method="post"
					modelAttribute="persona" class="text-center"
					style="color: #757575;">

					<p>
						Para poder inscribirte debes llenar todo el formulario, recuerda,
						<b>la información</b> que nos proporciones nos servirá para la <b>entrega
							de certificados</b>, hay cupo limitado.
					</p>
					<br>
					<div class="md-form mt-5">
						<form:input path="nombre" type="text" id="nombre"
							class="form-control" />
						<label for="nombre">Nombre</label>
					</div>
					<div class="md-form">
						<form:input path="apellidoPaterno" type="text"
							id="apellidoPaterno" class="form-control" />
						<label for="apellidoPaterno">Apellido Paterno</label>
					</div>
					<div class="md-form">
						<form:input path="apellidoMaterno" type="text"
							id="apellidoMaterno" class="form-control" />
						<label for="apellidoMaterno">Apellido Materno</label>
					</div>
					<div class="md-form">
						<form:input path="ci" type="text" id="ci" class="form-control" />
						<label for="ci">C.I.</label>
					</div>
					<div class="md-form">
						<form:input path="celular" type="text" id="celular"
							class="form-control" />
						<label for="celular">Nro. Celular</label>
					</div>
					<div class="md-form">
						<form:input path="email" type="email" id="email"
							class="form-control" />
						<label for="email">E-mail</label>
					</div>
					<button
						class="btn btn-outline-success btn-rounded btn-block z-depth-0 my-4 waves-effect"
						type="submit">Enviar mis datos</button>
				</form:form>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${haycupowasabi==0}">
	<div class="alert alert-danger alert-dismissible fade show my-5"
		role="alert">
		<strong class="text-center">Lo sentimos ya no hay cupos para el curso.</strong>
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</c:if>
