package onbiz.dao;

import java.util.ArrayList;
import java.util.Map;

import onbiz.vo.OnApprovalDetail;
import onbiz.vo.OnApprovalView;

public interface OnApprovalDao {
	
	//public ArrayList<OnApprovalView> proList(OnApprovalView sch); // 0. 프로젝트 필터링
	public ArrayList<OnApprovalView> getAppList(OnApprovalView sch); // 1. '승인대기' 상태의 결재 목록
	public OnApprovalDetail getAppDetail(String app_no); // 2. 결재 상세내용 조회
	public void uptAppList(OnApprovalDetail upt); // 2-1. 결재 조치 등록
	public void uptTaskStat(OnApprovalDetail upt); // 2-2. 작업진행상태

}