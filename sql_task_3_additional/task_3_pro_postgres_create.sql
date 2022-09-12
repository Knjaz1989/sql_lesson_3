CREATE TABLE employees (
	id serial primary key,
	name varchar(100) NOT NULL,
	department_id integer references departments(id)
);

CREATE TABLE directors_employess (
	director_id integer references employees(id),
	employee_id integer references employees(id),
	CONSTRAINT director_employee_pk PRIMARY KEY (director_id, employee_id)
);

CREATE TABLE departments (
	id serial primary key,
	name varchar(100) NOT NULL,
	director_id integer references employees(id)
);






DROP TABLE employees, director_employess;

INSERT INTO employees (name, department) VALUES ('vs', 'python');

SELECT * FROM employees;

INSERT INTO director_employess VALUES (1, 1);

SELECT * FROM director_employess;