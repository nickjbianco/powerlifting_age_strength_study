Powerlifting Strength Analytics Pipeline

Overview
This project builds a data analytics pipeline for powerlifting performance using Python, PostgreSQL, and SQL. The goal is to analyze strength trends in powerlifting by weight class and sex, focusing on elite-level lifters by selecting the top 100 performances per category. All data was gathered through the open source website openpoewrlifting.org.

The pipeline ingests raw powerlifting meet data, transforms and filters it, and produces analytical summaries such as maximum lifts per weight class, average elite-level performance, age distribution of top lifters, and the oldest and youngest lifters in elite groups.

The project demonstrates an end-to-end workflow combining ETL, database design, data transformation, and SQL analytics.

Project Architecture

Raw Dataset
|
Python ETL Notebook (powerlifting_raw_data_ETL.ipynb)
|
PostgreSQL Database
|
raw_powerlifting table
|
Python filtering (top performances)
|
top_100_benches
top_100_squats
|
SQL analytics queries
|
Strength statistics by weight class and sex

Technologies Used

Python (Pandas)
PostgreSQL
SQL (window functions and aggregations)
SQLAlchemy
Jupyter Notebook

ETL Process

The ETL pipeline is implemented in powerlifting_raw_data_ETL.ipynb.

Steps include importing the raw dataset, cleaning and standardizing columns, converting dates and numeric fields, and loading the data into the PostgreSQL table raw_powerlifting.

Performance Filtering

Two notebooks generate elite performance datasets.

top_100_benches.ipynb sorts bench press results by weight, keeps the best lift per lifter per weight class, selects the top 100 lifters per weight class and sex, and inserts the results into the top_100_benches table.

top_100_squats.ipynb follows the same process for squat performance.

Analytical Queries

The project includes SQL queries that analyze elite-level strength.

Metrics calculated include maximum lift per class, average lift among the top 100, oldest lifter, average age, and youngest lifter.

Window functions are also used to identify the heaviest lift performed by the oldest athlete in each category.

Key Analytical Questions

The analysis explores several questions including:

What is the maximum strength level per weight class?
What is the average performance among elite lifters?
How does age vary among top lifters?
Which weight classes show the greatest longevity?
