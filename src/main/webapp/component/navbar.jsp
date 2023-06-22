<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
<meta charset="UTF-8">
<title>Prova de LP3</title>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>

</head>

<style>
.alert {
	position: relative;
	padding: 0.5rem 0.5rem;
	margin: 0.5rem;
	/* border: 1px solid transparent; */
	border-radius: 0.25rem;
}
</style>

<body
	style="background-image: url('${pageContext.request.contextPath}/resources/img/dark-theme.jpg');
margin-bottom:90px;
">
<jsp:include page="./modal.jsp" />
	<div class="row" style="margin-bottom: 50px">
		
				<a class="btn btn-primary col-md-2"
					href="${pageContext.request.contextPath}/public?acao=home">
						Home
				</a>
				
						
						<a name="btnEditar" id="btnEditar" data-bs-toggle='modal'
								data-bs-target='#myModal'
								class='btn btn-outline col-md-2 btn-editar btn-link m-0 bg-primary text-reset text-decoration-none'
								role="button" data-ripple-color="primary"> Novo
							</a>	
						
						
						<a class="btn btn-primary col-md-2"
							href="${pageContext.request.contextPath}/public?acao=list">		
							Listar todos
						</a>
				

	</div>
	
	<script>
	$(document).ready(function() {
		$('#myModal').modal('hide');
	});
</script>
	