	
	
--사원테이블 emp_no 시퀀스
DROP SEQUENCE emp_no_seqence;
CREATE SEQUENCE emp_no_seqence
INCREMENT BY 0001
START WITH 1001
MINVALUE 1001
MAXVALUE 9999999;


--1. 사원테이블 
DROP TABLE onemp;
create table OnEmp( -- 사원 테이블
   emp_no varchar2(50) PRIMARY KEY, -- 사원번호, 아이디로 사용
   ptn_no varchar2(30),  --사원직급번호 
   dept_no varchar2(50), --부서번호
   auth_no varchar2(30), --권한번호 
   emp_pass varchar2(50), -- 비밀번호
   emp_korname varchar2(50), -- 한글이름
   emp_engname varchar2(50), -- 영어이름
   emp_email varchar2(100), -- 이메일
   emp_hiredte DATE, -- 입사일
   emp_birth DATE, -- 생년월일
   emp_content varchar2(300), -- 소개
   emp_profile varchar2(100), -- 증명사진 
   emp_tel varchar2(100), -- 전화번호
   emp_addr varchar2(100), -- 주소
   emp_workst varchar2(50) NOT NULL CHECK(emp_workst IN ('재직','퇴직','휴직')), -- 재직상태
   emp_workchdte DATE -- 재직상태변경일
);
/*
SELECT * 
FROM onemp
WHERE emp_no=#{emp_no}
AND emp_pass=#{emp_pass}

dao ==> mapper ==> service ==> controller



*/

SELECT * FROM onemp;
SELECT * FROM OnEmp_Auth;
SELECT * FROM ONEMP_DEPT;
SELECT * FROM ONEMP_POSITION;

DELETE FROM onemp WHERE emp_korname ='홍길동';

-- SELECT onemp.auth_no, OnEmp_Auth.auth_name FROM onemp --
-- INNER JOIN OnEmp_Auth ON ONEMP.AUTH_NO = OnEmp_Auth.auth_name; --

--SELECT onemp.auth_no FROM onemp --
-- INNER JOIN OnEmp_Auth ON OnEmp_Auth.auth_name = ONEMP.AUTH_NO; --

SELECT onemp.auth_no, OnEmp_Auth.AUTH_NO FROM onemp
INNER JOIN OnEmp_Auth ON ONEMP.AUTH_NO = OnEmp_Auth.AUTH_NO; 

--SELECT OnEmp_Auth.AUTH_NAME, onemp.auth_no FROM OnEmp_Auth--
--INNER JOIN onemp ON OnEmp_Auth.AUTH_NAME = onemp.auth_no;--

--SELECT onemp.AUTH_NO, OnEmp_Auth.AUTH_NAME FROM OnEmp_Auth--
--INNER JOIN onemp ON onemp.auth_no = OnEmp_Auth.AUTH_NAME;--
SELECT EMP_KORNAME ,onemp.auth_no, OnEmp_Auth.AUTH_NO, OnEmp_Auth.AUTH_NAME FROM onemp
INNER JOIN OnEmp_Auth ON ONEMP.AUTH_NO = OnEmp_Auth.AUTH_NO ORDER BY EMP_KORNAME; 

select om.auth_name, o.* ,  
from onemp o, onEmp_auth om
where om.auth_no = o.auth_no 
and emp_no = '1001' and emp_pass = 'zip1234';

--2. 직급테이블 
DROP TABLE OnEmp_position;
create table OnEmp_position( -- 사원_직급
   ptn_no varchar2(10) primary key, -- 사원직급 번호
   ptn_name varchar2(30) -- 사원 직급 이름
);

INSERT INTO OnEmp_position values('p01','사원');
INSERT INTO OnEmp_position values('p02','선임');
INSERT INTO OnEmp_position values('p03','대리');
INSERT INTO OnEmp_position values('p04','팀장');
INSERT INTO OnEmp_position values('p05','과장');
INSERT INTO OnEmp_position values('p06','부장');
INSERT INTO OnEmp_position values('p07','대표');



--3. 부서테이블
DROP TABLE OnEmp_Dept;
create table OnEmp_Dept(
   dept_no varchar2(10) PRIMARY KEY, -- 부서번호
   dept_name varchar2(30), -- 부서이름
   dept_loc varchar2(50) -- 부서 위치
);
INSERT INTO OnEmp_Dept values('d01','백엔드개발팀1','서초');
INSERT INTO OnEmp_Dept values('d02','백엔드개발팀2','판교');
INSERT INTO OnEmp_Dept values('d03','UI개발팀1','서초');
INSERT INTO OnEmp_Dept values('d04','UI개발팀2','판교');
INSERT INTO OnEmp_Dept values('d05','인사관리팀','서초');


--4. 권한테이블 
DROP TABLE OnEmp_Auth;
create table OnEmp_Auth( --사원권한 = 직책
   auth_no varchar2(10) PRIMARY KEY, -- 사원 권한번호
   auth_name varchar2(30) -- 사원 권한명
);

INSERT INTO OnEmp_Auth values('a01','pm');
INSERT INTO OnEmp_Auth values('a02','tm');
INSERT INTO OnEmp_Auth values('a03','hr');
INSERT INTO OnEmp_Auth values('a04','ceo');

SELECT * FROM onemp_auth;
SELECT * FROM OnEmp;

-- 10개 


--5. 사원 값 
insert into OnEmp values (emp_no_seqence.nextval,'p01','d01','a01','zip1234','이정호', 'Lee Jungho','Jungho@gmail.com','2007/02/25', '1980/05/28', '2009년 J프로젝트 PM','img0001.JPG', '01088445656', '서울특별시 종로구', '재직', '2007/02/25');
insert into OnEmp values (emp_no_seqence.nextval,'p05','d05','a03','tjdnf12','김서연', 'Kim Seoyeon','kimhun33@onbiz.com','2005/02/22', '1978/02/04', 'HR 인사팀','img1125.JPG', '01011111313', '서울특별시 중구', '재직', '2005/02/22');
insert into OnEmp values (emp_no_seqence.nextval,'p01','d01','a02','52522013','이하윤', 'Lee Hayoon','55leaun@onbiz.com','2013/08/25', '1990/11/24', '2013년 H프로젝트 TM','img0002.JPG', '01013134545', '서울특별시 성동구', '재직', '2013/08/25');
insert into OnEmp values (emp_no_seqence.nextval,'p04','d01','a01','8282zzzz','박예린', 'Park Yerin','park14@onbiz.com','2015/02/20', '1992/04/20', '2015년 T프로젝트 PM','img0003.JPG', '01092828686', '서울특별시 관악구', '재직', '2015/02/20');
insert into OnEmp values (emp_no_seqence.nextval,'p01','d01','a02','soso0701','임소율', 'Lim Soyul','limrim@onbiz.com','2015/02/20', '1991/07/01', '2015년 E프로젝트 TM','img0004.JPG', '01019283333', '서울특별시 관악구', '재직', '207/02/20');
insert into OnEmp values (emp_no_seqence.nextval,'p05','d05','a03','kjsu13','김철수', 'Kim Chulsoo','Chulsoo@gmail.com','2014/08/25', '1989/12/28', '2014년 인사팀 입사','img0005.JPG', '01077778888', '서울특별시 종로구', '재직', '207/02/25');




--백엔드 개발팀 1
insert into OnEmp values (emp_no_seqence.nextval,'p01','d01','a01','komajun','김이준', 'Kim Ajun','Ajun@gmail.com','2015/02/22', '1990/03/15', '2021년 백엔드1팀 입사','img0006.JPG', '01063321275', '서울특별시 중구', '재직', '2021/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p02','d01','a01','parksoyoul','박소율', 'Park soyou','soyou@gmail.com','2015/02/22', '1990/03/15', '2021년 백엔드1팀 입사','img0007.JPG', '01063341675', '서울특별시 중구', '재직', '2021/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p03','d01','a01','kimhayoul','김하율', 'Kim hayoul','hayoul@gmail.com','2015/02/22', '1990/03/15', '2020년 백엔드1팀 입사','img0008.JPG', '01067321675', '서울특별시 중구', '재직', '2021/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p04','d01','a02','madongseok','마동석', 'Ma dongseck','dongseck@gmail.com','2015/02/22', '1989/03/15', '2020년 백엔드1팀 입사','img0009.JPG', '0106321678', '서울특별시 중구', '재직', '2008/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p05','d01','a02','kimjisu','김지수', 'Kim Jisu','Jisu@gmail.com','2019/02/22', '1970/03/15', '2019년 백엔드1팀 입사','img0010.JPG', '01063321671', '서울특별시 중구', '재직', '2008/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p06','d01','a02','komjiu','김지우', 'Kim jeeu','jeeu@gmail.com','2000/02/22', '1960/03/15', '2019년 백엔드1팀 입사','img0011.JPG', '01063321645', '서울특별시 중구', '재직', '2008/07/12');


--백엔드개발팀 2
insert into OnEmp values (emp_no_seqence.nextval,'p01','d02','a01','kimjina','김지나', 'Kim jina','jina@gmail.com','2015/02/22', '1990/03/15', '2020년 백엔드2팀 입사','img0012.JPG', '01073321671', '서울특별시 중구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p02','d02','a01','kimena','김이나', 'kim ena ','ena@gmail.com','2015/02/22', '1990/03/15', '2020년 백엔드2팀 입사','img0013.JPG', '01073321672', '서울특별시 중구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p03','d02','a01','seockjun','윤석준', 'Yoon seockjun','seockjun@gmail.com','2015/02/22', '1990/03/15', '2020년 백엔드2팀 입사','img0014.JPG', '01073321673', '서울특별시 중구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p04','d02','a02','aramyoun','윤아람', 'Yoon aram','aram@gmail.com','2015/02/22', '1990/03/15', '2007년 백엔드2팀 입사','img0015.JPG', '01073321674', '서울특별시 성동구', '재직', '2007/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p05','d02','a02','scikyeaol','윤석열', 'Yoon Seokyeal','Seokyeal@gmail.com','2015/02/22', '1978/03/15', '2007년 백엔드2팀 입사','img0016.JPG', '01073321675', '서울특별시 중구', '재직', '2007/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p06','d02','a02','dongseock','김동석', 'Kim dongseock','dongseock@gmail.com','2005/02/22', '1978/03/15', '2007년 백엔드2팀 입사','img0017.JPG','01073321676', '서울특별시 서초구', '퇴직', '2007/07/12');



--ui개발팀1
insert into OnEmp values (emp_no_seqence.nextval,'p01','d03','a01','kim','김다미', 'Kim dami','dami@gmail.com','2005/02/22', '1990/03/15', '2020년 ui개발1팀 입사','img0018.JPG', '01043321671', '서울특별시 강남구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p02','d03','a01','leedami','이다미', 'Lee dami','dami@gmail.com','2005/02/22', '1990/03/15', '2029년 ui개발1팀 입사','img0019.JPG', '01043321672', '서울특별시 성동구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p03','d03','a01','leeyoungseock','이용석', 'Lee youngseck','youngseck@gmail.com','2005/02/22', '1990/03/15', '2020년 ui개발1팀 입사','img0020.JPG', '01043321673', '서울특별시 강남구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p04','d03','a02','youkyoungwon','유경원', 'Yoo Kungwaon','Kungwaon@gmail.com','2005/02/22', '1978/03/15', '2005년 ui개발1팀 입사','img0021.JPG', '01043321674', '서울특별시 강남구', '재직', '2005/07/12');
--ui개발팀2
insert into OnEmp values (emp_no_seqence.nextval,'p01','d04','a01','leeminsang','이민상', 'Lee Minsang','Minsang@gmail.com','2015/02/22', '1990/03/15', '2021년 ui개발2팀 입사','img0022.JPG', '01023321671', '서울특별시 서초구', '재직', '2021/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p02','d04','a01','komejoon','김이준', 'Kim Eejun','Eejun@gmail.com','2015/02/22', '1990/03/15', '2021년 ui개발2팀 입사','img0023.JPG', '01023321672', '서울특별시 서초구', '재직', '2021/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p03','d04','a01','leejunpark','박이준', 'Park Eejun','Eejun@gmail.com','2015/02/22', '1990/03/15', '2003년 ui개발2팀 입사','img0024.JPG', '01023321673', '서울특별시 서초구', '재직', '2003/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p04','d04','a02','parkarem','윤아름', 'Yoon Aream','Aream@gmail.com','2015/02/22', '1978/03/15', '2007년 ui개발2팀 입사','img0025.JPG', '01023321674', '서울특별시 강동구', '재직', '2007/07/12');


--인사
insert into OnEmp values (emp_no_seqence.nextval,'p01','d05','a03','namgoongmin','남궁민', 'Namg goommin','goommin@gmail.com','2015/02/22', '1990/03/15', '2020년 인사팀 입사','img0026.JPG',' 01053321673', '서울특별시 성동구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p02','d05','a03','parknarea','박나래', 'Park Narea','Narea@gmail.com','2015/02/22', '1990/03/15', '2020년 인사팀 입사','img0027.JPG', '01053321672', '서울특별시 성동구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p03','d05','a03','jisuckjin','지석진', 'Jea Seakjin','Seakjin@gmail.com','2015/02/22', '1990/03/15', '20205년 인사팀 입사','img0028.JPG',' 01053321671', '서울특별시 중랑구', '재직', '2020/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p04','d05','a03','youjeasoeck','유재석', 'Yu jeaseok','jeaseok@gmail.com','2015/02/22', '1990/03/15', '2019년 인사팀 입사','img0029.JPG', '01053321670', '서울특별시 도봉구', '재직', '2019/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p05','d05','a03','hongildong','홍길동', 'hong kildong','kildong@gmail.com','2015/02/22', '1978/03/15', '2018년 인사팀 입사','img0030.JPG','01053321675', '서울특별시 도봉구', '재직', '2018/07/12');
insert into OnEmp values (emp_no_seqence.nextval,'p06','d05','a03','leekilldong','이길동', 'Lee kildong','kildong@gmail.com','2005/02/22', '2008/03/15', '2017년 인사팀 입사','img0031.JPG',' 01053321674', '서울특별시 도봉구', '재직', '2017/07/12');
