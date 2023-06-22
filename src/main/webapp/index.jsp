<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
.imagem {
	background-image: url('resources/img/background.jpg');
	height: 80vh;
	background-size: cover;
	background-position: center;
	border-radius: 20px 20px 0px 0px";
}
</style>

<jsp:include page="/component/navbar.jsp" />

<main role="main">
	<div class="bg-dark imagem align-items-center col-md-10 text-white mx-auto"
		style="border-radius: 40px">

		<div
			class="jumbotron  bg-image p-5 text-center shadow-1-strong rounded mb-5 text-white">
		</div>

		<div class="container" style="margin-top: 350px">
			<div class="row">
				
				<div class="col-md-4">
					<h2>
						Bem-Vindo a prova de LP3
					</h2>

				</div>
			</div>
		</div>

	</div>

</main>
<jsp:include page="/component/footer.jsp" />
<jsp:include page="component/modal.jsp" />
</body>
<script>
	$(document).ready(function() {
		$('#myModal').modal('hide');
	});
</script>
</html>

	
	
