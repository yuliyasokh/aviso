--deleting SEQUENCES
DROP SEQUENCE ATTR_SEQ;
DROP SEQUENCE ATTR_GRP_SEQ;
DROP SEQUENCE VERSION_SEQ;
DROP SEQUENCE PHONE_SEQ;
DROP SEQUENCE OBJECT_SEQ;
DROP SEQUENCE OBJECT_PHONE_SEQ;

--creating SEQUENCES
CREATE SEQUENCE ATTR_SEQ 			INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE OBJECT_SEQ 			INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ATTR_GRP_SEQ 		INCREMENT BY 1 START WITH 4000;
CREATE SEQUENCE VERSION_SEQ 		INCREMENT BY 1 START WITH 2000;
CREATE SEQUENCE PHONE_SEQ 			INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE OBJECT_PHONE_SEQ 	INCREMENT BY 1 START WITH 1000;


INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'SRC', '���������', 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'TYP', '���� ��������', 1);	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'DSTR', '������', 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'NRM', '���������� ������', 1);	
	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'AVS', '�����', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 1);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'MKL', '������', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 1);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'SLD', '������', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 1);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'HND', '�������', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 0);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'APP', '���������', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'HSE', '���', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'RM', '�������', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'PLT', '�������', 1);	
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'SVR', '�����������', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 3, 1);	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'PRM', '����������', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 3, 1);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'ONE', '1', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 4, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'TWO', '2', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 4, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'THE', '3', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 4, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'FPLUS', '4+', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 4, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'FPLUS', '4+', 1);	
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 4, 1);

INSERT INTO PHONE(phone_id, phone_num, phone_desc, phone_src_id, phone_date, last_update_date, phone_status)
	VALUES (PHONE_SEQ.NEXTVAL, '0936783813', 'my phone number', null, SYSDATE, 1);

INSERT INTO PHONE(phone_id, phone_num, phone_desc, phone_src_id, phone_date, last_update_date, phone_status)
	VALUES (PHONE_SEQ.NEXTVAL, '0935325514', 'phone number from aviso', 5, SYSDATE, SYSDATE, 1);

INSERT INTO PHONE(phone_id, phone_num, phone_desc, phone_src_id, phone_date, last_update_date, phone_status)
	VALUES (PHONE_SEQ.NEXTVAL, '0675325598', 'phone number from makler', 6, SYSDATE, SYSDATE, 1);


commit;	
	
