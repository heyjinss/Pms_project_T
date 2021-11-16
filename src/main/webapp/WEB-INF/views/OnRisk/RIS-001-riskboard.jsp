<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>OnBiz</title>
<!-- Custom fonts for this template-->
<link href="${path}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<script src="${path}/settings/jquery.min.js"></script>
<script src="${path}/settings/jquery-ui.js"></script>
<script src="${path}/settings/bootstrap.min.js"></script>
<script src="${path}/settings/popper.min.js"></script>
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">
<link rel="stylesheet" href="${path}/settings/bootstrap.min3.css">
<style type="text/css">
.breadcrumb {
	margin: 1%;
}

.nav nav-tabs {
	margin: 1%;
}

#pagePath {
	padding: 1%;
	background: transparent;
}

.container {
	margin-left: 10px;
	width: 1500px;
	width: 100%;
	margin-left: 10px;
	font-size: 11px;
}

.container-fluid {
	margin-left: 5px;
	margin-right: 5px;
}

a {
	text-color: white;
}

.card {
	width: 100%;
}

.pageSize {
	width: 50%;
}

.form-control {
	padding: 0.1rem 0.1rem;
}

.table>tbody td {
	padding: 0.5rem;
	text-align: center;
	font-size: 11px;
}

.table>thead th {
	padding: 0.5rem;
	text-align: center;
	font-size: 11px;
}

.count {
	text-align: left;
	padding-left: 10px;
	font-size: 12px;
}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function(){
//1. 등록화면 이동 
		$("#regBtn").click(function(){
			$(location).attr("href","${path}/Onrisk.do?method=insertForm");	
			});		
//2. 페이지 선택 		
		$("[name=pageSize]").val("${OnRiskSch.pageSize}");
		$("[name=pageSize]").change(function(){
			$("[name=curPage]").val(1);
			$("form").submit();
		});
//3. 상태 변경 		
		$(".risk_state").change(function() {
			var risk_state = $(this).val();
			console.log(risk_state);
			$("[name=risk_state]").val(risk_state);	
			});	
	});
//4. 상세보기 
	function go(risk_no){		
		console.log(risk_no);
		console.log("${login.emp_korname}");
		console.log(${login.emp_no});
		console.log("${login.auth_name}");
		console.log(risk_no);
		$(location).attr("href",
				"${path}/Onrisk.do?method=detail&risk_no="+risk_no+"&emp_korname=${login.emp_korname}&emp_no=${login.emp_no}&auth_name=${login.auth_name}");	
	}	
//5. 하단 페이징 
	function goPage(risk_no){
		$("[name=curPage]").val(risk_no);
		$("form").submit();
	}
</script>
<body id="page-top">
	<div id="wrapper">
		<jsp:include page="/common/sidebar.jsp" />
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<jsp:include page="/common/header.jsp" />
			<div id="content">
				<div class="container">
					<div class="container-fluid">
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h5 class="m-0 font-weight-bold text-primary">리스크 게시판</h5>
							</div>
							<div class="card-body">
								<div class="table">
									<div id="dataTable_wrapper"
										class="dataTables_wrapper dt-bootstrap4">
										<div class="row">
											<div class="col-sm-12 col-md-6">
												<div class="dataTables_length" id="dataTable_length">
													&nbsp;
													<h2 align='center'></h2>

													<form id="frm01" class="form" method="post">
														<input type="hidden" name="curPage" value="1" /> <label>
															<input type="text" class="form-control form-control-sm"
															name="risk_name" value="${OnRiskSch.risk_name}"
															placeholder="검색">
														</label> &nbsp; <label> <select
															class=" custom-select custom-select-sm form-control form-control-sm risk_state"
															name="risk_state"><option value="">전체</option>
																<option>홀드</option>
																<option>오픈</option>
																<option>완료</option>
																<option>조치중</option></select>
														</label> &nbsp; <label> <label><button
																	class="btn btn-primary" type="submit">Search</button></label>
														</label> <label>
															<button class="btn btn-primary" id="regBtn" type="button">등록</button>
														</label>
												</div>
											</div>
											<div class="col-sm-12 col-md-6" align="right">
												<div id="dataTable_filter" class="dataTables_filter">
												</div>
											</div>
										</div>
										<!-- 데이터베이스 표 시작 -->
										<div class="row" style="text-align: center;">
											<span class="count">총 : ${OnRiskSch.count}건</span>
											<div class="input-group-append">
												<label> <select name="pageSize"
													class="custom-select custom-select-sm form-control form-control-sm pageSize">
														<option value="3">페이지크기</option>
														<option>5</option>
														<option>10</option>
														<option>20</option>
														<option>30</option>
												</select>
												</label>
											</div>
											</form>
											<!-- 리스트 목록 -->
											<div class="col-sm-12">
												<table class="table table-bordered dataTable"
													style="width: 100%;">
													<thead>
														<tr>
															<th>번호</th>
															<th>분류</th>
															<th>상태</th>
															<th>프로젝트명</th>
															<th>작업번호</th>
															<th>제목</th>
															<th>작성자</th>
															<th>작성일</th>
															<th>조회수</th>
														</tr>
													</thead>
													<tbody>
													<col width="8%">
													<col width="8%">
													<col width="8%">
													<col width="15%">
													<col width="8%">
													<col width="15%">
													<col width="8%">
													<col width="10%">
													<col width="8%">
													<tbody>
														<c:forEach var="bd" items="${list}">
															<tr class="text-center"
																ondblclick="javascript:go(${bd.risk_no})">
																<td>${bd.risk_no}</td>
																<td>${bd.risk_kind}</td>
																<td>${bd.risk_state}</td>
																<td>${bd.pro_name}</td>
																<td>${bd.task_no}</td>
																<td class="text-left">${bd.risk_name}</td>
																<td>${bd.emp_korname}</td>
																<td><fmt:formatDate value="${bd.risk_regdte}" /></td>
																<td>${bd.risk_viewcnt}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
											<!-- 리스트 목록 끝-->
										</div>
										<!-- 데이터베이스 표 끝 -->
									</div>
								</div>
							</div>
						</div>
						<!-- 페이징 처리 -->
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link"
								href="javascript:goPage(${OnRiskSch.startBlock-1})">Previous</a></li>
							<c:forEach var="cnt" begin="${OnRiskSch.startBlock}"
								end="${OnRiskSch.endBlock}">
								<li class="page-item ${OnRiskSch.curPage==cnt?'active':''}">
									<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>
								</li>
							</c:forEach>
							<li class="page-item"><a class="page-link"
								href="javascript:goPage(${OnRiskSch.endBlock+1})">Next</a></li>
						</ul>
						<!-- 페이징 처리 끝 -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- Topbar -->
				<!-- End of Main Content -->
				<!-- End of Footer -->
			</div>
		</div>
		<!-- End of Main Content -->
	</div>
	<!-- Footer -->
	<jsp:include page="/common/footer.jsp" />
	<!-- End of Footer -->
</body>
</html>