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
	height: 600px;
}

#dataTable {
	width: 100%;
	font-align: center;
}

#button {
	margin-top: 600px;
}

.table>tbody td {
	padding: 0.5rem;
	text-align: center;
}

.table>tbody th {
	padding: 0.5rem;
}

.table th {
	padding: 0.5rem;
	text-align: center;
	width: 150px;
}

.tot {
	font-weight: bold;
	text-align: right;
	margin-bottom: 10px;
}

.btn-circle.btn-sm, .btn-group-sm>.btn-circle.btn {
	width: 3.8rem;
	font-size: 10px;
}

.id {
	float: right;
	width: 20px;
	font-size: 80%;
	margin-bottom: 10px;
}

#myBarChart {
	height: 50px;
}

.chartjs-size-monitor {
	height: 50px;
}
</style>
</head>
<script type="text/javascript">

	//1. ???????????? ???????????? 
	$(document).ready(function() {
		$("#uptbtn").click(function() {
			var pro_no = $(".pro_no2").val();
			location.href = "${path}/memupt.do?pro_no=" + pro_no;
		});

	//2. ???????????? 
		$("#prolist").click(function() {
			var pro_no = $(".pro_no2").val();
			location.href = "${path}/prolist.do?pro_no=" + pro_no;
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
				<jsp:include page="/common/header.jsp" />
				<!-- ????????? ??? -->
				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"></h1>
					<ol class="breadcrumb" id="pagePath">
						<li class="breadcrumb-item" id="prolist">?????? ???????????? ?????????</li>
						<li class="breadcrumb-item active"><a
							href="${path}/proDetail.do?pro_no=${prodetail.pro_no}">???????????? ??????</a></li>
					</ol>
					<div class="row"></div>
					<!-- Content Row -->
					<div class="row">
						<div class="col-xl-8 col-lg-7">
							<!-- Area Chart -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">????????????</h6>
								</div>
								<div class="card-body">
									<table class="table table-bordered" id="dataTable" width="30%"
										cellspacing="1">
										<tr>
											<th width='120'>??????</th>
											<td>${prodetail.pro_no}</td>
										</tr>
										<tr>
											<th>???????????????</th>
											<td>${prodetail.pro_name}</td>
										</tr>
										<tr>
											<th>??????????????????</th>
											<td>${prodetail.pro_goal}</td>
										</tr>
										<tr>
											<th>??????</th>
											<td>${prodetail.pro_content}</td>
										</tr>
										<tr>
											<th>??????</th>
											<td><fmt:formatDate pattern="yyyy/MM/dd "
													value="${prodetail.pro_startdte}" /> ~ <fmt:formatDate
													pattern="yyyy/MM/dd " value="${prodetail.pro_enddte}" /></td>
										</tr>
										<tr>
											<th>?????????</th>
											<td>${prodetail.ordercom_no}<a href="#" id="uptbtn2"
												class="badge bg-dark"> ??????</a></td>
										</tr>
										<tr>
											<th>??????</th>
											<td>${prodetail.pro_state}</td>
										</tr>
										<tr>
											<th>????????????</th>
											<td>${prodetail.pro_budget}</td>
										</tr>
									</table>
									<table class="table table-bordered">
										<tr>
											<td>???????????? ?????? ?????????</td>
										</tr>
									</table>
									<div class="">
										<canvas id="myBarChart" style="display: block; height: 150px";></canvas>
									</div>
								</div>
							</div>
						</div>
						<!-- ???????????? ?????? ?????? ??????  -->
						<div class="col-xl-4 col-lg-5">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">???????????? ?????? ??????</h6>
								</div>
								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-pie pt-4">
										<div class="tot">
											??? ${memtot}??? &nbsp <a href="#" id="uptbtn"
												class="badge bg-dark"> ?????????</a>
										</div>
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<c:forEach var="memdetail" items="${memdetail}">
												<tr>
													<td><img
														src="z99_upload/empprofile/${memdetail.emp_profile}"
														width='90px' height="90px" /></td>
													<td><p>
															<strong>${memdetail.emp_korname}</strong><br>
															${memdetail.dept_name}<br> ${memdetail.auth_name}<br>
															${memdetail.emp_email}
												</tr>
											</c:forEach>
										</table>
									</div>
									<input type="hidden" value="${prodetail.pro_no}"
										class="pro_no2" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
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
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">??</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="${path}/resources/vendor/chart.js/Chart.min.js"></script>
	<script src="${path}/resources/js/demo/chart-bar-demo.js"></script>

	<script type="text/javascript">
		//1. Vendor?????? myBarChart??? ?????? 
		var ctx = document.getElementById("myBarChart");
		//2. ????????? ?????? ?????? 
		var datas = [];
		//3. ????????? ?????? 
		var myBarChart = new Chart(
				ctx,
				{
					type : 'bar',
					data : {
						labels : [ "?????????", "?????????", "?????????", "??????" ],
						datasets : [ {
							label : "Revenue",
							backgroundColor : "#4e73df",
							hoverBackgroundColor : "#2e59d9",
							borderColor : "#4e73df",
							//4. ???????????? ??????        
							data : [ 3, 3, 3, 3 ],
						} ],
					},
					options : {
						maintainAspectRatio : false,
						layout : {
							padding : {
								left : 10,
								right : 25,
								top : 25,
								bottom : 0
							}
						},
						scales : {
							xAxes : [ {
								time : {
									unit : 'month'
								},
								gridLines : {
									display : false,
									drawBorder : false
								},
								ticks : {
									maxTicksLimit : 6
								},
								maxBarThickness : 25,
							} ],
							yAxes : [ {
								ticks : {
									min : 0,
									max : 30,
									maxTicksLimit : 5,
									padding : 10,
									// Include a dollar sign in the ticks
									callback : function(value, index, values) {
										return number_format(value);
									}
								},
								gridLines : {
									color : "rgb(234, 236, 244)",
									zeroLineColor : "rgb(234, 236, 244)",
									drawBorder : false,
									borderDash : [ 2 ],
									zeroLineBorderDash : [ 2 ]
								}
							} ],
						},
						legend : {
							display : false
						},
						tooltips : {
							titleMarginBottom : 10,
							titleFontColor : '#6e707e',
							titleFontSize : 14,
							backgroundColor : "rgb(255,255,255)",
							bodyFontColor : "#858796",
							borderColor : '#dddfeb',
							borderWidth : 1,
							xPadding : 15,
							yPadding : 15,
							displayColors : false,
							caretPadding : 10,
							callbacks : {
								label : function(tooltipItem, chart) {
									var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
											|| '';
									return datasetLabel + ': $'
											+ number_format(tooltipItem.yLabel);
								}
							}
						},
					}
				});
	</script>
	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>
	<script src="js/demo/chart-bar-demo.js"></script>
</body>
</html>