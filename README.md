# FeedOps-SQL
FeedOps-SQL is an end-to-end SQL automation project that generates random data feeds, identifies and cleans duplicate records, and performs cross-feed data comparisons. It includes SQL scripts, test plans, automation steps, and documentation to demonstrate practical SQL skills for real-world data operations.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Project Title: FeedOps-SQL
##  Objective
The objective of this project is to simulate a real-world data operations workflow using SQL. It covers the end-to-end process of generating synthetic data feeds with duplicates, identifying and removing those duplicates, comparing data across feeds, and implementing basic automation. This project showcases the practical application of DDL, DML, functions, and test scripting in PostgreSQL.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Database: PostgreSQL 15+ (Accessed via pgAdmin)

IDE: Visual Studio Code (for SQL scripting and README documentation)

Tools & Utilities:

SQL functions, procedures, and triggers

pgAdmin for database management

Git hub version control and project sharing 

 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Dataset Details
This project simulates real-world data feeds commonly found in customer management, HR, or ERP systems. Three structured datasets are generated as SQL tables — each with a different number of columns and rows, containing intentional duplicates to support deduplication and data validation operations.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Step-wise Implementation (Req 1 to 10)

# Requirement 1: Data Feed Table Creation and Population
To begin the project, I have  created a clean and consistent table structure named feed_1, and cloned the same schema into feed_2 and feed_3. Each table includes 10 ,15 ,20 columns covering personal, professional, and system-related metadata such as name, email, location, department, designation, salary, status, timestamps, and remarks.
i have also shared SQL query file as supporting doc for feed_1 , feed_2 , feed_3 also attaching snippet for one feed (feed_1) 

<img width="446" height="418" alt="Screenshot 2025-08-04 112904" src="https://github.com/user-attachments/assets/48f04c3a-07b2-479b-8c1d-5820cee9653f" />

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Automation using create procedure function 
## In this part of the project, I used a CREATE PROCEDURE function to automate the process of inserting random data into the feed tables (feed_1, feed_2, feed_3).

Instead of writing insert queries again and again for each table, I made a stored procedure where I just give two inputs:

The feed table name

The number of rows I want to generate

After that, the procedure will handle everything on its own. It uses a loop to repeat the insert action and also randomly generates names, emails, phone numbers, dates, salary, and other column values. I used some built-in functions like RAND() and FLOOR() for that.

To make the SQL dynamic, I used PREPARE, EXECUTE, and DEALLOCATE PREPARE — this helps run the query built inside the procedure. I also used CASE to randomly assign gender values like Male or Female.

 Benefit: Now I don’t have to copy-paste insert queries again and again. I just call this procedure like this:


** NOTE - I HAVE ALSO ATTACHED SQL CODE FOR AUTOMATION IN FILES **
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 # Requirement 3 & 4: Detecting Duplicates Using SQL Queries

To fulfill Req-3 and Req-4, I wrote a series of SQL queries to identify duplicate records in multiple fields across the tables feed_1, feed_2, and feed_3. This was done using the GROUP BY and HAVING COUNT(*) > 1 logic, which helps highlight values that appear more than once—indicating potential data quality issues.

below are the 2 example of the result which i get after running duplicate query 

<img width="505" height="239" alt="Screenshot 2025-08-04 134827" src="https://github.com/user-attachments/assets/6c4b39af-247a-4ce3-a80f-35a5afa02deb" />
<img width="437" height="292" alt="Screenshot 2025-08-04 134756" src="https://github.com/user-attachments/assets/153212b5-8e06-454a-9a61-2162143fbab6" />

