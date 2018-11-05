
----------------------------------------------------------------------------------------------------------
-- ������
-------------------------------

CREATE SEQUENCE obhotel_user_seq START WITH 2 INCREMENT BY 1;
CREATE SEQUENCE obhotel_admin_seq START WITH 2 INCREMENT BY 1;
CREATE SEQUENCE obhotel_board_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE obhotel_board_file_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE obhotel_board_reply_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE obhotel_room_type_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE obhotel_room_file_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE obhotel_room_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE obhotel_room_eval_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE obhotel_reservation_seq START WITH 1 INCREMENT BY 1;
commit;

----------------------------------------------------------------------------------------------------------
-- �α���
-------------------------------

CREATE TABLE obhotel_user (
	id			NUMBER NOT NULL,		-- ����� ������ȣ
	account		VARCHAR2(20) NOT NULL,	-- ������
	password	VARCHAR2(20) NOT NULL,	-- ��й�ȣ
	nickname	VARCHAR2(20) NOT NULL,	-- ����ڸ�
	birthday	DATE NOT NULL,			-- ����
	zipcode		VARCHAR(5) NOT NULL,	-- �����ȣ
	address1	VARCHAR2(200) NOT NULL,	-- �ּ�1  (�����) // (���ֽ�) // (�λ�)
	address2	VARCHAR2(200) NOT NULL,	-- �ּ�2  ������ ~~~~
	email		VARCHAR2(80) NOT NULL,	-- �̸��� (FIXME: ���� ���� �ʿ�)
	e_confirm	NUMBER(1) NOT NULL,		-- �̸��� �ҽ� ���� ����  // �̺�Ʈ �ҽ� ���� ����
	tel			VARCHAR(11) NOT NULL,	-- ����ó
	CONSTRAINT obhotel_user_pk PRIMARY KEY (id)  -- obhotel_user_pk ��� �̸����� id�� primary key�� ����
);

-------------------------------
-- ������ ���
-------------------------------

CREATE TABLE obhotel_admin (
	id			NUMBER NOT NULL,		-- ������ ������ȣ
	user_id		NUMBER NOT NULL,		-- ����� ������ȣ
	lv			NUMBER NOT NULL,		-- ������ ����
	CONSTRAINT obhotel_admin_pk PRIMARY KEY (id), --obhotel_admin_pk��� ��Ī���� id�� �����̸Ӹ�Ű�� ����
	CONSTRAINT obhotel_admin_user_id_fk FOREIGN KEY (user_id) REFERENCES obhotel_user (id) 
    -- obhotel_admin_user_id_fk ��� ��Ī���� �ܷ�Ű ���� (obhotel_user�� id�� �����ϸ�)
);

-------------------------------
-- ���� ����
-------------------------------

INSERT INTO obhotel_user VALUES (1, 'admin', '1234', 'admin', sysdate, '12345', '�����', '������ ���굿', 'admin@obhotel.com', 0, '01012345678');
INSERT INTO obhotel_admin VALUES (1, 1, 1);

-- INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, '���̵�', '��й�ȣ', '�г���', '����', '�����ȣ', '�ּ�1', '�ּ�2', '�̸���', ���ŵ���0/1, '����ó 00000000000');
-- INSERT INTO obhotel_admin VALUES (obhotel_admin_seq.nextval, ����ڰ�����ȣ, �����ڷ���);

INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user1', '1234', '�����1', '99/2/1', 23456, '�ּ�x1', '�ּ�1', 'user1@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user2', '1234', '�����2', '99/3/1', 46912, '�ּ�x2', '�ּ�2', 'user2@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user3', '1234', '�����3', '99/4/1', 70368, '�ּ�x3', '�ּ�3', 'user3@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user4', '1234', '�����4', '99/5/1', 93824, '�ּ�x4', '�ּ�4', 'user4@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user5', '1234', '�����5', '99/6/1', 17280, '�ּ�x5', '�ּ�5', 'user5@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user6', '1234', '�����6', '99/7/1', 40736, '�ּ�x6', '�ּ�6', 'user6@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user7', '1234', '�����7', '99/8/1', 64192, '�ּ�x7', '�ּ�7', 'user7@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user8', '1234', '�����8', '99/9/1', 87648, '�ּ�x8', '�ּ�8', 'user8@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user9', '1234', '�����9', '99/10/1', 11104, '�ּ�x9', '�ּ�9', 'user9@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user10', '1234', '�����10', '99/11/1', 34560, '�ּ�x10', '�ּ�10', 'user10@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user11', '1234', '�����11', '99/1/1', 58016, '�ּ�x11', '�ּ�11', 'user11@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user12', '1234', '�����12', '99/2/1', 81472, '�ּ�x12', '�ּ�12', 'user12@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user13', '1234', '�����13', '99/3/1', 4928, '�ּ�x13', '�ּ�13', 'user13@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user14', '1234', '�����14', '99/4/1', 28384, '�ּ�x14', '�ּ�14', 'user14@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user15', '1234', '�����15', '99/5/1', 51840, '�ּ�x15', '�ּ�15', 'user15@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user16', '1234', '�����16', '99/6/1', 75296, '�ּ�x16', '�ּ�16', 'user16@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user17', '1234', '�����17', '99/7/1', 98752, '�ּ�x17', '�ּ�17', 'user17@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user18', '1234', '�����18', '99/8/1', 22208, '�ּ�x18', '�ּ�18', 'user18@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user19', '1234', '�����19', '99/9/1', 45664, '�ּ�x19', '�ּ�19', 'user19@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user20', '1234', '�����20', '99/10/1', 69120, '�ּ�x20', '�ּ�20', 'user20@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user21', '1234', '�����21', '99/11/1', 92576, '�ּ�x21', '�ּ�21', 'user21@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user22', '1234', '�����22', '99/1/1', 16032, '�ּ�x22', '�ּ�22', 'user22@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user23', '1234', '�����23', '99/2/1', 39488, '�ּ�x23', '�ּ�23', 'user23@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user24', '1234', '�����24', '99/3/1', 62944, '�ּ�x24', '�ּ�24', 'user24@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user25', '1234', '�����25', '99/4/1', 86400, '�ּ�x25', '�ּ�25', 'user25@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user26', '1234', '�����26', '99/5/1', 9856, '�ּ�x26', '�ּ�26', 'user26@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user27', '1234', '�����27', '99/6/1', 33312, '�ּ�x27', '�ּ�27', 'user27@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user28', '1234', '�����28', '99/7/1', 56768, '�ּ�x28', '�ּ�28', 'user28@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user29', '1234', '�����29', '99/8/1', 80224, '�ּ�x29', '�ּ�29', 'user29@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user30', '1234', '�����30', '99/9/1', 3680, '�ּ�x30', '�ּ�30', 'user30@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user31', '1234', '�����31', '99/10/1', 27136, '�ּ�x31', '�ּ�31', 'user31@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user32', '1234', '�����32', '99/11/1', 50592, '�ּ�x32', '�ּ�32', 'user32@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user33', '1234', '�����33', '99/1/1', 74048, '�ּ�x33', '�ּ�33', 'user33@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user34', '1234', '�����34', '99/2/1', 97504, '�ּ�x34', '�ּ�34', 'user34@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user35', '1234', '�����35', '99/3/1', 20960, '�ּ�x35', '�ּ�35', 'user35@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user36', '1234', '�����36', '99/4/1', 44416, '�ּ�x36', '�ּ�36', 'user36@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user37', '1234', '�����37', '99/5/1', 67872, '�ּ�x37', '�ּ�37', 'user37@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user38', '1234', '�����38', '99/6/1', 91328, '�ּ�x38', '�ּ�38', 'user38@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user39', '1234', '�����39', '99/7/1', 14784, '�ּ�x39', '�ּ�39', 'user39@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user40', '1234', '�����40', '99/8/1', 38240, '�ּ�x40', '�ּ�40', 'user40@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user41', '1234', '�����41', '99/9/1', 61696, '�ּ�x41', '�ּ�41', 'user41@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user42', '1234', '�����42', '99/10/1', 85152, '�ּ�x42', '�ּ�42', 'user42@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user43', '1234', '�����43', '99/11/1', 8608, '�ּ�x43', '�ּ�43', 'user43@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user44', '1234', '�����44', '99/1/1', 32064, '�ּ�x44', '�ּ�44', 'user44@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user45', '1234', '�����45', '99/2/1', 55520, '�ּ�x45', '�ּ�45', 'user45@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user46', '1234', '�����46', '99/3/1', 78976, '�ּ�x46', '�ּ�46', 'user46@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user47', '1234', '�����47', '99/4/1', 2432, '�ּ�x47', '�ּ�47', 'user47@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user48', '1234', '�����48', '99/5/1', 25888, '�ּ�x48', '�ּ�48', 'user48@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user49', '1234', '�����49', '99/6/1', 49344, '�ּ�x49', '�ּ�49', 'user49@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user50', '1234', '�����50', '99/7/1', 72800, '�ּ�x50', '�ּ�50', 'user50@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user51', '1234', '�����51', '99/8/1', 96256, '�ּ�x51', '�ּ�51', 'user51@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user52', '1234', '�����52', '99/9/1', 19712, '�ּ�x52', '�ּ�52', 'user52@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user53', '1234', '�����53', '99/10/1', 43168, '�ּ�x53', '�ּ�53', 'user53@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user54', '1234', '�����54', '99/11/1', 66624, '�ּ�x54', '�ּ�54', 'user54@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user55', '1234', '�����55', '99/1/1', 90080, '�ּ�x55', '�ּ�55', 'user55@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user56', '1234', '�����56', '99/2/1', 13536, '�ּ�x56', '�ּ�56', 'user56@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user57', '1234', '�����57', '99/3/1', 36992, '�ּ�x57', '�ּ�57', 'user57@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user58', '1234', '�����58', '99/4/1', 60448, '�ּ�x58', '�ּ�58', 'user58@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user59', '1234', '�����59', '99/5/1', 83904, '�ּ�x59', '�ּ�59', 'user59@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user60', '1234', '�����60', '99/6/1', 7360, '�ּ�x60', '�ּ�60', 'user60@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user61', '1234', '�����61', '99/7/1', 30816, '�ּ�x61', '�ּ�61', 'user61@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user62', '1234', '�����62', '99/8/1', 54272, '�ּ�x62', '�ּ�62', 'user62@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user63', '1234', '�����63', '99/9/1', 77728, '�ּ�x63', '�ּ�63', 'user63@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user64', '1234', '�����64', '99/10/1', 1184, '�ּ�x64', '�ּ�64', 'user64@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user65', '1234', '�����65', '99/11/1', 24640, '�ּ�x65', '�ּ�65', 'user65@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user66', '1234', '�����66', '99/1/1', 48096, '�ּ�x66', '�ּ�66', 'user66@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user67', '1234', '�����67', '99/2/1', 71552, '�ּ�x67', '�ּ�67', 'user67@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user68', '1234', '�����68', '99/3/1', 95008, '�ּ�x68', '�ּ�68', 'user68@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user69', '1234', '�����69', '99/4/1', 18464, '�ּ�x69', '�ּ�69', 'user69@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user70', '1234', '�����70', '99/5/1', 41920, '�ּ�x70', '�ּ�70', 'user70@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user71', '1234', '�����71', '99/6/1', 65376, '�ּ�x71', '�ּ�71', 'user71@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user72', '1234', '�����72', '99/7/1', 88832, '�ּ�x72', '�ּ�72', 'user72@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user73', '1234', '�����73', '99/8/1', 12288, '�ּ�x73', '�ּ�73', 'user73@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user74', '1234', '�����74', '99/9/1', 35744, '�ּ�x74', '�ּ�74', 'user74@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user75', '1234', '�����75', '99/10/1', 59200, '�ּ�x75', '�ּ�75', 'user75@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user76', '1234', '�����76', '99/11/1', 82656, '�ּ�x76', '�ּ�76', 'user76@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user77', '1234', '�����77', '99/1/1', 6112, '�ּ�x77', '�ּ�77', 'user77@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user78', '1234', '�����78', '99/2/1', 29568, '�ּ�x78', '�ּ�78', 'user78@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user79', '1234', '�����79', '99/3/1', 53024, '�ּ�x79', '�ּ�79', 'user79@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user80', '1234', '�����80', '99/4/1', 76480, '�ּ�x80', '�ּ�80', 'user80@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user81', '1234', '�����81', '99/5/1', 99936, '�ּ�x81', '�ּ�81', 'user81@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user82', '1234', '�����82', '99/6/1', 23392, '�ּ�x82', '�ּ�82', 'user82@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user83', '1234', '�����83', '99/7/1', 46848, '�ּ�x83', '�ּ�83', 'user83@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user84', '1234', '�����84', '99/8/1', 70304, '�ּ�x84', '�ּ�84', 'user84@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user85', '1234', '�����85', '99/9/1', 93760, '�ּ�x85', '�ּ�85', 'user85@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user86', '1234', '�����86', '99/10/1', 17216, '�ּ�x86', '�ּ�86', 'user86@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user87', '1234', '�����87', '99/11/1', 40672, '�ּ�x87', '�ּ�87', 'user87@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user88', '1234', '�����88', '99/1/1', 64128, '�ּ�x88', '�ּ�88', 'user88@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user89', '1234', '�����89', '99/2/1', 87584, '�ּ�x89', '�ּ�89', 'user89@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user90', '1234', '�����90', '99/3/1', 11040, '�ּ�x90', '�ּ�90', 'user90@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user91', '1234', '�����91', '99/4/1', 34496, '�ּ�x91', '�ּ�91', 'user91@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user92', '1234', '�����92', '99/5/1', 57952, '�ּ�x92', '�ּ�92', 'user92@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user93', '1234', '�����93', '99/6/1', 81408, '�ּ�x93', '�ּ�93', 'user93@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user94', '1234', '�����94', '99/7/1', 4864, '�ּ�x94', '�ּ�94', 'user94@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user95', '1234', '�����95', '99/8/1', 28320, '�ּ�x95', '�ּ�95', 'user95@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user96', '1234', '�����96', '99/9/1', 51776, '�ּ�x96', '�ּ�96', 'user96@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user97', '1234', '�����97', '99/10/1', 75232, '�ּ�x97', '�ּ�97', 'user97@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user98', '1234', '�����98', '99/11/1', 98688, '�ּ�x98', '�ּ�98', 'user98@gmail.com', 0, '00000000011');
INSERT INTO obhotel_user VALUES (obhotel_user_seq.nextval, 'user99', '1234', '�����99', '99/1/1', 22144, '�ּ�x99', '�ּ�99', 'user99@gmail.com', 0, '00000000011');
commit;


----------------------------------------------------------------------------------------------------------
-- ��������, �̺�Ʈ (�Խ���)
-------------------------------

CREATE TABLE obhotel_board (
	id			NUMBER NOT NULL,		-- �Խù� ������ȣ
	user_id		NUMBER NOT NULL,		-- �ۼ��� ������ȣ
	type		NUMBER NOT NULL,		-- �Խù� ���� (0:�߸��Ȱ�/1:��������/2:�̺�Ʈ/3:����/4:ex-�����̾��ı� )
	title		VARCHAR2(40) NOT NULL,	-- ����
	content		VARCHAR2(400) NOT NULL,	-- ����
	write_date	DATE NOT NULL,			-- �ۼ���
	read_count	NUMBER NOT NULL,		-- ��ȸ��
    --- �Խ��� db���� ȸ�� ���� password�� ���� �ȵɵ� �� ���ǿ� �޾� ��ġ�ϴ��� �� ��
	
	CONSTRAINT obhotel_board_pk PRIMARY KEY (id),
	CONSTRAINT obhotel_board_user_id_fk FOREIGN KEY (user_id) REFERENCES obhotel_user (id)
    -- update insert --> vo.get �ؼ� �ܷ�Ű �� �� �־��ֱ�  // �����Ҷ��� �Խù� ������ȣ id ���� ���쵵��
    --�����ϰ� id�� �����̸Ӹ�Ű�� ����
    --obhotel_user ���̵� �����Ͽ� user_id
);

-- INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, ...);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 2, '�̺�Ʈ����1', '�̺�Ʈ����1', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 2, '�̺�Ʈ����2', '�̺�Ʈ����2', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 2, '�̺�Ʈ����3', '�̺�Ʈ����3', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 2, '�̺�Ʈ����4', '�̺�Ʈ����4', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 2, '�̺�Ʈ����5', '�̺�Ʈ����5', sysdate, 0);



INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 1, '������������1', '�������׳���1', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 1, '������������2', '�������׳���2', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 1, '������������3', '�������׳���3', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 1, '������������4', '�������׳���4', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 1, '������������5', '�������׳���5', sysdate, 0);



INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������1', '���ϳ���1', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������3', '���ϳ���2', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������3', '���ϳ���3', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������4', '���ϳ���4', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������5', '���ϳ���5', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������6', '���ϳ���6', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������7', '���ϳ���7', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������8', '���ϳ���8', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������9', '���ϳ���9', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������10', '���ϳ���10', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������11', '���ϳ���11', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������012', '���ϳ���012', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������013', '���ϳ���013', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������014', '���ϳ���014', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������015', '���ϳ���015', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������016', '���ϳ���016', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������017', '���ϳ���017', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������018', '���ϳ���018', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������019', '���ϳ���019', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������020', '���ϳ���020', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������021', '���ϳ���021', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������022', '���ϳ���022', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������023', '���ϳ���023', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������024', '���ϳ���024', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������025', '���ϳ���025', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������026', '���ϳ���026', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������027', '���ϳ���027', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������028', '���ϳ���028', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������029', '���ϳ���029', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������030', '���ϳ���030', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������031', '���ϳ���031', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������032', '���ϳ���032', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������033', '���ϳ���033', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������034', '���ϳ���034', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������035', '���ϳ���035', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������036', '���ϳ���036', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������037', '���ϳ���037', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������038', '���ϳ���038', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������039', '���ϳ���039', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������040', '���ϳ���040', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������041', '���ϳ���041', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������042', '���ϳ���042', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������043', '���ϳ���043', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������044', '���ϳ���044', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������045', '���ϳ���045', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������046', '���ϳ���046', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������047', '���ϳ���047', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������048', '���ϳ���048', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������049', '���ϳ���049', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������050', '���ϳ���050', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������051', '���ϳ���051', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������052', '���ϳ���052', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������053', '���ϳ���053', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������054', '���ϳ���054', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������055', '���ϳ���055', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������056', '���ϳ���056', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������057', '���ϳ���057', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������058', '���ϳ���058', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������059', '���ϳ���059', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������060', '���ϳ���060', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������061', '���ϳ���061', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������062', '���ϳ���062', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������063', '���ϳ���063', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������064', '���ϳ���064', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������065', '���ϳ���065', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������066', '���ϳ���066', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������067', '���ϳ���067', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������068', '���ϳ���068', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������069', '���ϳ���069', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������070', '���ϳ���070', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������071', '���ϳ���071', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������072', '���ϳ���072', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������073', '���ϳ���073', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������074', '���ϳ���074', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������075', '���ϳ���075', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������076', '���ϳ���076', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������077', '���ϳ���077', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������078', '���ϳ���078', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������079', '���ϳ���079', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������080', '���ϳ���080', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������081', '���ϳ���081', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������082', '���ϳ���082', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������083', '���ϳ���083', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������084', '���ϳ���084', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������085', '���ϳ���085', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������086', '���ϳ���086', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������087', '���ϳ���087', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������088', '���ϳ���088', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������089', '���ϳ���089', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������090', '���ϳ���090', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������091', '���ϳ���091', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������092', '���ϳ���092', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������093', '���ϳ���093', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������094', '���ϳ���094', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������095', '���ϳ���095', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������096', '���ϳ���096', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������097', '���ϳ���097', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������098', '���ϳ���098', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������099', '���ϳ���099', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������100', '���ϳ���100', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������101', '���ϳ���101', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������102', '���ϳ���102', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������103', '���ϳ���103', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������104', '���ϳ���104', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������105', '���ϳ���105', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������106', '���ϳ���106', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������107', '���ϳ���107', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������108', '���ϳ���108', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������109', '���ϳ���109', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������110', '���ϳ���110', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������111', '���ϳ���111', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������112', '���ϳ���112', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������113', '���ϳ���113', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������114', '���ϳ���114', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������115', '���ϳ���115', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������116', '���ϳ���116', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������117', '���ϳ���117', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������118', '���ϳ���118', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������119', '���ϳ���119', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������120', '���ϳ���120', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������121', '���ϳ���121', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������122', '���ϳ���122', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������123', '���ϳ���123', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������124', '���ϳ���124', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������125', '���ϳ���125', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������126', '���ϳ���126', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������127', '���ϳ���127', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������128', '���ϳ���128', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������129', '���ϳ���129', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������130', '���ϳ���130', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������131', '���ϳ���131', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������132', '���ϳ���132', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������133', '���ϳ���133', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������134', '���ϳ���134', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������135', '���ϳ���135', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������136', '���ϳ���136', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������137', '���ϳ���137', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������138', '���ϳ���138', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������139', '���ϳ���139', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������140', '���ϳ���140', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������141', '���ϳ���141', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������142', '���ϳ���142', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������143', '���ϳ���143', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������144', '���ϳ���144', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������145', '���ϳ���145', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������146', '���ϳ���146', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������147', '���ϳ���147', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������148', '���ϳ���148', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������149', '���ϳ���149', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������150', '���ϳ���150', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������151', '���ϳ���151', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������152', '���ϳ���152', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������153', '���ϳ���153', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������154', '���ϳ���154', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������155', '���ϳ���155', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������156', '���ϳ���156', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������157', '���ϳ���157', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������158', '���ϳ���158', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������159', '���ϳ���159', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������160', '���ϳ���160', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������161', '���ϳ���161', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������162', '���ϳ���162', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������163', '���ϳ���163', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������164', '���ϳ���164', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������165', '���ϳ���165', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������166', '���ϳ���166', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������167', '���ϳ���167', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������168', '���ϳ���168', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������169', '���ϳ���169', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������170', '���ϳ���170', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������171', '���ϳ���171', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������172', '���ϳ���172', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������173', '���ϳ���173', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������174', '���ϳ���174', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������175', '���ϳ���175', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������176', '���ϳ���176', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������177', '���ϳ���177', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������178', '���ϳ���178', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������179', '���ϳ���179', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������180', '���ϳ���180', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������181', '���ϳ���181', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������182', '���ϳ���182', sysdate, 0);
INSERT INTO obhotel_board VALUES (obhotel_board_seq.nextval, 1, 3, '��������183', '���ϳ���183', sysdate, 0);




commit;





-------------------------------
-- �Խ��� ÷������
-------------------------------

CREATE TABLE obhotel_board_file (
	id			NUMBER NOT NULL,		-- ÷������ ������ȣ
	board_id	NUMBER NOT NULL,		-- �Խù� ������ȣ
	filename		VARCHAR2(256) NOT NULL,	-- ���ϸ� (SHA-256 ��ȯ�� + Ȯ���� . ���� �� 4�� = 70)
	saved_filename	VARCHAR2(256) NOT NULL,	-- ���ϸ� (SHA-256 ��ȯ�� + Ȯ���� . ���� �� 4�� = 70)
	filesize	NUMBER NOT NULL,		-- ÷������ ũ��
	CONSTRAINT obhotel_board_file_pk PRIMARY KEY (id),
	CONSTRAINT obhotel_board_file_aid_fk FOREIGN KEY (board_id) REFERENCES obhotel_board (id) on delete cascade
    --ON DELETE CASCADE : ���� ���̺��� �����Ͱ� �����Ǿ��� �� �ܷ� Ű ���̺��� �����͵鵵 �ڵ����� ����
    --obhotel_board ���̺� delete from obhotel_borad where id = '5'; �� �ϸ� obhotel_board_file; �� �ִ� id = '5'�� �Բ� ������
    
    --�߰������� : ON UPDATE CASCADE : ���� ���̺��� �����Ͱ� ����Ǿ��� �� �ܷ� Ű ���̺� �ڵ����� ����
    
);


-------------------------------
-- ���� ����
-------------------------------


-- INSERT INTO obhotel_board_file VALUES (obhotel_board_file_seq.nextval, ...);


INSERT INTO obhotel_board_file VALUES (obhotel_board_file_seq.nextval, 1, 'event01.jpg', 'event01.jpg', 248000);
INSERT INTO obhotel_board_file VALUES (obhotel_board_file_seq.nextval, 2, 'event02.jpg', 'event02.jpg', 248000);
INSERT INTO obhotel_board_file VALUES (obhotel_board_file_seq.nextval, 3, 'event03.jpg', 'event03.jpg', 248000);
INSERT INTO obhotel_board_file VALUES (obhotel_board_file_seq.nextval, 4, 'event04.jpg', 'event04.jpg', 248000);
INSERT INTO obhotel_board_file VALUES (obhotel_board_file_seq.nextval, 5, 'event05.jpg', 'event05.jpg', 248000);

commit;


-------------------------------
-- �Խ��� ���
-------------------------------

CREATE TABLE obhotel_board_reply (
	id			NUMBER NOT NULL,		-- ÷������ ������ȣ
	board_id	NUMBER NOT NULL,		-- �Խù� ������ȣ
	user_id		NUMBER NOT NULL,		-- �ۼ��� ������ȣ
	content		VARCHAR2(400) NOT NULL,	-- ����
	write_date	DATE NOT NULL,			-- �ۼ���

	CONSTRAINT obhotel_board_reply_pk PRIMARY KEY (id),
	CONSTRAINT obhotel_board_reply_bid_fk FOREIGN KEY (board_id) REFERENCES obhotel_board (id) on delete cascade,
	CONSTRAINT obhotel_board_reply_uid_fk FOREIGN KEY (user_id) REFERENCES obhotel_user (id) on delete cascade
    --on delete cascade
    --���� �ǹ� obhotel_board (�Խ��ǿ� id, ȸ�� id �� ���������?�ڸ�Ʈ ���̺� �����͵� ��� ����!) 
);


-------------------------------
-- ���� ����
-------------------------------

-- INSERT INTO obhotel_board_reply VALUES (obhotel_board_reply_seq.nextval, 11, 1, '��۳���1', sysdate);

INSERT INTO obhotel_board_reply VALUES (obhotel_board_reply_seq.nextval, 11, 1, '��۳���1', sysdate);





----------------------------------------------------------------------------------------------------------
-- �� ����
-------------------------------

CREATE TABLE obhotel_room_type (
	id			NUMBER NOT NULL,		-- ������ ������ȣ
	type		NUMBER NOT NULL,		-- �� ���� (1:standard/2:deluxe/3:twin-deluxe/4:superior/5:luxury)
	max_pax		NUMBER NOT NULL,		-- ���� ���� �ο�
	cost		NUMBER NOT NULL,		-- 1�� �����
	CONSTRAINT obhotel_room_type PRIMARY KEY (id)
);

-------------------------------
-- �� ���� ÷�� ����
-------------------------------

CREATE TABLE obhotel_room_file (
	id			NUMBER NOT NULL,		-- �� ���� �̹��� ���� ������ȣ
	room_type_id		NUMBER NOT NULL,		-- �� ������ȣ
	filename	VARCHAR2(70) NOT NULL,	-- ���ϸ� (SHA-256 ��ȯ�� + Ȯ���� . ���� �� 4�� = 70)
	CONSTRAINT obhotel_room_file_pk PRIMARY KEY (id),
	CONSTRAINT obhotel_room_file_rtype_id_fk FOREIGN KEY (room_type_id) REFERENCES obhotel_room_type (id) on delete cascade
    --obhotel_room_type ���̺� id(������ ������ȣ)�� �����Ѵ�  ==obhotel_room_type���̺��� (id) ���� ����� obhotel_room_file�� �ִ� ��ġ�ϴ� ������ delet�� ������ ����
    --
);

-------------------------------
-- �� ��Ȳ
-------------------------------
CREATE TABLE obhotel_room (
	id			NUMBER NOT NULL,			-- ��Ȳ ������ȣ
	room_type_id		NUMBER NOT NULL,	-- ������ ������ȣ
	room_num	NUMBER NOT NULL,			-- ȣ��
	CONSTRAINT obhotel_room PRIMARY KEY (id),
	CONSTRAINT obhotel_room_rtype_id_fk FOREIGN KEY (room_type_id) REFERENCES obhotel_room_type (id) on delete cascade
);

-------------------------------
-- �� ��
-------------------------------

CREATE TABLE obhotel_room_eval (
	id			NUMBER NOT NULL,		-- �� �� ������ȣ
	user_id		NUMBER NOT NULL,		-- �ۼ��� ������ȣ
	rate		NUMBER NOT NULL,		-- ���� (������ ������ ���� �ǳ��ϱ�)
	content		VARCHAR2(80) NOT NULL,	-- ������
	write_date	DATE NOT NULL,			-- �ۼ���
	CONSTRAINT obhotel_room_eval_pk PRIMARY KEY (id),
	CONSTRAINT obhotel_room_eval_user_id_fk FOREIGN KEY (user_id) REFERENCES obhotel_user (id) on delete cascade
);

-------------------------------
-- ���� ����
-------------------------------

-- INSERT INTO obhotel_room_type VALUES (obhotel_room_seq_type.nextval, ...);
-- INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, ...);
-- INSERT INTO obhotel_room_eval VALUES (obhotel_room_eval_seq.nextval, ...);

INSERT INTO obhotel_room_type VALUES (obhotel_room_type_seq.nextval, 1,  2, 10);
INSERT INTO obhotel_room_type VALUES (obhotel_room_type_seq.nextval, 2,  4, 20);
INSERT INTO obhotel_room_type VALUES (obhotel_room_type_seq.nextval, 3,  6, 30);
INSERT INTO obhotel_room_type VALUES (obhotel_room_type_seq.nextval, 4,  8, 40);
INSERT INTO obhotel_room_type VALUES (obhotel_room_type_seq.nextval, 5, 10, 50);

INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 1, 'standard1.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 1, 'standard2.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 1, 'standard3.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 2, 'deluxe1.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 2, 'deluxe2.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 2, 'deluxe3.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 3, 'twin-deluxe1.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 3, 'twin-deluxe2.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 3, 'twin-deluxe3.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 4, 'superior1.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 4, 'superior2.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 4, 'superior3.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 5, 'luxury1.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 5, 'luxury2.jpg');
INSERT INTO obhotel_room_file VALUES (obhotel_room_file_seq.nextval, 5, 'luxury3.jpg');


INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 1, 101);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 1, 102);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 1, 103);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 1, 104);

INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 2, 201);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 2, 202);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 2, 203);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 2, 204);

INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 3, 301);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 3, 302);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 3, 303);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 3, 304);

INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 4, 401);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 4, 402);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 4, 403);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 4, 404);

INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 5, 401);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 5, 402);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 5, 403);
INSERT INTO obhotel_room VALUES (obhotel_room_seq.nextval, 5, 404);




commit;




----------------------------------------------------------------------------------------------------------
-- ���� // ���ã�� �����.. eclipse ���� obhotel_reservation �����͸� �Է��ҽ� �߰������� DAO �̿��ؼ� ���¿��� 1,0���� ����. ����X
-- ���ã�� obhotel_room_type ���̺��̶� obhotel_reservation ���ؼ� 1. �����Ͽ� ���� �游 ǥ���ϱ� 
-------------------------------

CREATE TABLE obhotel_reservation (
	id			NUMBER NOT NULL,		-- ���� ������ȣ
	user_id		NUMBER NOT NULL,		-- ����� ������ȣ
	room_id		NUMBER NOT NULL,		-- ������ ������ȣ (����� ������ �� ����)
	s_date		DATE NOT NULL,			-- ���� ������
	e_date		DATE NOT NULL,			-- ���� ������
	r_date		DATE NOT NULL,			-- ������
	pax			NUMBER NOT NULL,		-- �Խ� ���� �ο�
	breakfast	NUMBER(1) NOT NULL,		-- ���� ����
	CONSTRAINT obhotel_reservation_pk PRIMARY KEY (id),
	CONSTRAINT obhotel_reservation_user_id_fk FOREIGN KEY (user_id) REFERENCES obhotel_user (id) on delete cascade,
	CONSTRAINT obhotel_reservation_room_id_fk FOREIGN KEY (room_id) REFERENCES obhotel_room (id) on delete cascade
);

-------------------------------
-- ���� ����
-------------------------------

-- INSERT INTO obhotel_reservation VALUES (obhotel_reservation_seq.nextval, ...);

INSERT INTO obhotel_reservation VALUES (obhotel_reservation_seq.nextval, 1, 1, '2017/01/10', '2017/01/15', sysdate, 2, 1);
INSERT INTO obhotel_reservation VALUES (obhotel_reservation_seq.nextval, 1, 2, '2017/01/20', '2017/01/25', sysdate, 3, 1);
commit;

----------------------------------------------------------------------------------------------------------



