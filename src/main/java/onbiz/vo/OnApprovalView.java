package onbiz.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

// 결재 조회 VO
public class OnApprovalView {
	
	private String app_no; // 결재번호
	private String pro_name; // 프로젝트명
	private String task_name; // 작업명
	private String task_content; // 작업내용
	private String app_regdte; // 결재등록일
	private String app_deadline; // 결재만료일
	private String app_appdte; // 결재승인일
	private String app_state; // 승인상태 (승인대기 / 승인 / 반려)
	
	String emp_no; // 사원번호
	String pro_no; // 프로젝트번호
	
	private int task_no; // 작업번호
	
	public OnApprovalView() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OnApprovalView(String emp_no) {
		super();
		this.emp_no = emp_no;
	}

	public OnApprovalView(String pro_no, String emp_no) {
		super();
		this.pro_no = pro_no;
		this.emp_no = emp_no;
	}

	public String getApp_no() {
		return app_no;
	}

	public void setApp_no(String app_no) {
		this.app_no = app_no;
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

	public String getApp_state() {
		return app_state;
	}

	public void setApp_state(String app_state) {
		this.app_state = app_state;
	}

	public String getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}

	public String getPro_no() {
		return pro_no;
	}

	public void setPro_no(String pro_no) {
		this.pro_no = pro_no;
	}

	public int getTask_no() {
		return task_no;
	}

	public void setTask_no(int task_no) {
		this.task_no = task_no;
	}
	
}
