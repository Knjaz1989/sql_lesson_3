CREATE TABLE employees (
	id serial primary key,
	name varchar(100) NOT NULL,
	department varchar(150) NOT NULL
);

CREATE TABLE directors_employess (
	director_id integer references employees(id),
	employee_id integer references employees(id),
	CONSTRAINT director_employee_pk PRIMARY KEY (director_id, employee_id)
);
