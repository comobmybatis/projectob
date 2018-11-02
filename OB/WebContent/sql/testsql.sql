--이것은 임시 파일입니다. 테스트용


--ARS(accommodation reservation system) : 숙박예약시스템
--2개의 테이블(게시글, 댓글)
--숙박 테이블(ARS_T)
-- (A_IDX , A_NAME , A_LOCATION , CONTENT ,A_CHECK_IN ,A_CHECK_OUT ,A_COMPANY ,REG_DATE ,A_IMG_NAME ,A_CODE ,HIT )
CREATE TABLE ARS_T (
	A_IDX NUMBER(6) CONSTRAINT ARS_T_PK PRIMARY KEY,  -- id 숙박 인덱스
	A_NAME VARCHAR2(50), --숙소 이름
    A_LOCATION VARCHAR(100), -- 숙소 위치
    CONTENT CLOB, --숙소 설명 CLOB 는 자료형 속성으로 ECLIPSE DB 불러올 resulttType을   String타입과 동일
    A_CHECK_IN DATE, -- 체크인
    A_CHECK_OUT DATE, -- 체크아웃
	A_COMPANY VARCHAR2(20), --숙소 업체이름
	REG_DATE DATE, -- 업체가 ->숙소등록일시
	A_IMG_NAME VARCHAR2(50), --숙소 이미지 파일명
	A_CODE VARCHAR2(20), --관리코드
	HIT NUMBER(4) --조회수

);

--BBS(bulletin board system) : 전자게시판
--2개의 테이블(게시글, 댓글)
--게시글 테이블(BBS_T)
CREATE TABLE BBS_T (
	B_IDX NUMBER(6) CONSTRAINT BBS_T_PK PRIMARY KEY,
	SUBJECT VARCHAR2(50), --글제목
	WRITER VARCHAR2(20), --작성자
	CONTENT CLOB, --글내용
	FILE_NAME VARCHAR2(50), --실제 저장되는 파일명
	ORI_NAME VARCHAR2(50), --원본 파일명
	PWD VARCHAR2(20), --암호
	WRITE_DATE DATE, --작성일시
	IP VARCHAR2(15), --작성자 IP주소
	HIT NUMBER(4) --조회수
);

--게시글에 대한 댓글(COMMENT_T)
CREATE TABLE COMMENT_T (
	C_IDX NUMBER(6) CONSTRAINT COMM_T_PK PRIMARY KEY,
	WRITER VARCHAR2(20),
	CONTENT CLOB,
	PWD VARCHAR2(20),
	WRITE_DATE DATE,
	IP VARCHAR2(15),
	B_IDX NUMBER(6), --게시글 번호
	CONSTRAINT COMM_T_FK FOREIGN KEY (B_IDX) REFERENCES BBS_T(B_IDX)
);

--시퀀스 추가
CREATE SEQUENCE ARS_T_SEQ NOCACHE;
CREATE SEQUENCE BBS_T_SEQ NOCACHE;
CREATE SEQUENCE COMMENT_T_SEQ NOCACHE;

--------------------------------------------
--숙박업소 목록 조회를 위한 샘플 데이타 작성
INSERT INTO ARS_T(A_IDX , A_NAME , A_LOCATION , CONTENT ,A_CHECK_IN ,A_CHECK_OUT ,A_COMPANY ,REG_DATE ,A_IMG_NAME ,A_CODE ,HIT )
VALUES (ars_t_seq.nextval,'AHotel','서울시 마포구 ','깨끗해요',null,null,'sCOMPANY',null,'asd1_zf.jpg','1',0);
INSERT INTO ARS_T(A_IDX , A_NAME , A_LOCATION , CONTENT ,A_CHECK_IN ,A_CHECK_OUT ,A_COMPANY ,REG_DATE ,A_IMG_NAME ,A_CODE ,HIT )
VALUES (ars_t_seq.nextval,'BHotel','서울시 영등포구 ','만족합니다',null,null,'tCOMPANY',null,'asd2_f.jpg','2',0);


--글 목록 조회를 위한 샘플 데이타 작성
-- BBS_T
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트1','테스터','테스트1-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트2','테스터','테스트2-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트3','테스터','테스트3-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트4','테스터','테스트4-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트5','테스터','테스트5-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트6','테스터','테스트6-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트7','테스터','테스트7-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트8','테스터','테스트8-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트9','테스터','테스트9-내용','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '테스트10','테스터','테스트10-내용','','','1234',sysdate,'127.0.0.1',0);
commit;

--글 목록 조회를 위한 샘플 데이타 작성
--- COMMENT_T
INSERT INTO COMMENT_T
VALUES (COMMENT_T_SEQ.NEXTVAL, 'C테스터', 'C-내용1',
        '1234', SYSDATE, '127.0.0.1', 10);
INSERT INTO COMMENT_T
VALUES (COMMENT_T_SEQ.NEXTVAL, 'C테스터', 'C-내용2',
        '1234', SYSDATE, '127.0.0.1', 10); 
INSERT INTO COMMENT_T
VALUES (COMMENT_T_SEQ.NEXTVAL, 'C테스터', 'C-내용3',
        '1234', SYSDATE, '127.0.0.1', 10); 
COMMIT;        




