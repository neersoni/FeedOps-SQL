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
#  Requirement 2 - Automation using create procedure function 
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

<img width="776" height="498" alt="Screenshot 2025-08-04 144405" src="https://github.com/user-attachments/assets/54ed1b45-956c-4d94-b3e2-d25ae9cd1739" />


below are the 2 example of the result which i get after running duplicate query 

<img width="505" height="239" alt="Screenshot 2025-08-04 134827" src="https://github.com/user-attachments/assets/6c4b39af-247a-4ce3-a80f-35a5afa02deb" />
<img width="437" height="292" alt="Screenshot 2025-08-04 134756" src="https://github.com/user-attachments/assets/153212b5-8e06-454a-9a61-2162143fbab6" />

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 # Requirement 5 & 6: Deleteing duplicates and geting output zero dupicates found in feed .
 i want ensure data cleanliness and consistency across all three tables (feed_1, feed_2, and feed_3), I implemented duplicate removal using SQL's DELETE command combined with a GROUP BY and MAX(id) approach.

The logic used was:

sql
Copy
Edit
DELETE FROM feed_1
WHERE id NOT IN (
    SELECT MAX(id)
    FROM feed_1
    GROUP BY name, email
);
This query deletes duplicate rows from the feed_1 table, keeping only the latest entry (highest id) for each unique combination of name and email. The assumption is that a combination of name and email uniquely identifies a person, so any repetition is considered a duplicate.

The same approach was followed for:

feed_2 – considering fields like name, email or department as needed.

feed_3 – based on relevant columns like name, email, or status.

<img width="951" height="560" alt="Screenshot 2025-08-04 145528" src="https://github.com/user-attachments/assets/6fd14f61-64ea-4fc9-b398-061b4231060b" />


This method ensures only one most recent record is retained per unique person across all feeds, effectively cleaning the database of redundant entries.

sample output  after deleteing duplicates 

<img width="743" height="382" alt="Screenshot 2025-08-04 140259" src="https://github.com/user-attachments/assets/858f7148-52d9-428b-9c1e-3dcae4e5b5e6" />

after deleting duplicates from all the feed 1,2,3 i got duplicate find as zero

<img width="498" height="207" alt="Screenshot 2025-08-04 143318" src="https://github.com/user-attachments/assets/b09a975f-2e90-4408-8b95-8e9f7a28a311" />

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 # Requirement 7 Compare feed 1 from 2 , 3 
 For this requirement, I compared the name field in feed_1 with the same field in feed_2 and feed_3 to check if they match.
I used a LEFT JOIN so that all records from feed_1 are included in the result.
Then, I applied CASE logic to label each as a Match or Mismatch.

The final output shows:

The name from each feed

Whether feed_1’s name matches feed_2

Whether feed_1’s name matches feed_3

below attached screen shot of output
<img width="1428" height="429" alt="Screenshot 2025-08-08 161208" src="https://github.com/user-attachments/assets/8715408a-21d2-4f4c-bc7d-8a6cb2ab4817" />

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Requirement - 8  summary of project and documentation 
Summary Table
Step No.	Requirement	Action Taken	Query Executed	Remarks
1	Data Creation  >>>	Created database and tables (feed_1, feed_2, feed_3)	>>> 	Structured schema defined
2	Data Population Automation >>> Automated table population using stored function with random data generation	>>>> 	Dynamic & reusable
3	Duplicate Identification  >>>	Identified duplicates based on name and email	>>> 	Prepared for cleanup
4	Duplicate Removal >>> 	Removed duplicates keeping the latest entry (MAX(id)) >>> 	Ensured data integrity
5	Data Merging >>>	Combined records from all feeds into a single consolidated table	>>> 	Used UNION logic
6	Data Filtering	 >>> Extracted only specific criteria (e.g., city filter)	>>> 	Verified results
7	Final Output Verification >>>	Checked the final dataset for correctness	>>> 	No anomalies found
8	Documentation	Created >>> GitHub-ready README in markdown format	
Key Notes
This step does not involve SQL execution.
Focus is on project documentation for GitHub.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------






 

