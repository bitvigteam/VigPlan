CREATE TABLE MEMBER (
  no NUMBER PRIMARY KEY,
  id VARCHAR2(30) NOT NULL,
  pw VARCHAR2(100) NOT NULL,
  nickname VARCHAR2(30) NOT NULL,
  email VARCHAR2(128) NOT NULL,
  regdate date default sysdate);
  
CREATE SEQUENCE seq_member_pk
  START WITH 1
  INCREMENT BY 1;