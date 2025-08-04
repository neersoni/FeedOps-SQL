

-- Create Table
CREATE TABLE IF NOT EXISTS feed_3 (
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
    employment_type VARCHAR(20),
    status VARCHAR(20),
    last_login TIMESTAMP,
    created_by VARCHAR(50),
    updated_by VARCHAR(50),
    remarks TEXT
);

-- Insert 20 Rows (with 5 duplicates)
INSERT INTO feed_3 (
    name, email, phone, city, state, country, gender, age, join_date,
    department, designation, salary, employment_type, status, last_login,
    created_by, updated_by, remarks
) VALUES
('Neer', 'neer1@example.com', '9999911111', 'Delhi', 'Delhi', 'India', 'Male', 24, '2023-01-01', 'Finance', 'Analyst', 50000.00, 'Full-Time', 'Active', '2023-07-01 10:00:00', 'System', 'Admin', 'Top performer'),
('Riya', 'riya@example.com', '9999922222', 'Mumbai', 'MH', 'India', 'Female', 23, '2023-02-01', 'Marketing', 'Manager', 60000.00, 'Full-Time', 'Inactive', '2023-06-20 14:20:00', 'Admin', 'Admin', 'Pending review'),
('Amit', 'amit@example.com', '9999933333', 'Bangalore', 'KA', 'India', 'Male', 28, '2023-03-01', 'IT', 'Engineer', 55000.00, 'Contract', 'Active', '2023-07-10 09:45:00', 'Admin', 'HR', 'Eligible for hike'),
('Sneha', 'sneha@example.com', '9999944444', 'Chennai', 'TN', 'India', 'Female', 25, '2023-04-01', 'HR', 'Executive', 52000.00, 'Full-Time', 'Active', '2023-07-03 08:00:00', 'System', 'System', 'Onboarding complete'),
('Ravi', 'ravi@example.com', '9999955555', 'Hyderabad', 'TG', 'India', 'Male', 29, '2023-05-01', 'Sales', 'Associate', 48000.00, 'Part-Time', 'Inactive', '2023-05-18 17:30:00', 'Admin', 'SalesLead', 'Performance warning'),
('Neha', 'neha@example.com', '9999966666', 'Pune', 'MH', 'India', 'Female', 26, '2023-06-01', 'Finance', 'Associate', 51000.00, 'Full-Time', 'Active', '2023-07-02 13:45:00', 'HR', 'HR', 'Promoted last year'),
('Karan', 'karan@example.com', '9999977777', 'Kolkata', 'WB', 'India', 'Male', 27, '2023-07-01', 'IT', 'Senior Engineer', 58000.00, 'Full-Time', 'Active', '2023-07-09 11:00:00', 'Admin', 'System', 'High availability user'),
('Arjun', 'arjun@example.com', '9999988888', 'Noida', 'UP', 'India', 'Male', 30, '2023-08-01', 'Admin', 'Coordinator', 47000.00, 'Contract', 'Inactive', '2023-06-15 12:30:00', 'System', 'Admin', 'Terminated - No show'),
('Priya', 'priya@example.com', '9999999999', 'Jaipur', 'RJ', 'India', 'Female', 24, '2023-09-01', 'Legal', 'Officer', 62000.00, 'Full-Time', 'Active', '2023-07-07 15:15:00', 'Admin', 'LegalMgr', 'Internal transfer'),
('Zoya', 'zoya@example.com', '9888877777', 'Surat', 'GJ', 'India', 'Female', 25, '2023-10-01', 'Design', 'Lead', 64000.00, 'Full-Time', 'Inactive', '2023-06-30 10:10:00', 'HR', 'HR', 'On long leave'),
('Manav', 'manav@example.com', '9888866666', 'Indore', 'MP', 'India', 'Male', 32, '2023-11-01', 'Operations', 'Head', 70000.00, 'Full-Time', 'Active', '2023-07-01 12:00:00', 'System', 'System', 'Senior leadership'),
-- Duplicates below
('Neer', 'neer1@example.com', '9999911111', 'Delhi', 'Delhi', 'India', 'Male', 24, '2023-01-01', 'Finance', 'Analyst', 50000.00, 'Full-Time', 'Active', '2023-07-01 10:00:00', 'System', 'Admin', 'Top performer'),
('Amit', 'amit@example.com', '9999933333', 'Bangalore', 'KA', 'India', 'Male', 28, '2023-03-01', 'IT', 'Engineer', 55000.00, 'Contract', 'Active', '2023-07-10 09:45:00', 'Admin', 'HR', 'Eligible for hike'),
('Neha', 'neha@example.com', '9999966666', 'Pune', 'MH', 'India', 'Female', 26, '2023-06-01', 'Finance', 'Associate', 51000.00, 'Full-Time', 'Active', '2023-07-02 13:45:00', 'HR', 'HR', 'Promoted last year'),
('Sneha', 'sneha@example.com', '9999944444', 'Chennai', 'TN', 'India', 'Female', 25, '2023-04-01', 'HR', 'Executive', 52000.00, 'Full-Time', 'Active', '2023-07-03 08:00:00', 'System', 'System', 'Onboarding complete'),
('Riya', 'riya@example.com', '9999922222', 'Mumbai', 'MH', 'India', 'Female', 23, '2023-02-01', 'Marketing', 'Manager', 60000.00, 'Full-Time', 'Inactive', '2023-06-20 14:20:00', 'Admin', 'Admin', 'Pending review');
 select * from feed_3 ;



 -- Inserting 4 sample rows into feed_3
