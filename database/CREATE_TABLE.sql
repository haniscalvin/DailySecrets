CREATE table post(
	id int NOT NULL AUTO_INCREMENT,
	post_title varchar(100) NOT NULL,
	post_content varchar(2000) NOT NULL,
	created_by int NOT NULL,
	created_at datetime NOT NULL,
	modify_at datetime NOT NULL,
	CONSTRAINT post_pk PRIMARY KEY (id)
);

CREATE TABLE user_account(
	id int NOT NULL AUTO_INCREMENT,
	display_name varchar(30) NOT NULL,
	token varchar(1000) NOT NULL,
	created_by varchar(100) NOT NULL,
	created_at datetime NOT NULL,
	modify_at datetime NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY (id)
);
