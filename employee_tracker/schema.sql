DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;


-- create employee table
Create Table department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
);


--create roll table
Create Table department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) References department(id) on delete cascade
);

-- Create Employee table
Create Table department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) UNIQUE NOT NULL,
    last_name DECIMAL NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
     FOREIGN KEY (manager_id) References employee(id) on delete set null
);