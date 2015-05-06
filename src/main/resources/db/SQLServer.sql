
/***			Tabela Location				 ***/
CREATE TABLE LOCATION (
	id INT PRIMARY KEY IDENTITY NOT NULL,
	name VARCHAR(100) NOT NULL,
	latitude DECIMAL(14,8) NOT NULL,
	longitude DECIMAL(14,8) NOT NULL,
	created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
)

/***			Índice Location				 ***/
CREATE INDEX IDX_LOCATION 
  ON LOCATION ( id ) 

/***			Tabela Tag			 ***/
CREATE TABLE TAG (
	id INT PRIMARY KEY IDENTITY NOT NULL,
	name VARCHAR(100) NOT NULL,
	created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (name)
)

/***			Índice Tag				 ***/
CREATE INDEX IDX_TAG 
  ON TAG ( id ) 
  
/***			Tabela Locations/Tags			 ***/
CREATE TABLE LOCATIONS_TAGS (
	location_id INT NOT NULL,
	tag_id INT NOT NULL,
    FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tag(id)
)

/***			Índice Locations/Tags				 ***/
CREATE INDEX IDX_LOCATIONS_TAGS
  ON LOCATIONS_TAGS ( location_id, tag_id ) 
  
/***			Tabela Users			 ***/
CREATE TABLE USERS (
	user_id INT PRIMARY KEY NOT NULL,
	username VARCHAR(45) NOT NULL,
	password VARCHAR(45) NOT NULL,
	enabled BIT NOT NULL
)

/***			Índice User 			 ***/
CREATE INDEX IDX_USERS 
  ON USERS ( user_id )

/***			Tabela User Roles			 ***/
CREATE TABLE USER_ROLES (
	user_role_id INT PRIMARY KEY NOT NULL,
	user_id INT NOT NULL,
	authority VARCHAR(45) NOT NULL,
	CONSTRAINT FK_USER_ROLES FOREIGN KEY (user_id) REFERENCES USERS(user_id)
)

/***			Índice User Roles				 ***/
CREATE INDEX IDX_USER_ROLES 
  ON USER_ROLES ( user_role_id ) 

/***	Default USER AND ROLES data		 ***/
INSERT INTO USERS (user_id, username,password, enabled) VALUES (100, 'adm', '321', 1)
INSERT INTO USER_ROLES (user_role_id, user_id, authority) VALUES (1, 100, 'ROLE_USER')
