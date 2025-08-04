

-- Create Table
CREATE TABLE IF NOT EXISTS feed_2 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    join_date DATE,
    department VARCHAR(50),
    designation VARCHAR(50),
    salary NUMERIC(10,2),
    employment_type VARCHAR(20)
);


INSERT INTO feed_2 (
    name, email, phone, city, state, country, gender, age, join_date,
    department, designation, salary, employment_type
) VALUES
('Neer', 'neer1@example.com', '9999911111', 'Delhi', 'Delhi', 'India', 'Male', 24, '2023-01-01', 'Finance', 'Analyst', 50000.00, 'Full-Time'),
('Riya', 'riya@example.com', '9999922222', 'Mumbai', 'MH', 'India', 'Female', 23, '2023-02-01', 'Marketing', 'Manager', 60000.00, 'Full-Time'),
('Amit', 'amit@example.com', '9999933333', 'Bangalore', 'KA', 'India', 'Male', 28, '2023-03-01', 'IT', 'Engineer', 55000.00, 'Contract'),
('Sneha', 'sneha@example.com', '9999944444', 'Chennai', 'TN', 'India', 'Female', 25, '2023-04-01', 'HR', 'Executive', 52000.00, 'Full-Time'),
('Ravi', 'ravi@example.com', '9999955555', 'Hyderabad', 'TG', 'India', 'Male', 29, '2023-05-01', 'Sales', 'Associate', 48000.00, 'Part-Time'),
('Neha', 'neha@example.com', '9999966666', 'Pune', 'MH', 'India', 'Female', 26, '2023-06-01', 'Finance', 'Associate', 51000.00, 'Full-Time'),
('Karan', 'karan@example.com', '9999977777', 'Kolkata', 'WB', 'India', 'Male', 27, '2023-07-01', 'IT', 'Senior Engineer', 58000.00, 'Full-Time'),
('Arjun', 'arjun@example.com', '9999988888', 'Noida', 'UP', 'India', 'Male', 30, '2023-08-01', 'Admin', 'Coordinator', 47000.00, 'Contract'),
('Priya', 'priya@example.com', '9999999999', 'Jaipur', 'RJ', 'India', 'Female', 24, '2023-09-01', 'Legal', 'Officer', 62000.00, 'Full-Time'),
('Riya', 'riya@example.com', '9999922222', 'Mumbai', 'MH', 'India', 'Female', 23, '2023-02-01', 'Marketing', 'Manager', 60000.00, 'Full-Time'), -- Duplicate
('Neer', 'neer1@example.com', '9999911111', 'Delhi', 'Delhi', 'India', 'Male', 24, '2023-01-01', 'Finance', 'Analyst', 50000.00, 'Full-Time'), -- Duplicate
('Amit', 'amit@example.com', '9999933333', 'Bangalore', 'KA', 'India', 'Male', 28, '2023-03-01', 'IT', 'Engineer', 55000.00, 'Contract'), -- Duplicate
('Neha', 'neha@example.com', '9999966666', 'Pune', 'MH', 'India', 'Female', 26, '2023-06-01', 'Finance', 'Associate', 51000.00, 'Full-Time'), -- Duplicate
('Zoya', 'zoya@example.com', '9888877777', 'Surat', 'GJ', 'India', 'Female', 25, '2023-10-01', 'Design', 'Lead', 64000.00, 'Full-Time'),
('Manav', 'manav@example.com', '9888866666', 'Indore', 'MP', 'India', 'Male', 32, '2023-11-01', 'Operations', 'Head', 70000.00, 'Full-Time');
 select * from feed_2 ;