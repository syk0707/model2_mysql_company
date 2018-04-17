CREATE TABLE kmmember(
	id			VARCHAR(50)		NOT NULL	PRIMARY KEY,
	pw			VARCHAR(50)		NOT NULL,
	grade		VARCHAR(50)		NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET="utf8";

INSERT INTO kmmember(id,pw,grade) VALUES ('admin', 'rmaaudrldj', 'A');

SELECT * FROM kmmember;