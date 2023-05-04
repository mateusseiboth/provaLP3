<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<jsp:include page="../component/navbar.jsp" />

<div class="container bg-dark text-white"
	style="border-radius: 10px; border-bottom: 50px;">

	<div class="row">
		<div class="bg-success text-center"
			style="border-radius: 20px 20px 0px 0px; padding: 12px 12px">
			<h2 style="margin: 0;">Adicionar Reptil</h2>
		</div>
	</div>

	<form action="${pageContext.request.contextPath}/public?acao=insert"
		method="post">

		<div class="row">

			<div class="col-md-4">
				<label class=" col-form-label">Temperatura</label>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-thermometer"></i></span>
					<input class="form-control" type="number" step="0.1"
						name="temperatura">
				</div>
			</div>
			<div class="col-md-4">
				<label class="col-form-label">Tamanho</label>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-rulers"></i></span> <input
						class="form-control" type="number" step="0.1" name="tamanho">
				</div>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" name="escama" value="true"
					id="flexCheckDefault"> <label class="form-check-label"
					for="flexCheckDefault"> Tem escamas? </label>
			</div>
		</div>

		<div class="row mb-4">
			<div class="input-group mb-2 col-sm-2">
				<input class="btn btn-primary" type="submit" value="Enviar" />
			</div>
		</div>


	</form>

</div>
<jsp:include page="../component/footer.jsp" />