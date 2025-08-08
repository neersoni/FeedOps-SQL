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

SELECT * FROM feed_1 ;

-----------------------------------------------------------------------------------------------------------------------------------

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

 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REQ - 2 
CREATE OR REPLACE PROCEDURE populate_feed(feed_name TEXT, row_count INT)
LANGUAGE plpgsql
AS $$
DECLARE
    i INT := 0;
    sql_text TEXT;
BEGIN
    WHILE i < row_count LOOP
        IF feed_name = 'feed_1' THEN
            sql_text := format(
                $f$
                INSERT INTO feed_1 (name, email, phone, city, gender, age, join_date, department, designation, salary)
                VALUES (
                    'Name_%s',
                    'user%s@example.com',
                    '+91%s',
                    'City_%s',
                    CASE WHEN random() < 0.5 THEN 'Male' ELSE 'Female' END,
                    %s,
                    CURRENT_DATE - (random()*1000)::INT,
                    'Dept_%s',
                    'Desig_%s',
                    round(30000 + random() * 50000, 2)
                )
                $f$,
                i, i, floor(1000000000 + random()*8999999999)::BIGINT,
                floor(random()*100)::INT,
                floor(18 + random()*42)::INT,
                floor(random()*10)::INT,
                floor(random()*10)::INT
            );

        ELSIF feed_name = 'feed_2' THEN
            sql_text := format(
                $f$
                INSERT INTO feed_2 VALUES (
                    'Val1_%s', 'Val2_%s', 'Val3', 'Val4', 'Val5',
                    'Val6', 'Val7', 'Val8', 'Val9', 'Val10',
                    'Val11', 'Val12', 'Val13', 'Val14', 'Val15'
                )
                $f$,
                i, i
            );

        ELSIF feed_name = 'feed_3' THEN
            sql_text := format(
                $f$
                INSERT INTO feed_3 VALUES (
                    'Val1_%s', 'Val2_%s', 'Val3', 'Val4', 'Val5',
                    'Val6', 'Val7', 'Val8', 'Val9', 'Val10',
                    'Val11', 'Val12', 'Val13', 'Val14', 'Val15',
                    'Val16', 'Val17', 'Val18', 'Val19', 'Val20'
                )
                $f$,
                i, i
            );
        END IF;

        EXECUTE sql_text;
        i := i + 1;
    END LOOP;
END;
$$;
---------------------------------------------------------------------------------------------------------------------------------
REQ - 3 commands to find out duplicates in feed 1 , 2 , 3 
-------------------------------------------------------------------------

-- Feed 1 Duplicate Checks

SELECT name, COUNT(*) AS duplicates
FROM feed_1
GROUP BY name
HAVING COUNT(*) > 1;

SELECT email, COUNT(*) AS duplicates
FROM feed_1
GROUP BY email
HAVING COUNT(*) > 1;

SELECT join_date, COUNT(*) AS duplicates
FROM feed_1
GROUP BY join_date
HAVING COUNT(*) > 1;



-- Feed 2 Duplicate Checks
-- (Ensure 'department', 'designation', and 'name' exist in feed_2 table)

SELECT department, COUNT(*) AS duplicates
FROM feed_2
GROUP BY department
HAVING COUNT(*) > 1;

SELECT designation, COUNT(*) AS duplicates
FROM feed_2
GROUP BY designation
HAVING COUNT(*) > 1;

SELECT name, COUNT(*) AS duplicates
FROM feed_2
GROUP BY name
HAVING COUNT(*) > 1;



-- Feed 3 Duplicate Checks
-- (Ensure these columns exist in feed_3 table )
SELECT salary, COUNT(*) AS duplicates
FROM feed_3
GROUP BY salary
HAVING COUNT(*) > 1;

SELECT status, COUNT(*) AS duplicates
FROM feed_3
GROUP BY status
HAVING COUNT(*) > 1;

SELECT city, COUNT(*) AS duplicates
FROM feed_3
GROUP BY city
HAVING COUNT(*) > 1;

SELECT country, COUNT(*) AS duplicates
FROM feed_3
GROUP BY country
HAVING COUNT(*) > 1;

SELECT name, COUNT(*) AS duplicates
FROM feed_3
GROUP BY name
HAVING COUNT(*) > 1;

---------------------------------------------------------------------------------------------------------------
REQ -4 
----- Query to delete duplicates

DELETE FROM feed_1
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_1
    GROUP BY name, email
);

select * from feed_1

------------------------------------------------------------------------------
DELETE FROM feed_2
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_2
    GROUP BY name, email
);

select * from feed_2
 --------------------------------------------------------------------------------

DELETE FROM feed_3
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_2
    GROUP BY name, email
);

select * from feed_3

-----------------------------------------------------------------------------------
REQ - 5 & 6 Deleteing duplicates and geting output zero dupicates found in feed
DELETE FROM feed_1
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_1
    GROUP BY name, email
);

select * from feed_1

------------------------------------------------------------------------------
DELETE FROM feed_2
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_2
    GROUP BY name, email
);

select * from feed_2
 --------------------------------------------------------------------------------

DELETE FROM feed_3
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_2
    GROUP BY name, email
);

select * from feed_3
---- USED DELETE DUPLICATE COMMAND AGAIN AND FOUND OUT AS ZERO -----

---------------------------------------------------------------------------------------
select * from feed_1

CREATE TABLE feed_name_comparison AS
SELECT
    f1.id AS row_id,  -- assuming 'id' is your row identifier
    f1.name AS feed1_name,
    f2.name AS feed2_name,
    f3.name AS feed3_name,
    CASE
        WHEN f1.name = f2.name THEN 'Match_Feed2'
        ELSE 'Mismatch_Feed2'
    END AS feed2_compare,
    CASE
        WHEN f1.name = f3.name THEN 'Match_Feed3'
        ELSE 'Mismatch_Feed3'
    END AS feed3_compare
FROM feed_1 f1
LEFT JOIN feed_2 f2 ON f1.id = f2.id
LEFT JOIN feed_3 f3 ON f1.id = f3.id;

select * from feed_name_comparison