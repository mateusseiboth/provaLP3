<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<jsp:include page="../component/navbar.jsp" />

	<div class="container-fluid bg-dark col-md-10 text-white" style="border-radius: 20px;">
	
		<div class="row">
			<div class="col bg-success text-center" style="border-radius: 20px 20px 0px 0px; padding: 12px 12px">
				<h2>
					Listagem de reptils
				</h2>
			</div>
			<hr>
		</div>
		<div class="row text-black">
			<c:forEach items="${list}" var="lista">
				<div class="col-xl-4 mb-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex justify-content-between align-items-center">
								<div class="d-flex align-items-center">
									<div class="ms-3">
										<p class="fw-bold mb-1">
											Temperatura:
											${lista.temperatura}
										</p>
										<p class="text-muted mb-0">
											Tamanho
											${lista.tamanho}
										</p>
										<p class="text-muted mb-0">
											Tem escama?
											${lista.escama}
										</p>
										
									<a name="btnEditar" id="btnEditar" data-bs-toggle='modal'
								data-bs-target='#myModal' data-id='${lista.id}'
								data-temperatura='${lista.temperatura}' data-tamanho='${lista.tamanho}' data-escama='${lista.escama}'
								class='btn btn-outline btn-editar btn-link m-0 bg-primary text-reset text-decoration-none'
								role="button" data-ripple-color="primary"> <i
								class="bi bi-pencil"></i>
							</a>	

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<jsp:include page="../component/modal.jsp" />
	
<script>
	$(document).ready(function() {
		$('#myModal').modal('hide');
	});
</script>

<jsp:include page="../component/footer.jsp"/>


<script>
  const btnEditar = document.querySelectorAll('.btn-editar');
  const inputId = document.querySelector('input[name=id]');
  const inputTemperatura = document.querySelector('input[name=temperatura]');
  const inputTamanho = document.querySelector('input[name=tamanho]');

  btnEditar.forEach(btn => {
    btn.addEventListener('click', () => {
      inputId.value = btn.dataset.id != undefined ? btn.dataset.id : "" ;
      inputTemperatura.value = btn.dataset.temperatura != undefined ? btn.dataset.temperatura : "";
      inputTamanho.value = btn.dataset.tamanho != undefined ? btn.dataset.tamanho : "";
    });
  });
</script>
