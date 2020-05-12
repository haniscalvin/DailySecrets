CREATE table post(
	id int NOT NULL AUTO_INCREMENT,
	post_title varchar(100) NOT NULL,
	post_content varchar(2000) NOT NULL,
	created_by int NOT NULL,
	created_at datetime NOT NULL,
	modify_at datetime NOT NULL,
	CONSTRAINT post_pk PRIMARY KEY (id)
);

INSERT INTO post (
	post_title, 
	post_content, 
	created_by, 
	created_at, 
	modify_at, 
)
VALUES (
	'Feeling loved',
	"I Don't know how to thank you or how to ever help you this much in return, but if you're reading this: THANK YOU",
	1,
	'2020-04-05 10:50:00',
	'2020-04-05 10:50:00'
)

INSERT INTO post (
	post_title, 
	post_content, 
	created_by, 
	created_at, 
	modify_at, 
)
VALUES (
	'Grow Up',
	"Everyday I become a little bit more like my mother. And I couldn't be prouder! =)",
	3,
	'2020-04-05 10:50:00',
	'2020-04-05 10:50:00'
)

INSERT INTO post (
	post_title, 
	post_content, 
	created_by, 
	created_at, 
	modify_at, 
)
VALUES (
	'Feeling loved',
	"I Don't know how to thank you or how to ever help you this much in return, but if you're reading this: THANK YOU",
	1,
	'2020-04-05 10:50:00',
	'2020-04-05 10:50:00'
)

CREATE TABLE user_account(
	id int NOT NULL AUTO_INCREMENT,
	display_name varchar(30) NOT NULL,
	token varchar(1000) NOT NULL,
	created_by varchar(100) NOT NULL,
	created_at datetime NOT NULL,
	modify_at datetime NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY (id)
);

INSERT INTO user_account (
	display_name,
	token,
	created_by,
	created_at,
	modify_at
)
VALUES (
	'John Doe',
	'090B235E9EB8F197F2DD927937222C570396D971222D9009A9189E2B6CC0A2C1',
	'John Doe',
	'2020-04-05 10:50:00',
	'2020-04-05 10:50:00'
);

INSERT INTO user_account (
	display_name,
	token,
	created_by,
	created_at,
	modify_at
)
VALUES (
	'John Smith',
	'5891b5b522d5df086d0ff0b110fbd9d21bb4fc7163af34d08286a2e846f6be03',
	'John Smith',
	'2020-04-06 10:50:00',
	'2020-04-06 10:50:00'
);

INSERT INTO user_account (
	display_name,
	token,
	created_by,
	created_at,
	modify_at
)
VALUES (
	'Alice Kingsman',
	'fa5b92bbeb99bc2443820042e86649c6234f209e20467e520129d07851e6b3e3',
	'Alice Kingsman',
	'2020-04-05 10:50:00',
	'2020-04-05 10:50:00'
);

INSERT INTO user_account (
	display_name,
	token,
	created_by,
	created_at,
	modify_at
)
VALUES (
	'Ghost Watch',
	'8cf9510666d83703aa24fc01dac2cfc36d0564dc1d5e16ed2f07de8ec40c336f',
	'Ghost Watch',
	'2020-04-05 10:50:00',
	'2020-04-05 10:50:00'
);

INSERT INTO user_account (
	display_name,
	token,
	created_by,
	created_at,
	modify_at
)
VALUES (
	'Mike Wayne',
	'685b39f996eaa6f3918c4245da42279cec0d5500a44ceafffa930ee91007e74a',
	'Mike ',
	'2020-04-05 10:50:00',
	'2020-04-05 10:50:00'
);
