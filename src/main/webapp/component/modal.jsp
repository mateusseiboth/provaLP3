<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="modal fade" id="myModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content corzinha">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Editar Cliente</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Fechar"></button>
			</div>
			<div class="modal-body">

				<!-- Formulário de inserção/edição de clientes -->
				<form method="POST"
					action="${pageContext.request.contextPath}/public?acao=editar"
					id="form-user" name="form-user">
					<input type="hidden" name="action" value="save_cliente"> <input
						type="hidden" name="id">

					<div class="mb-3">
						<label for="nome" class="form-label">Temperatura</label>
						<div class="input-group col-mb-3">
							 <input type="text" name="temperatura" id="temperatura" class="form-control">
							
						</div>
					</div>

					<div class="mb-3">
						<label for="cpf" class="form-label">Tamanho</label>
						<div class="input-group col-mb-3">
						 <input type="text" name="tamanho" id="tamanho" class="form-control">
							
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Fechar</button>
						<button type="submit" class="btn btn-primary">Salvar
							mudanças</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>
