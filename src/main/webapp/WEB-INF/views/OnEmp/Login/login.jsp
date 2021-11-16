<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>



<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>OnBiz</title>
<!-- Custom fonts for this template-->
<link href="${path}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
<!-- Custom styles for this template-->
<script src="${path}/settings/jquery.min.js"></script>
<script src="${path}/settings/jquery-ui.js"></script>
<script src="${path}/settings/bootstrap.min.js"></script>
<script src="${path}/settings/popper.min.js"></script>
<link href="${path}/resources/css/sb-admin-2.css" rel="stylesheet">
<!-- CSS 템플릿 -->
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">
<link rel="stylesheet" href="${path}/settings/bootstrap.min.css">
<script type="text/javascript">
					$(document).ready(function() {
						$(".title").text("<spring:message code='login'/>");
						$("form").submit(function(){
							var id = $("[name=emp_no]").val();
							var pass =$("[name=emp_pass]").val();
							if(id == ""){
								alert("사원번호를 입력하세요.");
								$("[name=emp_no]").focus();
								return;
							}
							if(pass == ""){
								alert("비밀번호를 입력하세요.");
								$("[name=emp_pass]").focus();
								return;
							}
							 document.user.action="${path}/loginCheck.do";
						});
					});
					
					$(document).ready(function(){
						$("h2").text("<spring:message code='multilang'/>");
						var lang="${param.lang}";
						$("#selectLan").val(lang);
						$("#selectLan").change(function(){
							if( $(this).val()!=""){
								$(location).attr("href","${path}/choiceLan.do?lang="+$(this).val());
							}
						});
					});
</script>
</head>
<style>

body { font-family: 'Open Sans', Arial, Helvetica, sans-serif;}
.form-control-sm {
margin-top:10px;
text-align:center;

}
</style>
<body class="bg-gray-900">

<div class="container">
<br><br>
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-6 col-lg-8 col-md-10">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="p-5">
                                    <div class="text-center">
                   <!--  로그인 화면  -->
                                    	<h1>ONBIZ</h1>
                                        <h1 class="h4 text-gray-900 mb-4 title">OnBiz <spring:message code = "member"/> <spring:message code ="login"/></h1>
                                    </div>
                                    <form class="user" name="user" method="post"> <!-- 액션 넣기? action="${path}/login.do"-->
                                        <div class="form-group">
			     	<!-- 내용 입력란  -->
                                            <input type="text" class="form-control form-control-user"
                                                name="emp_no" id="exampleInputEmail" placeholder="<spring:message code="id"/>" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                               name="emp_pass" id="exampleInputPassword" placeholder="<spring:message code="pwd"/>"  value="">
                                        </div>
                                        <button class="btn btn-primary btn-user btn-block" type="submit">
                                          <spring:message code="login"/>
                                    	</button>
	               <!-- 언어 선택 -->                   
                                    	<select class="form-control form-control-sm" id="selectLan">
  										<option value="" ><spring:message code="chlang"/></option>
  										<option value="ko" ><spring:message code="ko"/></option>
  										<option value="en" ><spring:message code="en"/></option>
  										</select>
                   <!-- 하단 전화안내 -->                    	
                                    </form>
                                    <hr>
                                    <div class="bottomText text-center"><spring:message code ="contact"/>
                                     <br><spring:message code  ="memberteam"/> 02-350-7533<br><br>
                                     <br><h6><spring:message code ="info"/></h6>
               
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

					
							<!--  섹션 끝  -->

					
						<!-- End of Main Content -->

						<!-- Footer -->
						<!-- End of Footer -->
		
				<!-- End of Content Wrapper -->
	
			<!-- End of Page Wrapper -->

			<!-- Scroll to Top Button-->

			<%-- 
	<!-- Logout Modal-->
	
--%>

<!-- Custom scripts for all pages-->
<script src="${path}/resources/js/sb-admin-2.min.js"></script>
	
<!-- Core plugin JavaScript-->
<script src="${path}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>
</html>