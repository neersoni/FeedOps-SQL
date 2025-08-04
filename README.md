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

GitHub for version control and project sharing
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Dataset Details
This project simulates real-world data feeds commonly found in customer management, HR, or ERP systems. Three structured datasets are generated as SQL tables — each with a different number of columns and rows, containing intentional duplicates to support deduplication and data validation operations.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Step-wise Implementation (Req 1 to 10)

# Requirement 1: Data Feed Table Creation and Population
To begin the project, I have  created a clean and consistent table structure named feed_1, and cloned the same schema into feed_2 and feed_3. Each table includes 10 ,15 ,20 columns covering personal, professional, and system-related metadata such as name, email, location, department, designation, salary, status, timestamps, and remarks.
i have also shared SQL query file as supporting doc for feed_1 , feed_2 , feed_3 also attaching snippet for one feed (feed_1) 


