

-- 작업 OnTask 
DROP TABLE OnTask;
CREATE TABLE OnTask (
	task_no NUMBER PRIMARY KEY , -- *작업번호(id)
	task_name varchar2(100), -- *작업명(text)
	task_startdte varchar2(50), -- *작업 시작일(start_date)
	task_enddte varchar2(50), -- 작업 종료일(end_date)
	task_duration NUMBER, -- *작업 기간(duration)
	task_progress NUMBER, -- *작업 진행퍼센트(progress)
	taskref_no NUMBER, -- *상위작업번호(parent)
	task_prior varchar2(20), -- *작업 우선순위(priority)
	task_content varchar2(1000), -- *작업내용
	task_regdte varchar2(50), -- 작업 등록일
	task_uptdte varchar2(50), -- 작업 수정일
	task_state varchar2(20), -- 작업 진행상태
	mem_no varchar2(10) -- 작업 담당자(fk)
);

-- 작업 시퀀스
DROP SEQUENCE OnTask_seq;
CREATE SEQUENCE OnTask_seq
   INCREMENT BY 1   
   START WITH 1
   MINVALUE 1
   MAXVALUE 999999;
   
  
  
/* ================================================================================================= */
  
-- 확인용: [사원번호]를 이용한 참여한 프로젝트 확인 (프로젝트 확인)
SELECT * FROM onproject op, onproject_member om
WHERE op.pro_no = om.pro_no AND om.emp_no = '1001' ORDER BY om.pro_no;

-- 확인용: [사원번호]를 이용한 참여한 작업 확인 (테스크 내용 확인)
SELECT * FROM ontask ot, onproject_member om, onproject op
WHERE ot.mem_no = om.mem_no AND om.pro_no = op.pro_no
AND om.pro_no = 'pro1001';
  
-- 확인용: [프로젝트번호]와 [사원번호]를 이용한 참여한 프로젝트 확인
SELECT * FROM onproject op, onproject_member om
WHERE op.pro_no = om.pro_no AND op.pro_no = 'pro1001' AND om.emp_no = '1001';



-- myProList : [사원번호]를 이용해 참여중인 프로젝트 이름과 번호 확인 
SELECT DISTINCT op.pro_name, op.pro_no
FROM onproject_member otm, onproject op
WHERE otm.pro_no = op.pro_no AND otm.emp_no = '1001'
ORDER BY op.pro_no;


-- myMemNo : [프로젝트번호]와 [사원번호]를 이용해 선택한 프로젝트의 멤버번호 구하기
SELECT DISTINCT ot.mem_no
FROM ontask ot, onproject_member otm, onproject op
WHERE ot.mem_no = otm.mem_no AND otm.pro_no = op.pro_no
AND op.pro_no = 'pro1001' AND otm.emp_no = '1001';


-- ganttList : [프로젝트번호]를 이용한 프로젝트의 작업 리스트 확인 
SELECT op.pro_name, oe.emp_korname, ot.* 
FROM OnTask ot, onproject_member om, onproject op, OnEmp oe
WHERE ot.mem_no = om.mem_no AND om.pro_no = op.pro_no
AND om.emp_no = oe.emp_no AND om.pro_no = 'pro1001'
AND (task_startdte >= '2021-09-02')
ORDER BY task_no asc;



		

