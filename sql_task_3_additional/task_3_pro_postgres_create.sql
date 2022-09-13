CREATE TABLE employees (
	id serial primary key,
	name varchar(100) NOT NULL,
	department_id integer references departments(id),
	director_id integer references employees(id)
);

CREATE TABLE departments (
	id serial primary key,
	name varchar(100) NOT NULL,
	director_id integer references employees(id) NOT NULL
);

