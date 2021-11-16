# Pms_project_T
![커버](https://user-images.githubusercontent.com/75897408/141992339-f92373b2-9994-4bd0-85f4-7c1b5b7af202.JPG)

## ONBIZ[Pms_project] 
>기업에서 활용하기 위한 프로젝트 관리 서비스이며 대시보드, 범위관리, 일정관리, 이슈관리, 의사소통관리, 자원관리 등의 기능을 포함합니다. 
<details>
<summary><b>상세 분석표 보기</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141984900-87656954-50c2-4655-b0c1-bc8168cfd066.JPG">
<div>
</details> 
  
<details>
<summary><b>권한 보기</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141984907-e8c9ec7e-c00e-4920-a195-3b2cc7c40472.JPG">
<div>
</details> 
  
## 프로젝트 선택의 이유 
이 프로젝트는 프로젝트 관리시스템 (Project Manage System) 으로 제가 개발을 처음 시작하며 고민하게 된 프로그램과 가까운 시스템이었습니다. 프로젝트의 정량적인 성과와 진행지표를 체계적으로 사용자들이 알 수 있도록 지원하는 프로그램으로서 다양한 권한 설정, 결제체계, 일정관리,리스크 관리 등 업무에 관련된 프로세스가 포함되어있는 시스템이었기에 무엇보다 기대되었습니다.
물론 팀 내에서 사용할 서비스이기 때문에 기획의 방향이 조금은 달랐지만 만들고 싶던 회사업무의 서비스를 구현해볼 수 있어서 굉장히 설렌 마음으로 시작했습니다.

## 제작기간 
> 2021.09.24 ~ 2021.10.22 

## 참여인원
> 4명 (유혜진, 김지은, 김다은, 유성근)  

## 사용기술
css, javascript, html, jsp, spring, mybatis, oracle
<details>
<summary><b>상세</b></summary>
<div markdown="1">
주어진 개발 스펙은 ajax, jquery, java script등 평소 익숙해진 문법을 활용하되, BackEnd에 조금 더 시간을 할애하여 개발할 수 있도록 Spring 과 Mybatis를 사용하여 프로세스에 더 집중하고자 개발방향을 잡게되었습니다. 또한 배포를 위해 SVN을 활용하여 팀원들과 Commit을 진행하였습니다. 
java,spring,gradle 등 완전하진 않지만 최적화된 기술을 사용하여 백엔드기술에 온전히 집중할 수 있었습니다. 동적 데이터 처리부분이 많기 때문에 javascript와 ajax의 사용도가 예상만큼 높았습니다. 
 *하단의 이미지는 제가 활용할 수 있는 기술과 정도를 나타낸 지표입니다.
<img src = "https://user-images.githubusercontent.com/75897408/141770093-2c241771-59f9-462b-8a7a-7800d2a3960f.png" width ="100%" height="50%">
<div>
</details> 

## 핵심기술 
<details>
<summary><b>spring</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141774019-3ed051a2-81e4-4426-b0dd-46ed51d3144d.JPG" width ="100%" height="50%">
<div>
</details> 
<details>
<summary><b>mybatis</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141776726-54729ef5-a9db-46c0-9bcd-c946f8806f02.png" width ="100%" height="50%">
<div>
</details> 
<details>
<summary><b>ajax/jquery</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141777013-b916fedb-4ded-4da2-92cb-727bd37fd924.JPG" width ="100%" height="50%">
<div>
</details> 

## ERD  
pms프로젝트의 경우 프로젝트 별 멤버번호가 다르다는 점이 핵심입니다. 조직구성원은 여러 프로젝트의 참여할 수 있고 사원번호는 고유하나 프로젝트에 따라 멤버번호가 할당되어
다중의 멤버번호를 가지고 있다는 점이 핵심입니다. 리스크 등록, 프로젝트 멤버 등록 시, 상위작업, 하위작업 할당 시 사원번호가 아닌 프로젝트의 member번호를 사용하여 할당하게 
되므로 다중의 조인문이 요구되는 특징을 가지고 있는 ERD 구성입니다.  

<details>
<summary><b>상세</b></summary>
<img src = "https://user-images.githubusercontent.com/75897408/141643981-35e1b6e6-54b9-4027-bced-069cab66150e.JPG" width ="100%" height="50%">
<div>
</details> 

  
## 핵심기능(코드로보여주거나 링크)
<details>
<summary><b>fullcalendar</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141777013-b916fedb-4ded-4da2-92cb-727bd37fd924.JPG" width ="100%" height="50%">
<div>
</details>
  
 <details>
<summary><b>downloadviewer</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141777755-8b943ec2-aa48-43f4-857b-62629c389d21.JPG" width ="100%" height="50%">
 <img src = " https://user-images.githubusercontent.com/75897408/141777744-82f28bfb-34ce-43f2-9485-23719b7cfe8d.JPG" width ="100%" height="50%">
<div>
</details>
  
 <details>
<summary><b>multipart</b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/141778036-eb444f35-91e2-4847-bbe4-9d5ae909e0bf.JPG" width ="100%" height="50%">
<img src = "https://user-images.githubusercontent.com/75897408/141778032-6c21db7a-eaff-4295-9b4b-1e65ca780bee.JPG" width ="100%" height="50%">
<div>
</details>
  
-gantchart</br>
-mail</br>
-chat</br>
-chart.js</br>

## 구현기능 
- **대시보드기능** (chart.js를 활용한 통계처리, 다국어처리)
- **자원관리기능** (멤버 등록/수정/삭제/권한설정)
- **프로젝트관리 기능**(파일업로드, 검색)
- **리스크관리** 기능(권한 설정/댓글/수정/등록/삭제/검색/다운로드)
- **일정관리기능** (fullcalendar를 이용한 기술/일정수정/삭제/조회/색상변경/상세등록)
- 이외의 기능은 다른 조원들이 맡았습니다.
  (간트차트, 작업관리, 결제관리, 사원관리, 의사소통관리) 
<hr>
-프로젝트 관리(등록/상세/멤버수정/삭제/신규등록) 
<img src = "https://user-images.githubusercontent.com/75897408/141779352-cf3ca26e-7370-4c4b-a90d-121b1c024ee5.JPG"></br>
-대시보드 (통계 정보) </br>
<img src = "https://user-images.githubusercontent.com/75897408/141779345-f0b423a2-97b7-4af5-9475-a0761f318998.JPG" width ="100%" height="50%"></br>
-리스크관리 (리스크 등록, 수정, 삭제, 댓글, 페이징)</br>
<img src = "https://user-images.githubusercontent.com/75897408/141779353-b5eacb7b-fcf0-4fc7-9c9d-01093380de48.JPG" width ="100%" height="50%"></br>
-일정관리 
<img src = "https://user-images.githubusercontent.com/75897408/141779356-576fe890-e262-4e6f-9a61-73f8b6e061c7.JPG" width ="100%" height="50%"></br>  

## 📌프로젝트를 시작하기 전 저의 목표 
- **팀 원간 정보공유 체계 확보**
      이전보다 더 효율적이고 획일적으로 코드를 공유하고 이해할 수 있도록 정보의 공유체계를 
      주도적으로 확보해보겠다고 다짐했습니다.

- **다각적 권한 설정 및 jstl의 사용**
     javascript와 세션 및 jstl 구문을 사용하여 권한설정에 있어 다각적으로 활용해보고자 다짐했습
    니다. 동적으로 데이터를 다루는 방식의 변화를 주고자 목표를 설정했습니다.
    
- **데이터의 체계적 정규화**
      이전부터 지속적으로 팀원들과 설계해온 경험을 바탕으로 주도적으로 ERD를 체계적으로 정규화   
      하여 쿼리를 효율적으로 작성하고 속도를 높이는 훈련을 하고 싶었습니다.

## 이슈관리 
개발기간은  21년 9월 17일부터 21년 10월 26일까지였으나 10월 22일부터는 통합테스트 기간이었고 설계과정도 약 10일정도 할애가 되기때문에,17일까지는 개발이 완성되어야 했습니다. 약 20일 (3주)의 시간에 개발이 진행되었습니다.
범위관리, 자원관리, 일정관리, 이슈관리, 통합관리,의사소통관리까지 마무리하기에는 조금은 벅찰 것으로 예상되었기에 프로젝트에서 가장 중요한 것은 소통의 효율성을 높이고 촘촘한 설계로 변동을 최대한 줄이는 방향이었습니다. 
또한 일정관리를 바탕으로 팀원 간 구현 기능을 검토하며 완성도를 높이는 작업이 요구되었습니다. 

- 간트차트를 통한 일정공유 매개체 만들기 </br>
  📌**해결방안 :** 이전 프로젝트에서는 팀원 간 전체 일정을 노션에 공유하여 진행도를 파악할 수 있었지만, 상세 진행도를 파악하고 현실적으로 구현할 수 있는 부분과 없는 부분을 빠르게 파악하여 지속적으로 조정해나갈 수 있도록 최적화하는 노력이 더 필요했습니다. 따라서 저는 팀원들이 '한눈에' 서로의 진행도를 파악하고, 진행의 속도를 맞추어갈 수 있도록 간트차트를 구현하여 일정을 협업의 형태로 관리할 수 있도록 했습니다. </br>
 📌**효과:** 팀 내에서 각자 맡은 역할은 데이터의 흐름이 얽혀있기 때문에 서로의 속도를 맞추어 가며 조정하는 것이 중요했는데, 간트차트를 통해 서로의 진행 흐름을 파악하여 '이때까지 완료 가능할까요?'라고 서로 조정해나가며 구현에 집중할 수 있었습니다. </br>
  ![Untitled](https://user-images.githubusercontent.com/75897408/141981871-0baeba43-9457-403b-a8e3-9e073a2e243e.png)
- 오류관리, 이슈사항 공유 매개체 설정</br>
 📌 **해결방안:** 개발기간동안 설계과정에서 짜놓았다고 할지라도 데이터의 변동사항은 지속적으로 생기는 문제를 경험했습니다. 따라서 이번 프로젝트에서는 변경사항이 빠르게 반영되어 오류를 최소화할 수 있도록 변경사항 로그에 작성하도록 하였고, 오류로그에 자신이 경험한 로그를 작성하여 같은 문제 발생 시 시간을 할애하지않고 서로 도움을 줄 수 있도록 작성했습니다. </br>
 📌**효과:** 오류를 경험했을 때 실제로 로그에 기록하며 해결방식을 작성하고 같은 오류 발생 시 개인적으로 참고하여 빠르게 공유하거나, DB로그 오류 시 모든 팀원이 같은 오류를 겪어 빠르게 해결해나갔습니다.</br>
![오류로그](https://user-images.githubusercontent.com/75897408/141981922-3078458c-6593-4532-99a3-47529d98f9e0.png)
![변경사항](https://user-images.githubusercontent.com/75897408/141981927-23716cb2-4019-4d0d-b9c8-e3b6ec305ce0.png)

- 코드컨벤션 진행을 통한 가독성 향상</br>
📌 파스칼 표기법 : 을 통해 vo명과 mapper명을 통일하여 가독성을 향상하였고, onbiz라는 프로젝트 웹 서비스의 명을 따서 On을 반드시 표기하도록 하였음 </br>
 ![코드컨벤션1](https://user-images.githubusercontent.com/75897408/141982195-e5cacdb9-0ad6-4ce1-9b9f-8df973921561.png)📌 파스칼 표기법 : 파스칼표기법을 통해 엔터티명을 작성하였고     속성명의 경우 스네이크 표기법을
  활용하여 작성하여 통일성을 높이고자 했습니다. 속성명의 경우 명사를 중심으로 작성하여 정확성을 높이고자 하였고 길어지는 구문의 경우 최대한 모르는 사람이 보아도 알아볼 수 있도록 
  작성하다보니 길어졌지만 가독성은 높이는 방향으로 합의했습니다. date의 경우 dte로 적어놓아 코드명은 약속된약어로 쓰도록 노력했습니다.  </br>
 ![코드컨벤션2](https://user-images.githubusercontent.com/75897408/141982202-310e7155-17eb-43df-8eec-6cb3a682fd4b.png)

## 트러블슈팅경험/자랑하고싶은코드 
📌 댓글등록 시 MVC패턴을 통해 controller에서 로그인 @SessionAttribute로 저장된 세션 값(사원번호 emp_no)를 호출하여 댓글 작성 시 저장 된 사원번호를 javascript단에서 비교하여 
동일 할 경우 [삭제버튼]할당하여 권한처리를 시도하였으나 비교 불가
- 문제 : jsp에서 controller의 Model값으로 Arraylist로 할당된 emp_no 값을 javascript에서 받아 비교처리 시 첫번째 class만 처리되는 현상 </br>
- 현상 : 상세조회에서 댓글 타 사용자에게도 삭제버튼이 노출되는 현상 </br>
- 원인 : class로 값을 가져오게 될 경우에는 특정 값만 가져오게 될 뿐, 배열로 class 값이 가져올 수 없는 동적할당의 한계가 있음
- 조치방안 : javascript로 jstl 구문을 통해 값을 가져와 처리하여 다시 jsp로 반환하는 프로세스가 아닌 jsp단에서 바로 처리</br>
- 해결과정 : JSTL을  문법을 통해 동적으로 처리되는 데이터 권한 설정 </br>
- 느낀점 : 권한 설정에 따른 동적 데이터 할당 과정에서 javascript를 이용하는 것이 아닌 jstl문법을 google을 통해 찾아 활용하고 적용하면서 더 빠르고 확실한 방법으로 
코드를 구성할 수 있다고 느꼈습니다. jsp단에서 jstl을 통해 비교구문으로 작성했을 때 코드의 양이 줄어들고 더 빠르고 확실한 방법으로 버튼이 할당되는 것을 알 수 있었습니다. 
이후 권한별로 노출되어야 할 값을 데이터 비교를 통해 노출해야 할 때 적합한 언어는 jstl이라는 것을 알 수 있었습니다. 
<details>
<summary><b>상세</b></summary>
<div markdown="1">
  
    ```jsx
    <c:forEach items="${command}" var="command">
    							<tr>
    								<td>조치일 | <fmt:formatDate pattern="yyyy/MM/dd"
    										value="${command.risk_commanddate}" /> 조치자 | ${command.emp_no}
    									<c:set var="pass" value="${command.emp_no}" /> 
    									<c:set var="emp_no" value="${sessionEmpNo}" /> 
    									<c:if test="${pass eq emp_no}">
                         						<a id="dela" onclick="delB()"; ><strong>삭제</strong></a>
    									</c:if> <input type="hidden" class="num" value="${command.risk_commandnum}" />
    								</td>
    							<tr>
    								<td><textarea class="form-control textaread " readonly>${command.risk_command}</textarea></td>
    							</tr>
    							<input class="name" type="hidden" value="${command.emp_no}">
    						</c:forEach>
    ```
  
<div>
</details> 
📌 프로젝트 별 작업진행도 파악을 위해 대시보드 통계처리 시 다중쿼리문 생성이 어려웠음. DB를 4번 나누어 MODEL값으로 호출하여 통계처리를 하고자 하였으나 
  한번에 처리하는 방안을 세워 DB의 접근을 최소화화여 query작성을 통해 팀에서 논의한 방향은 빠르게 작성하기 위해 한번에 통계처리를 하고자 함.  
- 문제 : 대시보드화면에서 프로젝트별 작업 진행률을 5개 제한을 두고 데이터를 호출해야 하는 문제</br>
- 현상 : DB를 여러번 나누어 호출하여 화면단에서 계산하여 통계처리를 낼 경우 로직이 복잡성 증가 </br>
- 원인 : 프로젝트별 작업 진행률을 알기위해서는 서브쿼리를 이용한 다중 조인문이 필요하기 때문 </br>
- 조치방안 : 프로젝트명과, '진행중'인 프로젝트의 테스크 갯수, 전체 테스크 갯수를 서브쿼리를 통해 조인 문 내에서 검색 처리 후 다시 서브쿼리를 활용하여 쿼리문 작성 </br>
- 해결과정 : 끈기를 가지고 프로젝트, 프로젝트 멤버, 태스크 별로 조합된 서브쿼리를 만들고, 만들어진 서브쿼리를 다중으로 재 조합하여 한번에 처리되는 다중쿼리문을 생성</br>
- 느낀점 : 모두가 안될 거라고 했지만, 생각으로 쿼리를 짜보기 이전에 먼저 쿼리를 손으로 짜보는 과정에서 굉장한 흥미와 자신감을 느낄 수 있었고, 복잡한 로직보다는 데이터가
한번에 처리될 수 있도록 mapper안에서 바로 처리할 수 있는 것이 효율적인 코드를 짤 수 있었던 것 같습니다. 그러나 모두가 이해할 수 있도록 쿼리를 짜기 위해서는 DB를 나누어 호출
하고 계산하는 것도 방법이 될 수 있을거라는 생각을 하고 있습니다. 
<details>
<summary><b>상세</b></summary>
<div markdown="1">  
  
    ```jsx
    <select id = "getprojectst" resultType ="ondashboard">
    	<![CDATA[
    	SELECT a.pro_name , count(task_no) AS tot, b.task2
    	FROM (SELECT o2.TASK_NO, b.pro_no, b.mem_no, b.pro_name
    	FROM ONTASK o2, 
    	(SELECT o.pro_no ,o.pro_name, om.mem_no 
    	FROM ONPROJECT o, ONPROJECT_MEMBER om 
    	WHERE o.PRO_NO = om.PRO_NO) b  
    	WHERE o2.MEM_NO  = b.mem_no) a,
    	(SELECT a.pro_name , count(no2) AS task2
    	FROM (SELECT o2.task_no AS no2, b.pro_no, b.mem_no , b.pro_name
    	FROM ONTASK o2, 
    	(SELECT o.PRO_NO ,o.pro_name, om.mem_no 
    	FROM ONPROJECT o, ONPROJECT_MEMBER om 
    	WHERE o.pro_no = om.pro_no) b  
    	WHERE o2.mem_no  = b.mem_no
    	AND o2.task_state = '진행중') a
    	GROUP BY a.pro_name) b
    	WHERE a.pro_name = b.pro_name
    	GROUP BY a.pro_name , b.task2
        ]]>
    	</select>
    ```
  -
 <div>
</details> 
    
📌 로그인 controller에서 return url 문제로 넘어가지 않는 현상
- 문제 : controller에서 로그인정보를 받은 후 logincheck를 하는 로직에서 세션에 담긴 값을 return을 통해 주소값으로 다시보낼 때 return이 1개 밖에 설정될 수 없는 현상 </br>
- 현상 : 4개의 권한 모두 if문을 통해 다른 주소로 보낼 경우 dashboard controller에서 코드가 길어지는 현상 </br>
- 원인 : 4가지 권한별로 화면이 다르고, 화면으로 이동할 때 Data를 13개의 값을 불러와야 하므로 4가지를 .do코드로 나누어 작성하는 것은 비효율적이라고 판단  </br>
- 조치방안 : dashboard의 controller화면에서 대시보드 화면호출 메서드를 1가지로 작성하고 url을 나누어 데이터 호출의 수를 줄인다.</br>
- 해결과정 : logincheck 컨트롤러에서 로그인이 된 경우 dash.do controller로 데이터를 넘기고, dash.do controller 메서드 내에서 구분하여 url을 다르게 할당하여 데이터 호출의 수를 줄인다.
- 느낀점 : 조원들과 함께 고민하여 더 빠르고 효율적인 로직이 무엇일까 고민하는 과정이 굉장히 즐거웠고, 데이터의 호출 수를 줄이고 더 짧은 흐름으로 코드를 구현해낼 수 있었던 과정에서 
효율적인 코드 흐름을 만들어가는 것이 어떤 방법이고, 즐거움인지 알게되었습니다.  
</br>
<details>
<summary><b>상세</b></summary>
<div markdown="1">  
  
    ```jsx
    <script type="text/javascript">
    	var login_auth = "${login.auth_no}";
    	// 로그인 권한이 있는지 확인, 로그인이 제대로 되었는지 확인
    	if(login_auth != null) {
    		location.href = "${path}/dash.do";
    	} else {
    		alert("로그인을 다시 해주세요!");
    	}

    </script>
    ```
  
    
    ```jsx
    //login담당자 코드 
    // 로그인 체크
        // http://localhost:7080/onbiz/loginCheck.do
        @RequestMapping("loginCheck.do")
        public String loginCheck(@ModelAttribute OnEmp onemp, HttpSession session) {
            String returnURL = "";
            System.out.println("전달 데이터 확인 : " + onemp);
            if (session.getAttribute("login") != null) {
                session.removeAttribute("login"); // 기존 login 세션값 제거
            }
            OnEmp vo = service.login(onemp);
            if (vo != null) {
                session.setAttribute("login", vo);
                session.getAttribute("login");
                returnURL = "OnEmp/Login/LOGIN_SELECT"; //"OnDashBoard/DAS-001-pm" ? 새 페이지 하나 추가해서 설정하는게..
                System.out.println("onemp 전달 : " + onemp);
                System.out.println("vo : " + vo);
                System.out.println("세션 확인 :  " + session);
            } else {
                System.out.println("사원번호/비밀번호 불일치");
                returnURL = "OnEmp/Login/login";
            }
            return returnURL;
        }
    ```
    
  
    ```jsx
    @RequestMapping("dash.do")
      public String dash(@ModelAttribute("login") OnEmp login, Model d) {
        d.addAttribute("projectlist", service.getProject());
        d.addAttribute("projectst",service.getprojectst());
        d.addAttribute("procnt",service.getProjectCnt());
        d.addAttribute("riskcnt",service.getRiskCnt());
        d.addAttribute("taskcnt",service.getTaskCnt());
        d.addAttribute("nprocnt",service.getnProjectCnt());
        d.addAttribute("riskst", service.getristst());
        d.addAttribute("risktab", service.getrisklist());
        d.addAttribute("dproject", service.dproject());
        //=====================================================bar chart
        d.addAttribute("graph_complete",service.graphcomplete());
        d.addAttribute("graph_delay",service.graphdelay());
        d.addAttribute("graph_graphgoing",service.graphgoing());
        d.addAttribute("graph_ready",service.graphready());
        
        String returnURL = "";
        String loginInfo = login.getAuth_no();
        System.out.println(loginInfo);
        //pm대시보드 이동 
        if(loginInfo.equals("a01")) {
          returnURL = "OnDashBoard/DAS-001-pm";
        }
        //tm대시보드 이동 
        if(loginInfo.equals("a02")) {
          returnURL = "OnDashBoard/DAS-001-TM";
        }
        //hr대시보드 이동 
        if(loginInfo.equals("a03")) {
          returnURL = "OnDashBoard/DAS-001-HR";
        }
        //ceo대시보드 이동
        if(loginInfo.equals("a04")) {
          returnURL = "OnDashBoard/DAS-001-CEO";
        }
        return returnURL;
      }
    ```
  
 <div>
</details> 

  -이외의오류로그 </br>
  
  

## 회고/느낀점 
-협업을 위해서 즉각적인 문서 및 오류공유를 위한 환경을 구축하면서 최적화과정을 이루어가는 일이 팀의 협업 효율을 이끌어 낼 수 있다는 것을 다시한번 알게 되었고, 정규화 된 데이터를 조인하여     통계를 내는 과정에서 sql에 대해서 재미를 느끼고 데이터관리 및 오류를 경험하면서 데이터 설계과정에 대해 직접적으로 고민해볼 수 있었습니다. 
- 팀 내의 다른 팀원들보다 코딩공부를 늦게 시작해 오류를 마주하는 일이 많아 속도가 개인적으로 늦었을때가 많았습니다. 그러나 마지막 프로젝트가 되었을때는 다양한 오류를 팀원들이 공유할 때 침   착하게 제가 알려줄 수 있는 것들이 많았습니다. 개발은 오류를 마주하고 익숙해지는 과정속에서 역량이 늘어갈 수 있다고 생각합니다.
- 또한 한정된 일정 속에서 포기하려는 팀원도 있었지만, 서로의 한계를 공유하고 코드를 공유하고, 대신 방안을 찾아가며 끝까지 결과물을 완성할 수 있었습니다. 함께할 때 더 좋은 성과물이 나올 수   있다고 생각합니다.
- 설계가 항상 완벽할 수 없었습니다. 변화하는 개발과정 속에서 소통의 최적화 과정을 찾아가고 유연한 사고로 조정해가는 것이 필요하다고 생각합니다. 그 과정에서 효율을 빠르게 찾아가기 위해 
  코드컨벤션을 통한 코드표기법, 코드로 소통하는 법을 끊임없이 배워야 겠다고 생각할 수 있는 프로젝트 였습니다. 

