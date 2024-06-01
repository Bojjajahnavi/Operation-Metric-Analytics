
Operation and Metric Analytics - Advanced SQL

Operational Analytics is a crucial process that involves analyzing a company's end-to-end operations. This analysis helps identify areas for improvement within the company. One of the key aspects of Operational Analytics is investigating metric spikes. This involves understanding and explaining sudden changes in key metrics by understanding the two case studies.

Case Study 1: Job Data Analysis
You will be working with a table named job_data with the following columns:

job_id: Unique identifier of jobs
actor_id: Unique identifier of actor
event: The type of event (decision/skip/transfer).
language: The Language of the content
time_spent: Time spent to review the job in seconds.
org: The Organization of the actor
ds: The date in the format yyyy/mm/dd (stored as text).

Tasks:

A. Jobs Reviewed Over Time:
Objective: Calculate the number of jobs reviewed per hour for each day in November 2020.

Your Task: Write an SQL query to calculate the number of jobs reviewed per hour for each day in November 2020.

B. Throughput Analysis:
Objective: Calculate the 7-day rolling average of throughput (number of events per second).

Your Task: Write an SQL query to calculate the 7-day rolling average of throughput. Additionally, explain whether you prefer using the daily metric or the 7-day rolling average for throughput, and why.

C. Language Share Analysis:
Objective: Calculate the percentage share of each language in the last 30 days.

Your Task: Write an SQL query to calculate the percentage share of each language over the last 30 days.

D. Duplicate Rows Detection:
Objective: Identify duplicate rows in the data.

Your Task: Write an SQL query to display duplicate rows from the job_data table.

Case Study 2: Investigating Metric Spike
You will be working with three tables:

users: Contains one row per user, with descriptive information about that user’s account.
events: Contains one row per event, where an event is an action that a user has taken (e.g., login, messaging, search).
email_events: Contains events specific to the sending of emails.

Tasks:

A. Weekly User Engagement:
Objective: Measure the activeness of users on a weekly basis.

Your Task: Write an SQL query to calculate the weekly user engagement.

B. User Growth Analysis:
Objective: Analyze the growth of users over time for a product.

Your Task: Write an SQL query to calculate the user growth for the product.

D. Weekly Engagement Per Device:
Objective: Measure the activeness of users on a weekly basis per device.

Your Task: Write an SQL query to calculate the weekly engagement per device.

E. Email Engagement Analysis:
Objective: Analyze how users are engaging with the email service.

Your Task: Write an SQL query to calculate the email engagement metrics.






## 🛠 Skills
Excel, SQL, Advanced SQL


## Tech Stack

Used MySQL Workbench with 8.0.34 version.

