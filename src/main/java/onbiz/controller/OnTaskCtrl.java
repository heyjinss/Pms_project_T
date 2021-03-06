package onbiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import onbiz.service.OnTaskService;
import onbiz.vo.OnEmp;
import onbiz.vo.OnOutput_Approval;
import onbiz.vo.OnTask;
import onbiz.vo.OnTask_Project;

@Controller
@SessionAttributes("login")
@RequestMapping("ontask.do")
public class OnTaskCtrl {
	@Autowired
	private OnTaskService service;
	
	// 세션에서 받아서 사용해야할 값, 임의로 셋팅해서 쓰기
	private String sessionEmpNo; 
	private String sessionAuthName; 
	private String myMem_no = "";



	// 템플릿 확인
	// http://localhost:7080/onbiz/ontask.do?method=template
	@RequestMapping(params="method=template")
	public String taskAdmin() {
		return "OnTask/TAD001-gantt";
	}
	
	
	// [내작업] 간트차트 - 초기화면
	// http://localhost:7080/onbiz/ontask.do?method=mygantt
	@RequestMapping(params="method=mygantt")
	public String myGanttView(@ModelAttribute("login") OnEmp login, Model m) {
		System.out.println("===<내작업 간트차트 초기화면>===");
		System.out.println("# 사원번호 :"+login.getEmp_no());
		sessionEmpNo = login.getEmp_no();
		
		m.addAttribute("proList", service.myProList(new OnTask_Project(sessionEmpNo)));
		//m.addAttribute("userList", service.userList());
		return "OnTask/TM/MTA003-TMganttChart";
	}
	
	
	// [내작업] 초기화면 + [공통] 참여프로젝트 조회
	// http://localhost:7080/onbiz/login.do
	// http://localhost:7080/onbiz/ontask.do?method=mytaskList
	@RequestMapping(params="method=mytaskList")
	public String mytaskView(@ModelAttribute("login") OnEmp login, Model m) {
		System.out.println("===<작업관리 초기화면>===");
		sessionEmpNo = login.getEmp_no();
		sessionAuthName = login.getAuth_name();
		System.out.println("# 권한이름 :"+login.getAuth_name());
		System.out.println("# 사원번호 :"+login.getEmp_no());
		System.out.println("# 저장한 사원번호 :"+sessionEmpNo);
			
		m.addAttribute("proList", service.myProList(new OnTask_Project(sessionEmpNo)));
		
		// 권한에 따른 화면 연결 분기 
		String returnUrl = "OnTask/TM/MTA004-taskAdmin";
		if(sessionAuthName.equals("pm")) {
			returnUrl = "OnTask/MTA002-taskAdmin";
		}

		return returnUrl;
	}
	
	// [내작업] 프로젝트별 내 작업 조회
	// http://localhost:7080/onbiz/ontask.do?method=mytaskJson
	@RequestMapping(params="method=mytaskJson")
	public String myTaskJson(OnTask_Project task, Model m) {
		System.out.println("===<작업관리 리스트 조회>===");
		System.out.println("프로젝트번호 : " + task.getPro_no());
		System.out.println("사원번호 : " + task.getEmp_no());
		
		myMem_no = service.myMemNo(task);
		System.out.println("검색한 멤버번호 : " + myMem_no);
		m.addAttribute("mymem_no", myMem_no);
		m.addAttribute("mytasklist", service.mytaskList(task));
		m.addAttribute("proDur", service.myProDuration(task.getPro_no()));
		return "pageJsonReport";
	}
	
	// [내작업] 내작업 검색 
	@RequestMapping(params="method=mySchJson")
	public String mySchJson(OnTask task, @RequestParam("contents") String contents, Model m) {
		System.out.println("===<작업관리 검색>===");
		System.out.println("검색값 : " + contents);
		System.out.println("멤버번호값 : " + myMem_no);
		m.addAttribute("mytasklist", service.schtaskList(new OnTask(contents, contents, myMem_no)));
		return "pageJsonReport";
	}
	
	// [내작업] 내작업 상세조회
	@RequestMapping(params="method=detailTask")
	public String detailTask(OnTask task, Model m) {
		System.out.println("===<내작업 상세조회>===");
		task.setMem_no(myMem_no);
		System.out.println("조회할 아이디 : " + task.getId());
		m.addAttribute("detail", service.detailTask(task));
		return "pageJsonReport";
	}

	// [내작업] 내작업 등록
	@RequestMapping(params="method=myinsert")
	public String myinsert(OnTask_Project task, Model m) {
		System.out.println("===<내작업 등록>===");
		
		System.out.println("상위번호 : " + task.getParent());
		System.out.println("시작일 : " + task.getStart_date());
		System.out.println("종료일 : " + task.getEnd_date());
		System.out.println(task.getDuration());
		System.out.println(task.getContent());
		System.out.println("가져온 멤버번호 : " + task.getMem_no());
		service.myinsert(task);
		
		System.out.println("가져온 pro_no : " + task.getPro_no());
		System.out.println("가져온 emp_no : " + task.getEmp_no());
		
		task.setEmp_no(sessionEmpNo);
		m.addAttribute("mytasklist", service.mytaskList(task));
		return "pageJsonReport";
	}
	
	// [내작업] 내작업 수정
	@RequestMapping(params="method=myupdate")
	public String myupdate(OnTask_Project task, Model m) {
		System.out.println("===<내작업 수정>===");	
		task.setMem_no(myMem_no);
		
		System.out.println(task.getDuration());
		System.out.println(task.getContent());
		System.out.println(task.getMem_no());
		service.myupdate(task);
		
		task.setEmp_no(sessionEmpNo);
		m.addAttribute("mytasklist", service.mytaskList(task));
		return "pageJsonReport";
	}
	
	// [내작업] 내작업 삭제
	@RequestMapping(params="method=mydelete")
	public String mydelete(OnTask_Project task, Model m) {
		System.out.println("===<내작업 삭제>===");	
		task.setMem_no(myMem_no);
		
		// 삭제할 내용 확인
		System.out.println(task.getId());
		System.out.println(task.getContent());
		System.out.println(task.getMem_no());
		service.mydelete(task);
		
		// 삭제후 조회 내용
		task.setEmp_no(sessionEmpNo);
		System.out.println("삭제시 Emp_no: " + task.getEmp_no());
		System.out.println("삭제시 Pro_no: " + task.getPro_no());
		m.addAttribute("mytasklist", service.mytaskList(task));
		return "pageJsonReport";
	}
	
	
	
	
	// [내작업] 산출물 제출 
	@RequestMapping(params="method=insertOutput")
	public String uploadOutput(OnOutput_Approval outApp, MultipartFile output, @RequestParam("pro_no") String pro_no, Model m) {
		
		System.out.println("1. 산출물 객체 : " + output);
		System.out.println("2. 넘어오는 pro_no : " + pro_no);
		System.out.println("3. 요청내용 : " + outApp.getApp_content());
		System.out.println("3. 테스크번호 : " + outApp.getTask_no());

		// 1. 산출물 등록
		service.uploadOutput(outApp.getTask_no(), output);
		
		// 2. 결재 담당자 찾기
		String memNo = service.appPM(pro_no);
		System.out.println("결재 담당자: "+ memNo);
		outApp.setMem_no(memNo); // 설정
		
		// 3. 결재 요청 
		service.approvalInsert(outApp);

		return "redirect:/ontask.do?method=mytaskList";
	}
	
	@RequestMapping(params="method=appDetail")
	public String appDetail(@RequestParam("task_no") String task_no, Model m) {
		
		System.out.println("====<결재 상세정보>====");
		System.out.println("조회할 작업 번호 : " + task_no);
		m.addAttribute("appList", service.appDetail(task_no));
		
		return "pageJsonReport";
	}
}
