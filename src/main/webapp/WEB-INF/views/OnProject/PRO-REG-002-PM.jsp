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
<script src="${path}/settings/popper.min.js"></script>
<script src="${path}/settings/bootstrap.min.js"></script>
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/settings/bootstrap.min3.css">
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">


<style>
.card-body {
	height: 500px;
	marign-left: 12px;
}

#dataTable {
	width: 100%;
	font-align: center;
}

#button {
	margin-top: 1px;
	align: center;
}

.table td {
	height: 15px;
}

.col-lg-4 {
	width: 32%;
	margin-left: 5px;
}

.card {
	marign-left: 12px;
}

.button1 {
	height: 80px;
	width: 100%;
}

#navbar {
	height: 20px;
	margin-left: 8px;
}

.tr {
	height: 15px;
}

.table td {
	padding: 0.5rem;
	text-align: center;
}

.table th {
	padding: 0.5rem;
	text-align: center;
}

p {
	margin-bottom: 0px;
}

#button {
	margin-left: 47%;
}
</style>
</head>
<script type="text/javascript">

//1. ???????????? ???????????? 
			$(document).ready(function(){
				$(".dept_name").click(function() {
					var sch4 = $(this).text();
					$("#dname").text(sch4);
					console.log(sch4);
					$.ajax({
						type:"get",
						url:"${path}/empnameListAjax.do?dept_name="+sch4,
						//async:false,
						data:sch4,
						dataType:"json",
						success:function(data){
							var list = data.empnamelist;
							var show ="";
							$(list).each(function(idx,emp){
								show += "<tr><td><p class= 'emp_korname' value ='"+emp.emp_korname+"'>"
								+emp.emp_korname+"</td><td>"+emp.auth_name+"</td><td>"+emp.ptn_name+"</td><td class ='emp_no' value = "+emp.emp_no+">"+emp.emp_no+"</td><tr></div>";
							});
							$(".selectBox").html(show);
						},
						error:function(err){
							console.log(err);
						}
					});
				});
				$(document).on("click",".emp_korname",function() {
					var sch4 = $("#dname").text();
					var sch5 = $(this).text();
					console.log(sch4);
					console.log(sch5);
					$.ajax({
					 type:"get",
					 url:"${path}/emptableListAjax.do?emp_korname="+sch5+"&dept_name="+sch4,
					 data:sch5,
					 dataType:"json",
					 success:function(data){
						 var list2 = data.emptablelist;
						 var show2 = "";
						 var show1 = "";
						 $(list2).each(function(idx,emplist){
							 show2 += "<tr class ='emp_no2'><td class ='emp_no' value="+emplist.emp_no+">"
							 +emplist.emp_no+"</td><td id = "+emplist.emp_korname+">"+emplist.emp_korname+"</td><td>"+emplist.dept_name+"</td></tr>";
							 show1 += "<input type='hidden' value ='"+emplist.emp_no+"' name ='emp_no'>"
						 });
//3. ???????????? ???????????? ?????? 
						 $(".complete").append(show2);
						 $(".show1").append(show1);
						 
					 },
					 error:function(err){
						 console.log(err);
					 }
					});
				});
				
//4.????????? ?????? ???????????? ??????
				$(document).on("click",".emp_no2",function() {
					$(this).remove();
					var emp_no = $(this).val();
					console.log(emp_no);
				});
				
				
//5.?????????????????? 
				$(document).on("click",".emp_no",function() {
					console.log(emp_no);
					var emp_no = $(this).val;
					$.ajax({
						type:"get",
						url:"${path}/empdetail.do?emp_no="+emp_no,
						//async:false,
						data:emp_no,
						dataType:"json",
						success:function(data){
							var list = data.empdetail;
							var show ="";
							$(list).each(function(idx,emp){
								show += 
									"<tr><td>"+emp.emp_korname+"</td><tr>"
									"<tr><td>"+emp.emp_no+"</td><tr>"
									+"<tr><td>"+emp.emp_engname+"</td><tr>"
									+"<tr><td>"+emp.auth_name+"</td><tr>"
									+"<tr><td>"+emp.dept_name+"</td><tr>"
									+"<tr><td>"+emp.emp_hiredte+"</td><tr>"
									+"<tr><td>"+emp.emp_profile+"</td><tr>"
									+"<tr><td>"+emp.emp_email+"</td><tr>"
									;
							});
							$(".selectBox3").html(show);
						},
						error:function(err){
							console.log(err);
						}
					});
				});
		});	
</script>
<body>
	<!-- Page Wrapper -->
	<div id="wrapper">

		<jsp:include page="/common/sidebar.jsp" />


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
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

						<!-- ??????????????? ????????? : ???????????? ?????? -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${login.emp_korname}</span>
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
				<!-- ????????? ??? -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<nav class="navbar navbar-expand-sm bg-dark navbar-dark"
						id="navbar">
						<ul class="navbar-nav">
							<li class="nav-item "><a class="nav-link" href="#">????????????
									??????</a></li>
							<li class="nav-item active"><a class="nav-link" href="#">??????
									??????</a></li>
							<li class="nav-item "><a class="nav-link" href="#">??????
									????????????</a></li>
						</ul>
					</nav>
					<input type="hidden" id="dname" value="" />

					<!-- Content Row -->
					<div class="row">

						<!-- First Column -->
						<div class="col-lg-4">

							<!-- Custom Text Color Utilities -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">????????????</h6>
								</div>
								<div class="card-body">

									<c:forEach var="deptlist" items="${dept}">
										<div class="p-3 bg-gray-200">
											<p class="dept_name" value="${deptlist.dept_name}">${deptlist.dept_name}</p>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>

						<!-- Second Column -->
						<div class="col-lg-4">
							<!-- Background Gradient Utilities -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">????????????</h6>
								</div>
								<div class="card-body">
									<div>
										<Table class="table table-bordered dataTable" id="dataTable"
											role="grid">
											<thead>
											<col width="40%">
											<col width="20%">
											<col width="20%">
											<col width="20%">
											<tr>
												<th>??????</th>
												<th>??????</th>
												<th>??????</th>
												<th>??????</th>
											</tr>
											</thead>
											<!-- ajax??? ?????? ?????? ?????? ?????? ??? ?????? -->
											<tbody class="selectBox">
											</tbody>
										</Table>
									</div>
								</div>
							</div>
						</div>

						<!-- Third Column -->
						<div class="col-lg-4">
							<!-- Grayscale Utilities -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">????????????</h6>
								</div>
								<div class="card-body">
									<table class="table table-bordered dataTable" id="dataTable"
										role="grid">
										<thead>
										<col width="25%">
										<col width="25%">
										<col width="45%">
										<tr>
											<th>??????</th>
											<th>??????</th>
											<th>?????????</th>
										</tr>
										</thead>
										<tbody class="complete">
										</tbody>
									</table>
									<form class="show1" id="frm01" method="post" action="${path}/promemInsert.do">
										<input type="hidden" value="${pro_no}" name="pro_no" /> <input type="hidden" value="" name="member" />
								</div>
							</div>
						</div>
						<div class="button1">
							<input type="submit" value="??????" class="btn btn-outline-primary"
								id="button">
							</form>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<jsp:include page="/common/footer.jsp" />
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <iclass="fas fa-angle-up"></i>
	</a>

	<!-- ?????? ?????? Modal-->
	<div class="modal fade" id="exampleModalCenter1" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog2 modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">?????? ??????</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- First Column -->
					<div class="col-lg-4">
						<!-- Custom Text Color Utilities -->
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>????????????</th>
											<th>??????????????????</th>
											<th>??????</th>
											<th>?????????</th>
											<th>?????????</th>
											<th>???????????????</th>
											<th>?????????</th>
										</tr>
									</thead>
									<!-- ajax??? ?????? ?????? ????????? ????????? ?????? -->
									<tbody class="selectBox3">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="backReg" class="btn btn-secondary"
						data-dismiss="modal" aria-label="Close">??????</button>
				</div>
			</div>

		</div>
	</div>
</body>
</html>