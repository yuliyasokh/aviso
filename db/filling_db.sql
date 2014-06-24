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
	VALUES (ATTR_SEQ.NEXTVAL, 'SRC', 'Источники', 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'TYP', 'Типы объектов', 1);	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'DSTR', 'Районы', 1);
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'NRM', 'Количество комнат', 1);	
	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'AVS', 'Авизо', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 1);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'MKL', 'Маклер', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 1);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'SLD', 'Сландо', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 1);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'HND', 'Вручную', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 1, 0);	
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'APP', 'Кваритиры', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'HSE', 'Дом', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'RM', 'Комната', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'PLT', 'Участок', 1);	
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 2, 1);
	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'SVR', 'Суворовский', 1);
INSERT INTO ATTR_GRP(attr_grp_id, attr_id, grp_id, attr_ui_status) 
	VALUES (ATTR_GRP_SEQ.NEXTVAL, ATTR_SEQ.CURRVAL, 3, 1);	
INSERT INTO ATTR_DICTIONARY(attr_id, attr_name, attr_desc, attr_status) 
	VALUES (ATTR_SEQ.NEXTVAL, 'PRM', 'Приморский', 1);
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

commit;	
	
