-- Creating a table with columns 'name', 'age', 'city'
CREATE TABLE users (name VARCHAR(255), age INT, city VARCHAR(255));

-- Correct way to insert data
INSERT INTO users (name, age, city) VALUES ('John Doe', 30, 'New York');

-- Incorrect (will result in an error):  
--  trying to insert 'age' value before 'name'
INSERT INTO users (age, name, city) VALUES (30, 'John Doe', 'New York');  -- Error

-- Inserting multiple values into a MySQL table
INSERT INTO customers (name, email, phone) 
VALUES ('John Doe', 'john.doe@email.com', '123-456-7890'), 

       ('Jane Smith', 'jane.smith@email.com', '987-654-3210');



-- Insering a row

INSERT INTO customers
VALUES (
        DEFAULT,
        'John',
        'Smith',
        '1990-01-01',
        NULL,
        'adress',
        'city',
        'CA',
        DEFAULT
);

