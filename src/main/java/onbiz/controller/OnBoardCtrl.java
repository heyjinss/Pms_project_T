package onbiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import onbiz.service.OnBoardServ;
import onbiz.vo.OnBoard;
import onbiz.vo.OnBoardSch;
import onbiz.vo.OnEmp;

@Controller
@SessionAttributes({"onboardSch", "login"})
@RequestMapping("onboard.do")
public class OnBoardCtrl {

	@Autowired(required = false)
	private OnBoardServ service;
	
	private OnEmp sessionEmp; 
	private String sessionEmpNo;
	
	// 로그인값 호출
	@ModelAttribute("login")
	public OnEmp getOnEmp() {
		return new OnEmp();
	}		
	
	// http://localhost:7080/onbiz/onboard.do?method=list
	@RequestMapping(params="method=list")
	public String onboard(OnBoard bd, @ModelAttribute("login") OnEmp login, Model d) {
		d.addAttribute("list", service.bdList(bd));
		return "OnBoard/teamBoard/TM_PM_HR_BA-001";
	}
	
	// http://localhost:7080/onbiz/onboard.do?method=insForm
	@RequestMapping(params="method=insForm")
	public String insForm(OnBoard bd, @ModelAttribute("login") OnEmp login) {
		return "OnBoard/teamBoard/TM_PM_HR_BA-002";
	}
	
	// http://localhost:7080/onbiz/onboard.do?method=insert
	@RequestMapping(params="method=insert")
	public String insBoard(OnBoard ins, @ModelAttribute("login") OnEmp login) {
		service.insBoard(ins);
		return "redirect:/onboard.do?method=list";
	}
	
	// [PM] 상세화면 - 수정/삭제 가능
	// http://localhost:7080/onbiz/onboard.do?method=detail
	@RequestMapping(params="method=detail")	
	public String bdDetail(@RequestParam("bd_no") int bd_no, @ModelAttribute("login") OnEmp login, Model d) {
		d.addAttribute("bd", service.getBoard(bd_no));
		return "OnBoard/teamBoard/PM_HR_BA-003";
	}
	
	// [TM] 상세화면 - 조회만 가능
	// http://localhost:7080/onbiz/onboard.do?method=detailList
	@RequestMapping(params="method=detailList")	
	public String bdDetailList(@RequestParam("bd_no") int bd_no, @ModelAttribute("login") OnEmp login, Model d) {
		d.addAttribute("bd", service.getBoard(bd_no));
		return "OnBoard/teamBoard/TM/PM_HR_BA-003_List";
	}	
	
	// http://localhost:7080/onbiz/onboard.do?method=update
	@RequestMapping(params="method=update")	
	public String uptBoard(OnBoard upt, @ModelAttribute("login") OnEmp login) {
		service.uptBoard(upt);
		return "redirect:/onboard.do?method=list";
	}
	
	// http://localhost:7080/onbiz/onboard.do?method=delete
	@RequestMapping(params="method=delete")	
	public String delBoard(@RequestParam("bd_no") int bd_no, @ModelAttribute("login") OnEmp login) {
		service.delBoard(bd_no);
		return "redirect:/onboard.do?method=list";
	}
	
	// http://localhost:7080/onbiz/onboard.do?method=replyFrm
	@RequestMapping(params="method=replyFrm")
	public String bdReply(OnBoard bd, @ModelAttribute("login") OnEmp login) {
		return "";
	}
	
}
