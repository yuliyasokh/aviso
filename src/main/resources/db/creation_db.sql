CREATE TABLE DUAL(
  SEQ INT
);
--creating tables
CREATE TABLE ATTR_DICTIONARY(  
   attr_id   	NUMERIC (5) 		NOT NULL,
   attr_name 	VARCHAR(20) 	NOT NULL,
   attr_desc 	VARCHAR(50) 	NOT NULL,
   attr_status 	NUMERIC (1) 		NOT NULL
 );
   
 CREATE TABLE ATTR_GRP(  
   attr_grp_id  	NUMERIC (5) NOT NULL,
   attr_id			NUMERIC  (5) ,
   grp_id 			NUMERIC  (5) NOT NULL,
   attr_ui_status 	NUMERIC (1) NOT NULL
 );  
  
CREATE TABLE VERSION(  
   version_id   	NUMERIC (5) 	NOT NULL,
   attr_id 			NUMERIC (5) 	,
   version_date 	DATE 		NOT NULL,
   version_status 	NUMERIC (1) 	NOT NULL
 );  
 
CREATE TABLE PHONE(  
   phone_id   	NUMERIC (10) 		NOT NULL,
   phone_num  	NUMERIC (9) 		NOT NULL,
   phone_desc 	VARCHAR(50) 	NOT NULL,
   phone_src_id NUMERIC (5) 		NOT NULL,
   phone_date 	DATE 			NOT NULL,
   last_update_date DATE        NOT NULL,
   phone_status NUMERIC (1) 		NOT NULL
 );
 
CREATE TABLE OBJECT(  
   object_id   		NUMERIC (10) 		NOT NULL,
   object_type_id  	NUMERIC (5) 		NOT NULL,
   object_dstr_id 	NUMERIC (5) 		NOT NULL,
   object_src_id 	NUMERIC (5) 		NOT NULL,
   object_nr_id   NUMERIC(5)     NOT NULL,
   object_title    VARCHAR(100) 	NOT NULL,
   object_link    VARCHAR(100) 	NOT NULL,
   object_desc 		VARCHAR(300) 	NOT NULL
 ); 
 
 CREATE TABLE OBJECT_PHONE(  
   object_phone_id  NUMERIC (10) NOT NULL,
   object_id  		NUMERIC (10) NOT NULL,
   phone_num 		NUMERIC (9)  NOT NULL
 );
 
--creating primary keys 
ALTER TABLE ATTR_DICTIONARY ADD CONSTRAINT ATTR_DICTIONARY_PKEY PRIMARY KEY (attr_id);
	
ALTER TABLE ATTR_GRP ADD CONSTRAINT ATTR_GRP_PKEY PRIMARY KEY (attr_grp_id);
	
ALTER TABLE VERSION ADD CONSTRAINT VERSION_PKEY PRIMARY KEY (version_id);
	
ALTER TABLE PHONE ADD CONSTRAINT PHONE_ID_PKEY PRIMARY KEY (phone_id);
	
ALTER TABLE OBJECT ADD CONSTRAINT OBJECT_PKEY PRIMARY KEY (object_id);

--creating foreign keys	
ALTER TABLE OBJECT_PHONE ADD CONSTRAINT OBJECT_PHONE_PKEY PRIMARY KEY (object_phone_id); 

ALTER TABLE ATTR_GRP ADD CONSTRAINT attr_id_grp_fkey 
	FOREIGN KEY (attr_id) REFERENCES ATTR_DICTIONARY(attr_id) ON DELETE CASCADE;
	
ALTER TABLE ATTR_GRP ADD CONSTRAINT grp_id_grp_fkey 
	FOREIGN KEY (grp_id) REFERENCES ATTR_DICTIONARY(attr_id) ON DELETE CASCADE;
	
ALTER TABLE VERSION ADD CONSTRAINT attr_id_version_fkey 
	FOREIGN KEY (attr_id) REFERENCES ATTR_DICTIONARY(attr_id) ON DELETE CASCADE;
	
ALTER TABLE PHONE ADD CONSTRAINT phone_src_id_attr_fkey 
	FOREIGN KEY (phone_src_id) REFERENCES ATTR_DICTIONARY(attr_id) ON DELETE CASCADE;
	
ALTER TABLE OBJECT ADD CONSTRAINT object_type_id_attr_fkey 
	FOREIGN KEY (object_type_id) REFERENCES ATTR_DICTIONARY(attr_id) ON DELETE CASCADE;
	
ALTER TABLE OBJECT ADD CONSTRAINT object_dstr_id_attr_fkey 
	FOREIGN KEY (object_dstr_id) REFERENCES ATTR_DICTIONARY(attr_id) ON DELETE CASCADE;

ALTER TABLE OBJECT ADD CONSTRAINT object_src_id_attr_fkey 
	FOREIGN KEY (object_src_id) REFERENCES ATTR_DICTIONARY(attr_id) ON DELETE CASCADE;
	
ALTER TABLE OBJECT_PHONE ADD CONSTRAINT OBJECT_PHONE_id_fkey 
	FOREIGN KEY (object_id) REFERENCES OBJECT(object_id) ON DELETE CASCADE;
 
 COMMIT;	
 
--spool off; 
