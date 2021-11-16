<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
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
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,
	400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<script src="${path}/settings/jquery.min.js"></script>
<script src="${path}/settings/jquery-ui.js"></script>
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/settings/bootstrap.min3.css">
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">
<script src="${path}/settings/popper.min.js"></script>
<script src="${path}/settings/bootstrap.min.js"></script>


<style>
.card-body {
	height: 600px;
}

#dataTable {
	width: 100%;
	font-align: center;
}

#button {
	margin-top: 600px;
}

.textaread {
	width: 80%;
}

table {
	width: 100%;
}

td {
	text-align: left;
}

a:hover {
	background: silver;
}

textarea.form-control {
	width: 100%;
}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function() {
//1. 데이터 CRUD 권한 설정
						var login_emp_no = "${login.emp_no}";
						console.log(login_emp_no);
						var login_auth_name = "${login.auth_name}";
						var login_emp_korname = "${login.emp_korname}";

						var korname = $("#korname").val();
						console.log("로그인한 사람의 emp_no : " + login_emp_no);
						console.log("로그인한 사람의 auth_name : " + login_auth_name);

						if (login_emp_korname != korname) {
							$("#uptBtn").attr("style", "visibility:hidden");
							$("#delBtn").attr("style", "visibility:hidden");
							$("#riskname").attr("disabled", true);
							$("#risk_occdte").attr("disabled", true);
							$("#state").attr("disabled", true);
							$("#kind").attr("disabled", true);
							$("#content").attr("disabled", true);
						}
						var name = $(".name").val();
						console.log(name);
						console.log(login_emp_no);
						if (login_emp_no != name) {
							$("#delete").attr("style", "visibility:hidden");
							$("#update").attr("style", "visibility:hidden");
						}
						 
//2.댓글 등록 
						$("#regCommand").click(function() {
									var command = $("#command").val();
									var risk_no = $("[name=risk_no]").val();
									alert(command);
									alert(risk_no);
									alert(login_emp_no);
									alert(login_auth_name);
									alert(login_emp_korname);
									$("form").attr(	"action","${path}/Onrisk.do?method=insert2&risk_command="+ command + "&risk_no="+ risk_no);
									$("form").submit();
								});
						 
//3. 상세내역 삭제 
						$("#delBtn").click(function() {
							if (confirm("삭제하시겠습니까?")) {
								var risk_no = $("[name=risk_no]").val();
									$("form").attr("action","${path}/Onrisk.do?method=delete&risk_no="+ risk_no);
												$("form").submit();
												$("#list").submit();
											}
										});
										
//4. 조회화면 이동  
						$("#goMain").click(function() {
							$(location).attr("href","${path}/Onrisk.do?method=list");
								});

//3. 상태값 할당 
						$(".risk_state").click(function() {
							var risk_state = $(this).val();
							console.log(risk_state);
							$("[name=risk_state]").val(risk_state);
						});

//4. 다운로드 처리 
						$("#fname").click(function() {
							location.href = "${path}/download.do?bd_fname="+ $(this).val();
						});

//5. 페이징 
						$("[name=pageSize]").val("${boardSch.pageSize}");
						$("[name=pageSize]").change(function() {
							$("[name=curPage]").val(1);
							$("form").submit();
						});

//6.모달창 취소버튼 
						$("#backReg").click(function() {
							$("#exampleModalCenter1").display = "none";
						});

					});

//8. 페이징 (?)
	function goPage(risk_no) {
		$("[name=curPage]").val(risk_no);
		$("form").submit();

	}
//9. 상세내역 수정 
	function uptA() {
		$("#uptBtn")
				.click(
						function() {
							if (confirm("수정하시겠습니까?")) {
								$("form").attr("action","${path}/Onrisk.do?method=update");
								$("form").submit();
							}
						});
	}
//10. 댓글 삭제 
function delB() {
		$("#dela").click(function() {
							var risk_commandnum = $(".num").val();
							var risk_no = $("[name=risk_no]").val();
							alert(risk_commandnum);
							alert(risk_no);
							$("#commanddelete").attr("action","${path}/Onrisk.do?method=delete2&risk_commandnum="+ risk_commandnum+ "&risk_no=" + risk_no);
							$("#commanddelete").submit();
						});
	}
</script>
<body>
	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="/common/sidebar.jsp" />
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">
						<div class="topbar-divider d-none d-sm-block"></div>
						<!-- 네비게이션 아이템 : 유저정보 확인 -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${login.auth_name}${login.emp_korname}</span>
								<img class="img-profile rounded-circle"
								src="${path}/resources/img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- !!섹션 : 구현 내용 입력부분!! -->
				<div class="container-fluid">

					<ol class="breadcrumb" id="pagePath">
						<li class="breadcrumb-item">리스크 관리</li>
						<li class="breadcrumb-item active"><a
							href="${path}/onapproval.do?method=applist">리스크상세</a></li>
					</ol>
					<form id="list" action="${path}/Onrisk.do?method=list"
						method="post">
						<input type="hidden" name="curPage" value="1">
					</form>
					<form id="list" action="${path}/Onrisk.do?method=detail"
						method="post">
						<input type="hidden" name="curPage" value="1">
					</form>
					<form id="commanddelete" action="" method="post"></form>
					<form id="Onrisk" enctype="multipart/form-data"
						action="${path}/Onrisk.do?method=insert" method="post">
						<input type="hidden" name="risk_no" value="${detail.risk_no}"
							readonly />
						<!-- DataTales Example -->

						<div class="card my-4">
							<h5 class="card-header">결재 조치</h5>
							<div class="card-body">
								<div class="form-group row">
									<label class="col-sm-1 col-form-label text-center">제 목</label>
									<div class="col-sm-5">
										<input id="riskname" name="risk_name"
											value="${detail.risk_name}" class="form-control" />
									</div>

									<label class="col-sm-1 col-form-label text-center">유형</label>
									<div class="col-sm-5">

										<input type="text" id="kind" class="form-control"
											value="${detail.risk_kind}" name="risk_kind" />
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-1 col-form-label text-center">프로젝트</label>
									<div class="col-sm-5">
										<input type="text" value="${detail.pro_name}"
											class="form-control" name="risk_kind" readonly /> <input
											type="hidden" value="" name="pro_no" />
									</div>
									<label class="col-sm-1 col-form-label text-center">작업번호</label>
									<div class="col-sm-5">
										<input name="task_no" class="form-control"
											value="${detail.task_no}" readonly placeholder="제목입력하세요" />
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-1 col-form-label text-center">멤버</label>
									<div class="col-sm-5">
										<input name="mem_no" class="form-control"
											value="${detail.mem_no}" placeholder="제목입력하세요" readonly />
									</div>
									<label class="col-sm-1 col-form-label text-center">상태</label>
									<div class="col-sm-5">
										<select id="state"
											class=" custom-select custom-select-sm form-control form-control-sm risk_state">
											<option>상태</option>
											<option value="오픈">오픈</option>
											<option value="홀드">홀드</option>
											<option value="조치중">조치중</option>
											<option value="완료">완료</option>
										</select> <input type="hidden" value="" name="risk_state" />
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-1 col-form-label text-center">발생일</label>
									<div class="col-sm-5">
										<input name="risk_occdte" id="risk_occdte"
											class="form-control datepicker" type="text"
											value="<fmt:formatDate pattern="yyyy/MM/dd " value="${detail.risk_occdte}"/>"
											placeholder="발생일을 입력하세요" />
									</div>
									<label class="col-sm-1 col-form-label text-center">작 성
										자</label>
									<div class="col-sm-5">
										<input class="form-control" id="korname"
											value="${detail.emp_korname}" readonly />
									</div>
								</div>
								<div class="form-group row">

									<label class="col-sm-1 col-form-label text-center">첨부파일</label>
									<div class="col-sm-5">
										<input class="form-control" id="fname"
											value="${detail.riskfile_name}" />
									</div>

									<label class="col-sm-1 col-form-label text-center">상위글번호</label>
									<div class="col-sm-5">
										<input name="risk_no2" class="form-control"
											placeholder="상위글번호" value="${detail.risk_no2}" readonly />
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-1 col-form-label text-center">내 용</label>
									<div class="col-sm-12">
										<textarea id="content" name="risk_content" rows="6"
											class="form-control" placeholder="내용입력하세요">${detail.risk_content}</textarea>
									</div>
								</div>
							</div>
							<hr>
	<!-- 버튼 -->
							<div style="text-align: right; margin: 1%;">
								<button type="button" id="uptBtn" onclick="uptA()"
									class="btn btn-info">수정</button>
								<button type="button" id="delBtn" class="btn btn-info">삭제</button>
								<button type="button" id="goMain" class="btn btn-success">조회
									화면으로</button>
							</div>
							<hr>
	<!-- 조회화면 이동 FORM -->
							<form id="list" action="${path}/Onrisk.do?method=list" method="post">
								<input type="hidden" name="curPage" value="1">
							</form>
							<table>
								<thead></thead>
								<tbody class="tbody"></tbody>
							</table>
	<!-- 댓글창  -->
							<div>
								<label class="col-sm-1 col-form-label text-center"><span>
										댓글 </span></label>
							</div>
							<div class="col-sm-12">
								<form id="frm01" action="${path}/Onrisk.do?method=insert2" method="post">
									<input type="hidden" name="emp_korname"
										value="${login.emp_korname}" /> <input type="hidden"
										name="emp_no" value="${login.emp_no}" /> <input type="hidden"
										name="auth_name" value="${login.auth_name}" />
									<textarea class="form-control" id="command" name="command"></textarea>
							</div>
	<!-- 댓글등록창 -->
							<div style="text-align: right; margin: 1%;">
								<button type="button" id="regCommand" class="btn btn-info">댓글등록
								</button>
					</form>
	<!-- 댓글 등록 끝 -->
					<hr>
	<!-- 댓글 내역 -->
					<table>
						<c:forEach items="${command}" var="command">
							<tr>
								<td>조치일 | <fmt:formatDate pattern="yyyy/MM/dd"
										value="${command.risk_commanddate}" /> 조치자 |
									${command.emp_no} <c:set var="pass" value="${command.emp_no}" />
									<c:set var="emp_no" value="${sessionEmpNo}" /> <c:if
										test="${pass eq emp_no}">
										<a id="dela" onclick="delB()"; ><strong>삭제</strong></a>
									</c:if> <input type="hidden" class="num"
									value="${command.risk_commandnum}" />
								</td>
							<tr>
								<td><textarea class="form-control textaread " readonly>${command.risk_command}</textarea></td>
							</tr>
							<input class="name" type="hidden" value="${command.emp_no}">
						</c:forEach>
						</tbody>
					</table>
	<!-- 댓글 내역 끝 -->
				</div>
			</div>
		</div>
		</form>
	</div>
	<!--  섹션 끝  -->
	<!-- End of Main Content -->
	<jsp:include page="/common/footer.jsp" />
	</div>
</body>
</html>