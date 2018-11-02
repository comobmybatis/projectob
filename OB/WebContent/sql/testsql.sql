--�̰��� �ӽ� �����Դϴ�. �׽�Ʈ��


--ARS(accommodation reservation system) : ���ڿ���ý���
--2���� ���̺�(�Խñ�, ���)
--���� ���̺�(ARS_T)
-- (A_IDX , A_NAME , A_LOCATION , CONTENT ,A_CHECK_IN ,A_CHECK_OUT ,A_COMPANY ,REG_DATE ,A_IMG_NAME ,A_CODE ,HIT )
CREATE TABLE ARS_T (
	A_IDX NUMBER(6) CONSTRAINT ARS_T_PK PRIMARY KEY,  -- id ���� �ε���
	A_NAME VARCHAR2(50), --���� �̸�
    A_LOCATION VARCHAR(100), -- ���� ��ġ
    CONTENT CLOB, --���� ���� CLOB �� �ڷ��� �Ӽ����� ECLIPSE DB �ҷ��Ë� resulttType��   StringŸ�԰� ����
    A_CHECK_IN DATE, -- üũ��
    A_CHECK_OUT DATE, -- üũ�ƿ�
	A_COMPANY VARCHAR2(20), --���� ��ü�̸�
	REG_DATE DATE, -- ��ü�� ->���ҵ���Ͻ�
	A_IMG_NAME VARCHAR2(50), --���� �̹��� ���ϸ�
	A_CODE VARCHAR2(20), --�����ڵ�
	HIT NUMBER(4) --��ȸ��

);

--BBS(bulletin board system) : ���ڰԽ���
--2���� ���̺�(�Խñ�, ���)
--�Խñ� ���̺�(BBS_T)
CREATE TABLE BBS_T (
	B_IDX NUMBER(6) CONSTRAINT BBS_T_PK PRIMARY KEY,
	SUBJECT VARCHAR2(50), --������
	WRITER VARCHAR2(20), --�ۼ���
	CONTENT CLOB, --�۳���
	FILE_NAME VARCHAR2(50), --���� ����Ǵ� ���ϸ�
	ORI_NAME VARCHAR2(50), --���� ���ϸ�
	PWD VARCHAR2(20), --��ȣ
	WRITE_DATE DATE, --�ۼ��Ͻ�
	IP VARCHAR2(15), --�ۼ��� IP�ּ�
	HIT NUMBER(4) --��ȸ��
);

--�Խñۿ� ���� ���(COMMENT_T)
CREATE TABLE COMMENT_T (
	C_IDX NUMBER(6) CONSTRAINT COMM_T_PK PRIMARY KEY,
	WRITER VARCHAR2(20),
	CONTENT CLOB,
	PWD VARCHAR2(20),
	WRITE_DATE DATE,
	IP VARCHAR2(15),
	B_IDX NUMBER(6), --�Խñ� ��ȣ
	CONSTRAINT COMM_T_FK FOREIGN KEY (B_IDX) REFERENCES BBS_T(B_IDX)
);

--������ �߰�
CREATE SEQUENCE ARS_T_SEQ NOCACHE;
CREATE SEQUENCE BBS_T_SEQ NOCACHE;
CREATE SEQUENCE COMMENT_T_SEQ NOCACHE;

--------------------------------------------
--���ھ��� ��� ��ȸ�� ���� ���� ����Ÿ �ۼ�
INSERT INTO ARS_T(A_IDX , A_NAME , A_LOCATION , CONTENT ,A_CHECK_IN ,A_CHECK_OUT ,A_COMPANY ,REG_DATE ,A_IMG_NAME ,A_CODE ,HIT )
VALUES (ars_t_seq.nextval,'AHotel','����� ������ ','�����ؿ�',null,null,'sCOMPANY',null,'asd1_zf.jpg','1',0);
INSERT INTO ARS_T(A_IDX , A_NAME , A_LOCATION , CONTENT ,A_CHECK_IN ,A_CHECK_OUT ,A_COMPANY ,REG_DATE ,A_IMG_NAME ,A_CODE ,HIT )
VALUES (ars_t_seq.nextval,'BHotel','����� �������� ','�����մϴ�',null,null,'tCOMPANY',null,'asd2_f.jpg','2',0);


--�� ��� ��ȸ�� ���� ���� ����Ÿ �ۼ�
-- BBS_T
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ1','�׽���','�׽�Ʈ1-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ2','�׽���','�׽�Ʈ2-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ3','�׽���','�׽�Ʈ3-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ4','�׽���','�׽�Ʈ4-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ5','�׽���','�׽�Ʈ5-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ6','�׽���','�׽�Ʈ6-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ7','�׽���','�׽�Ʈ7-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ8','�׽���','�׽�Ʈ8-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ9','�׽���','�׽�Ʈ9-����','','','1234',sysdate,'127.0.0.1',0);
insert into bbs_t 
values (bbs_t_seq.nextval, '�׽�Ʈ10','�׽���','�׽�Ʈ10-����','','','1234',sysdate,'127.0.0.1',0);
commit;

--�� ��� ��ȸ�� ���� ���� ����Ÿ �ۼ�
--- COMMENT_T
INSERT INTO COMMENT_T
VALUES (COMMENT_T_SEQ.NEXTVAL, 'C�׽���', 'C-����1',
        '1234', SYSDATE, '127.0.0.1', 10);
INSERT INTO COMMENT_T
VALUES (COMMENT_T_SEQ.NEXTVAL, 'C�׽���', 'C-����2',
        '1234', SYSDATE, '127.0.0.1', 10); 
INSERT INTO COMMENT_T
VALUES (COMMENT_T_SEQ.NEXTVAL, 'C�׽���', 'C-����3',
        '1234', SYSDATE, '127.0.0.1', 10); 
COMMIT;        




