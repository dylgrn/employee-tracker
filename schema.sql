CREATE DATABASE emp_trackerDB;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    deparment_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);

INSERT INTO department (name)
VALUE ('Engineering');
INSERT INTO department (name)
VALUE ('Finance');
INSERT INTO department (name)
VALUE ('Sales');
INSERT INTO department (name)
VALUE ('Legal');

INSERT INTO roles (title, salary, department_id)
value ('Head Enigineer', 130000, 1);
INSERT INTO roles (title, salary, department_id)
value ('Software Engineer', 100000, 1);
INSERT INTO roles (title, salary, department_id)
value ('Accountent', 80000, 2);
INSERT INTO roles (title, salary, department_id)
value ('Lead Sales', 120000, 3);
INSERT INTO roles (title, salary, department_id)
value ('Sales', 70000, 3);
INSERT INTO roles (title, salary, department_id)
value ('Legal Team Manager', 140000, 4);
INSERT INTO roles (title, salary, department_id)
value ('lawyer', 200000, 4);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
value ('Jake', 'Farm', 1, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
value ('Justin', 'Frio', 2, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
value ('Alex', 'Tribic', 1, 3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
value ('Mollie', 'Javas', 2, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
value ('Mandi', 'Mondor', null, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
value ('Oliver', 'Long', null, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
value ('Jessi', 'Spring', null, 7);

