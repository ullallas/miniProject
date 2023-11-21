1. 로그를 클릭하면 메인화면
   방명록 등록하면 /guestbook/guestbookWriteForm.jsp
   방명록 보기하면 /guestbook/guestbookList.jsp

2. 테이블 작성
create table guestbook(
seq   number primary key,
name  varchar2(30),
email  varchar2(30),
homepage  varchar2(35),
subject  varchar2(500) not null,
content  varchar2(4000) not null,
logtime  date);

3. 시퀀스 작성
create sequence seq_guestbook nocycle nocache;


MVC, 롬복, 마이바티스
1. 작업폴더  : work
2. Project : guestbookProject