DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users(
	id BIGSERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL,
    birth_date  DATE NULL,
	create_at TIMESTAMP(0) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL
);

INSERT INTO users(
	email,
	name,
	birth_date,
	create_at,
	updated_at
)
values(
	'oscar@gmail.com',
	'oscar',
	'1998-03-24',
	'2023-05-03',
	'2023-05-03'
)