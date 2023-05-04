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

	<div style="margin-bottom: 50px">
		<nav class="navbar navbar-expand-lg navbar-dark bg-success">
			<div class="container-fluid">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/public?acao=home">
					<div class="row text-center">
						<i class="bi bi-house-fill"></i>
						<p>ProvaLP3</p>
					</div>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							href="${pageContext.request.contextPath}/public?acao=novo">
								<div class="row text-center">
									<i class="bi bi-person-add"></i>
									<p>Novo reptil</p>
								</div>
						</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="${pageContext.request.contextPath}/public?acao=list">

								<div class="row text-center">
									<i class="bi bi-people"></i>
									<p>Listar todos</p>
								</div>
						</a></li>
					</ul>
				</div>

			</div>
		</nav>
	</div>