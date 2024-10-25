# Formula 1 Analytics with dbt Cloud + Snowflake! (Analytics Engineering Example Project)

![dbt](https://a11ybadges.com/badge?logo=dbt)
![Snowflake](https://a11ybadges.com/badge?logo=snowflake)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

### Technologies and Services Used
- dbt (Cloud)
- Snowflake
- Python

## Purpose and Summary
The goal of this analytics engineering project is to showcase my ability to initialize, develop, and deploy a simple dbt + Snowflake project. This project is not "advanced" by any means, and is certainly limited in scope.

## Data Source
Formula 1 Data: https://www.kaggle.com/datasets/rohanrao/formula-1-world-championship-1950-2020

## Project Steps

### Ingestion into Snowflake
The raw data from Kaggle is ingested into Snowflake. A 'raw' database is used to signify that the data is unedited.
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/1.png?raw=true)

### dbt Cloud Initialization + Snowflake Connection
For this project I used dbt Cloud to keep things simple; however, I have used dbt Core previously as well. At this stage, I initialized the dbt project and connected to the Snowflake account. 
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/2.png?raw=true)

### dbt_project.yml Configuration + Created Staging/Intermediate/Marts Directories
I configured the dbt_project.yml file to my liking and created the Staging/Intermediate/Marts directories, to dbt's recommended project structure (see for more details: https://docs.getdbt.com/best-practices/how-we-structure/2-staging)
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/3.png?raw=true)

### dbt Staging Models
The staging models were written at this point. These light transformations point towards the raw tables on Snowflake.
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/4.png?raw=true)

### dbt Staging Sources.yml
I then wrote the sources.yml for the raw tables in the staging folder. Again, this project's scope is simple, so I didn't go beyond the generic tests included with dbt.
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/5.png?raw=true)

### Staging Views Generated in Snowflake
After running 'dbt build', the models passed testing and the tables were generated in Snowflake.
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/6.png?raw=true)

### dbt Intermediate and Marts Development.
This same general process is repeated twice to develop both the Intermediate and Marts models. The Intermediate models contain seveveral analytical queries, such as, "avg_grid_start". These Intermediate models + additional general queries (from staging tables) are used to create the final Mart tables, that are clean and ready to be used in production.
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/7.png?raw=true)

### dbt Seeding + Python Script
Some seeding was also done to bring in financial data (yFinance's API) to dbt. 
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/8.png?raw=true)

### Final Thoughts + Finished Data
![alt text](https://github.com/airincs/f1-analytics/blob/main/Images/9.png?raw=true)
