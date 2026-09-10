--1. Create the Database:

  CREATE DATABASE company;

--2. Create the Employee Table:
    CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10, 2)
);
