###############################################
# Tabela Location
###############################################
CREATE TABLE location (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	latitude DECIMAL(14,8) NOT NULL,
	longitude DECIMAL(14,8) NOT NULL,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
    INDEX (id)
);

###############################################
# Tabela Tag
###############################################
CREATE TABLE tag (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
    INDEX (id),
    UNIQUE (name)
);

###############################################
# Tabela Locations/Tags
###############################################
CREATE TABLE locations_tags (
	location_id INT(11) NOT NULL,
	tag_id INT(11) NOT NULL,
    PRIMARY KEY (location_id, tag_id),
    INDEX location_ix (location_id, tag_id),	
    FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tag(id)
);

###############################################
# USER AND ROLES TABLES
###############################################

CREATE TABLE users (
	USER_ID INT(10) UNSIGNED NOT NULL,
	USERNAME VARCHAR(45) NOT NULL,
	PASSWORD VARCHAR(45) NOT NULL,
	ENABLED TINYINT(1) NOT NULL,
	PRIMARY KEY (USER_ID)
);

CREATE TABLE user_roles (
	USER_ROLE_ID INT(10) UNSIGNED NOT NULL,
	USER_ID INT(10) UNSIGNED NOT NULL,
	AUTHORITY VARCHAR(45) NOT NULL,
	PRIMARY KEY (USER_ROLE_ID),
	INDEX FK_user_roles (USER_ID),
	CONSTRAINT FK_user_roles FOREIGN KEY (USER_ID) REFERENCES users (USER_ID)
);

###############################################
# Default USER AND ROLES data
###############################################

INSERT INTO users (USER_ID, USERNAME,PASSWORD, ENABLED) VALUES (100, 'trix', 'trix', TRUE);
INSERT INTO user_roles (USER_ROLE_ID, USER_ID,AUTHORITY) VALUES (1, 100, 'ROLE_USER');