1. �α׸� Ŭ���ϸ� ����ȭ��
   ���� ����ϸ� /guestbook/guestbookWriteForm.jsp
   ���� �����ϸ� /guestbook/guestbookList.jsp

2. ���̺� �ۼ�
create table guestbook(
seq   number primary key,
name  varchar2(30),
email  varchar2(30),
homepage  varchar2(35),
subject  varchar2(500) not null,
content  varchar2(4000) not null,
logtime  date);

3. ������ �ۼ�
create sequence seq_guestbook nocycle nocache;


MVC, �Һ�, ���̹�Ƽ��
1. �۾�����  : work
2. Project : guestbookProject