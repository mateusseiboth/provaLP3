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

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

<jsp:include page="../component/footer.jsp"/>
