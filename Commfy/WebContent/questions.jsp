<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

질문입니다.

1. 게시글 보기에서 
 세션에 접속 되어있는 아이디가 글쓴이와 같을 때만 글수정, 삭제 가능하게.
(세션의 아이디를 어찌 받아 올수 있나?)

2. 마이페이지에서
 세션에 접속되어있는 아이디로 내정보 찾아가서 수정하기 어떻게?  
 

해야할것들

1. 이벤트 상세보기 만들기 [완료]
2.조회수 올리기 (작성시에 조회수 0, 참여인원 0디폴트로 들어감.)** [완료]
3.게시판 공개 대상 정하기.(이것도 세션을 사용하는것. 백퍼 100% ~ 0% 모두)
4. 게시판 보기 정하기 (나랑 같은 섬사람, 나랑 같은 마을 사람(mbti))
5. 로그인시, 00마을 사람 뜨는거. 어떻게 해야하는지 확인. dao 조인일것같음.
   dao 소속찾기. 멤버에 mbticode가 mbtitown에 mbti 코드랑 같을때 
   town 정보 가져오기. 쉼표로 구분된것들도 가져올수있나? 
   
3.참가 누를시 1+ 올라가게, 최대인원보다 적을때까지만. (기능넣기! 서블릿해서)

<!-- //		누르면 참가하기 하나 늘려서 dao에서 join 버튼으로 돌린다. 
	//  이미 참가하지 않은 사람만 가능, 디비에 저장?
	//  참가한 사람은 참석 불가. 디비에서 지움? 
	// 
	//여기컨트롤러로 와. board에서 1추하가는데 최대 인원 밑으로만,
	
	//멤버에 참가 이벤트로 저장하는게 좋을것 같넹.
	//멤버에 참가한 postid를 넣었다 뺏다.
	//참가버튼 누리면 멤버의 참여이벤트 컬럼에서 참석했다가 지워짐.
		//쉼표로 여러개 가능?
	//멤버 테이블에 event 컬럼 설정해야할것같음 
	 -->
4.mbti관리, 수정페이지 만들기, 딜리트나 크리에이트 없음. 워스트매치 안가져와지는 이유?
5. 
5.매칭보기 (내 세션 mbti로 어울리는 매칭 봄. 관심사로도 커뮤니티 추천.)

1.로고 클릭시 메인페이지로
2.마이 페이지 만들기 
3.열람 정보 수정하기 
4.쉼표로 구분되어 있는 것들 따로 때어서 보기  !!!!!!!!!!!


2.지도 보여주기 (사람수만큼 배열로)
3.지도 누르면 안에 마을들 보여주고 각 마을에 집 갯수 보이기 (사람수 많큼 배열로)
4. 집 위에 후버하면 그 집에 사는 사람 정보 보여줌. 
5. 집이 3개 모이면 길드됨(이것은 나중에)


query 문  보더 관련 ...
CREATE TABLE board (
       postid               number NOT NULL primary key,
       posttitle            VARCHAR(100) NOT NULL,
       postrange            VARCHAR(100),
       postwriter           VARCHAR(30) NOT NULL,
       postdate             DATE NOT NULL,
       postarea             VARCHAR(30),
       postcontent          VARCHAR(2000),
       
       postcategory         VARCHAR(50),
       posthit              number default 0,
       
       eventtitle           varchar(50),
       eventplace           VARCHAR(50),
       eventdate            DATE,
       eventtime            VarCHAR(20),
       eventmin             number,
       eventmax             number,
       eventfee             number default 0,
       interest             VARCHAR(50),
       interestsm           VARCHAR(50),
       eventjoin            number default 1
);

drop table board;

Create Table project (
    protitle
    promanager
--경력직 뽑으면 직업 선택
--신규도 가능 뽑으면 mbti
-
     

);
select * from board;
drop sequence po_seq;
create sequence po_seq increment by 1 start with 1 minvalue 1 nocycle;
--시퀸스 

drop table board;

INSERT into board 
VALUES(
po_SEQ.NEXTVAL,--postid
'연말 언택트 모임 해리포터 시리즈 릴레이 모집합니다', --posttitle
'전체', --postrange
'rachel@gmail.com', --postwriter
'2020-12-29', --postdate
'대구',--postarea
'집콕의 우울함을 해리포터 시리즈로 함께 날려버리실 분들 모집합니다.',--postcontent
'언택트모임',--카테고리
'',--hit
'연말 언택트 해리포터 시리즈 릴레이',--eventtitle
'각자 집에서',--eventplace        
'2020-12-31', --eventdate         
'22:00',--eventtime        
'2',--eventmin        
'10',--eventmax     
'',--eventfee  0        
'영화',--interest     
'영화감상',--interestsm
'0'
);
drop table board;
select* from board;
delete from board where postid='1';
commit;




</body>
</html>