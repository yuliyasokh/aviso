SET AUTOCOMMIT FALSE
--creating SEQUENCES
CREATE SEQUENCE ATTR_SEQ 			INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE OBJECT_SEQ 			INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ATTR_GRP_SEQ 		INCREMENT BY 1 START WITH 4000;
CREATE SEQUENCE VERSION_SEQ 		INCREMENT BY 1 START WITH 2000;
CREATE SEQUENCE PHONE_SEQ 			INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE OBJECT_PHONE_SEQ 	INCREMENT BY 1 START WITH 1000;


INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR  ATTR_SEQ, 'SRC', 'Источники', 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'TYP', 'Типы объектов', 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status)
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'DSTR', 'Районы', 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'NRM', 'Количество комнат', 1);
	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'AVS', 'Авизо', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 1, 2);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'MKL', 'Маклер', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 1, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'SLD', 'Сладно', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 1, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'HND', 'Не помню что это', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 1, 0);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'APP', 'Кваритира', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'HSE', 'Дом', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'RM', 'Комната', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'PLT', 'Участок', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'SVR', 'Суворовский', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 3, 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'PRM', 'Приморский', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 3, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'ONE', '1', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 4, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'TWO', '2', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 4, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'THE', '3', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 4, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (NEXT VALUE FOR ATTR_SEQ, 'FPLUS', '4+', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (NEXT VALUE FOR ATTR_GRP_SEQ, CURRENT VALUE FOR ATTR_SEQ, 4, 1);
	

INSERT INTO PHONE(phone_id, phone_num, phone_desc, phone_src_id, phone_date, last_update_date, phone_status)
	VALUES (NEXT VALUE FOR PHONE_SEQ, '0936783813', 'my phone number', 1, SYSDATE, SYSDATE, 1);

INSERT INTO PHONE(phone_id, phone_num, phone_desc, phone_src_id, phone_date, last_update_date, phone_status)
	VALUES (NEXT VALUE FOR PHONE_SEQ, '0935325514', 'phone number from aviso', 5, SYSDATE, SYSDATE, 1);

INSERT INTO PHONE(phone_id, phone_num, phone_desc, phone_src_id, phone_date, last_update_date, phone_status)
	VALUES (NEXT VALUE FOR PHONE_SEQ, '0675325598', 'phone number from makler', 6, SYSDATE, SYSDATE, 1);
commit;	
	
