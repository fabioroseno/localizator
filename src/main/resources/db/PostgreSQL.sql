/*** Tabela Location ***/ 
CREATE SEQUENCE serial START 1; 

CREATE TABLE location 
  ( 
     id        INT PRIMARY KEY DEFAULT NEXTVAL('serial'), 
     name      VARCHAR(100) NOT NULL, 
     latitude  DECIMAL(14, 8) NOT NULL, 
     longitude DECIMAL(14, 8) NOT NULL, 
     created   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
  ); 

CREATE INDEX location_ix ON location (id); 

/*** Tabela Tag ***/ 
CREATE TABLE tag 
  ( 
     id      INT PRIMARY KEY DEFAULT NEXTVAL('serial'), 
     name    VARCHAR(100) UNIQUE NOT NULL, 
     created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
  ); 

CREATE INDEX tag_ix ON tag (id); 

/*** Tabela Locations /Tag ***/ 
CREATE TABLE locations_tags 
  ( 
     location_id INT NOT NULL REFERENCES location(id), 
     tag_id      INT NOT NULL REFERENCES tag(id), 
     CONSTRAINT locations_tags_pk PRIMARY KEY (location_id, tag_id) 
  ); 

CREATE INDEX locations_tags_ix ON locations_tags (location_id, tag_id); 

/*** Tabela Users ***/ 
CREATE TABLE users 
  ( 
     user_id  INT PRIMARY KEY NOT NULL, 
     username VARCHAR(45) NOT NULL, 
     password VARCHAR(45) NOT NULL, 
     enabled  BOOLEAN NOT NULL 
  ); 

CREATE INDEX users_ix ON users (user_id); 

/*** Tabela Users Roles ***/ 
CREATE TABLE user_roles 
  ( 
     user_role_id INT PRIMARY KEY NOT NULL CHECK (user_role_id >= 0), 
     user_id      INT NOT NULL CHECK (user_id >= 0) REFERENCES users (user_id), 
     authority    VARCHAR(45) NOT NULL 
  ); 

CREATE INDEX user_roles_ix ON user_roles (user_role_id); 

/*** Inserts Users ***/ 
INSERT INTO users (user_id, username, password, enabled) 
VALUES (100, 'trix', 'trix', true); 
INSERT INTO users (user_id, username, password, enabled) 
VALUES (101, 'bion', '321ewq', true); 

INSERT INTO user_roles(user_role_id, user_id, authority) 
VALUES (1, 100, 'ROLE_USER'); 


  