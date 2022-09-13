CREATE TABLE employees (
	id serial primary key,
	name varchar(100) NOT NULL,
	department varchar(150) NOT NULL
	director_id integer references employees(id)
);

