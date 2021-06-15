DROP TABLE IF EXISTS likes_type;
CREATE TABLE IF NOT EXISTS likes_type(
	id SERIAL PRIMARY KEY,
	type VARCHAR(255) COMMENT 'Тип лайков',
) COMMENT = 'Типы Лайков';

INSERT INTO likes_type VALUES
	(1, 'Users'),
	(2, 'Posts'),
	(3, 'Media');

DROP TABLE IF EXISTS likes;
CREATE TABLE IF NOT EXISTS likes(
	id SERIAL PRIMARY KEY,
	user_id INT  UNSIGNED,
	likes_type INT UNSIGNED,
	external_id INT UNSIGNED,
	FOREIGN KEY (likes_type)  REFERENCES likes_type (id),
	FOREIGN KEY (user_id) REFERENCES users (id),
) COMMENT = 'Лайки';