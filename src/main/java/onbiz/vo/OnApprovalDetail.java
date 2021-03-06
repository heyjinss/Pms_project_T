package onbiz.vo;

import org.springframework.web.multipart.MultipartFile;

// 결재 조치 (상세 화면) VO
public class OnApprovalDetail {
	
	// 입력 데이터
	private String app_no; // 결재번호
	private int task_no; // 작업번호
	
	private String app_regdte; // 결재등록일
	private String app_deadline; // 결재만료일
	private String app_appdte; // 결재승인일
	
	private String app_comment; // 결재답변
	private String app_state; // 승인상태
	private String mem_no; // 승인관리자
	
	// 결재 상세조회 join
	private String pro_name; // 프로젝트명
	private String task_name; // 작업명
	private String task_content; // 작업내용
	private String app_content; // 결재요청내용
	private String emp_korname; // 담당자
	private String task_state; // 작업진행상태 (진행중 / 진행완료)
	
	// 산출물 파일명
	private String opt_name;
	
	// 첨부 파일
	private MultipartFile output;

	public String getApp_no() {
		return app_no;
	}

	public void setApp_no(String app_no) {
		this.app_no = app_no;
	}

	public int getTask_no() {
		return task_no;
	}

	public void setTask_no(int task_no) {
		this.task_no = task_no;
	}

	public String getApp_regdte() {
		return app_regdte;
	}

	public void setApp_regdte(String app_regdte) {
		this.app_regdte = app_regdte;
	}

	public String getApp_deadline() {
		return app_deadline;
	}

	public void setApp_deadline(String app_deadline) {
		this.app_deadline = app_deadline;
	}

	public String getApp_appdte() {
		return app_appdte;
	}

	public void setApp_appdte(String app_appdte) {
		this.app_appdte = app_appdte;
	}

	public String getApp_comment() {
		return app_comment;
	}

	public void setApp_comment(String app_comment) {
		this.app_comment = app_comment;
	}

	public String getApp_state() {
		return app_state;
	}

	public void setApp_state(String app_state) {
		this.app_state = app_state;
	}

	public String getMem_no() {
		return mem_no;
	}

	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getTask_name() {
		return task_name;
	}

	public void setTask_name(String task_name) {
		this.task_name = task_name;
	}

	public String getTask_content() {
		return task_content;
	}

	public void setTask_content(String task_content) {
		this.task_content = task_content;
	}

	public String getApp_content() {
		return app_content;
	}

	public void setApp_content(String app_content) {
		this.app_content = app_content;
	}

	public String getEmp_korname() {
		return emp_korname;
	}

	public void setEmp_korname(String emp_korname) {
		this.emp_korname = emp_korname;
	}

	public String getTask_state() {
		return task_state;
	}

	public void setTask_state(String task_state) {
		this.task_state = task_state;
	}

	public String getOpt_name() {
		return opt_name;
	}

	public void setOpt_name(String opt_name) {
		this.opt_name = opt_name;
	}

	public MultipartFile getOutput() {
		return output;
	}

	public void setOutput(MultipartFile output) {
		this.output = output;
	}
	
}
