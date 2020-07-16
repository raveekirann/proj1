CREATE TABLE employees (
id INT PRIMARY KEY  AUTO_INCREMENT,
name  varchar(25) NOT NULL,
email varchar(50) NOT NULL,
dob  DATE NOT NULL,
gender char(1),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);