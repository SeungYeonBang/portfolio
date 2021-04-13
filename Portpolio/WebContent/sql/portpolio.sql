CREATE TABLE member (
    userid  VARCHAR2(20)    PRIMARY key,
    pwd     VARCHAR2(50)    NOT NULL,
    name    VARCHAR2(20)    NOT NULL,
    birth   VARCHAR2(20)    NOT NULL,
    gender  CHAR(1) DEFAULT 'm',
    email   VARCHAR2(50)    NOT NULL,
    nationNum   VARCHAR2(20)    not null,
    phone   CHAR(11)        NOT NULL
);
commit;

CREATE TABLE board(
    num     NUMBER(5)       PRIMARY KEY,
    pwd     VARCHAR2(50)    NOT NULL, 
    name    VARCHAR2(20)    NOT NULL,
    email   VARCHAR2(50)    NOT NULL,
    title   VARCHAR2(50)    not null,
    content VARCHAR2(1000)  not null,
    readcount NUMBER(5)     DEFAULT 0,
    parnetnum NUMBER(5)     DEFAULT 0,
    childnum   NUMBER(5)     DEFAULT 0,
    writedate   date        DEFAULT SYSDATE
);
commit;

create SEQUENCE board_seq start WITH 1 INCREMENT by 1;

insert into member
VALUES ('ryan','fkdldjs1!','라이언','2001-01-15','m','ryan@naver.com','대한민국+82','01012345678');
commit;

INSERT INTO board(num, pwd, name, email, title, content) 
VALUES (BOARD_SEQ.nextval,'fkdldjs1!','라이언','ryan@naver.com','게시글 테스트를 합니다','DB가 성공적으로 연동되었습니다.');
commit;

SELECT
    *
FROM member;

SELECT
    *
FROM board;

