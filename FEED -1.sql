CREATE DATABASE HR ;

CREATE TABLE IF NOT EXISTS feed_1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    join_date DATE
);


INSERT INTO feed_1 (name, email, phone, city, state, country, gender, age, join_date) VALUES
('Neer', 'neer1@example.com', '9999911111', 'Delhi', 'Delhi', 'India', 'Male', 24, '2023-01-01'),
('Riya', 'riya@example.com', '9999922222', 'Mumbai', 'MH', 'India', 'Female', 23, '2023-02-01'),
('Amit', 'amit@example.com', '9999933333', 'Bangalore', 'KA', 'India', 'Male', 28, '2023-03-01'),
('Sneha', 'sneha@example.com', '9999944444', 'Chennai', 'TN', 'India', 'Female', 25, '2023-04-01'),
('Ravi', 'ravi@example.com', '9999955555', 'Hyderabad', 'TG', 'India', 'Male', 29, '2023-05-01'),
('Neha', 'neha@example.com', '9999966666', 'Pune', 'MH', 'India', 'Female', 26, '2023-06-01'),
('Karan', 'karan@example.com', '9999977777', 'Kolkata', 'WB', 'India', 'Male', 27, '2023-07-01'),
('Neer', 'neer1@example.com', '9999911111', 'Delhi', 'Delhi', 'India', 'Male', 24, '2023-01-01'),
('Amit', 'amit@example.com', '9999933333', 'Bangalore', 'KA', 'India', 'Male', 28, '2023-03-01'),
('Riya', 'riya@example.com', '9999922222', 'Mumbai', 'MH', 'India', 'Female', 23, '2023-02-01');

SELECT * FROM feed_1;