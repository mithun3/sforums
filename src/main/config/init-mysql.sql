CREATE TABLE IF NOT EXISTS category (
	id BIGINT(20) NOT NULL AUTO_INCREMENT,
	name VARCHAR(64) NOT NULL,
	description TEXT,
	PRIMARY KEY  (id),
	UNIQUE KEY name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;