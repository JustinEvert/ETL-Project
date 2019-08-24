# ETL-Project

EXTRACT:

(i) 8 Excel Files showing the number and amount of mortgages provided by all banks. Data EXTRACTED from CONAVI (Comisión Nacional de Vivienda)

(ii) Data for Natural Disaster Events by state. Data EXTRACTED from the Datos Abiertos del Gobierno Federal FONDEN API

(iii) Data for monthly National level Inflation Rates for Mexico (2016 - present). Data EXTRACTED from INEGI in HTML format

TRANSFORM:

(i) Pandas used to:
- CONSOLIDATE 8 files into 1 Dataset 
- TRANSFORM consolidated data into Dataframe
- CLEAN data and SELECT target categories
- SAVE transformed and cleaned data to CSV & IPYNB formats
- EXPORT finished Dataframe to PostGres

(ii) Pandas used to: 
- TRANFORM data EXTRACTED from API into Dataframe
- CLEAN data and SELECT target categories
- SAVE transformed and cleaned data to IPYNB format
- EXPORT finished Dataframe to PostGres

(iii) Pandas used to: 
- TRANFORM HTML data EXTRACTED from INEGI into Dataframe
- CLEAN data and SELECT target categories
- SAVE transformed and cleaned data to IPYNB format
- EXPORT finished Dataframe to PostGres

LOAD:
- TABLES were created in Postgres to receive all datasets once transformation process completed
- Once dataset transformation completed all data was exported and LOADED to PostGres meaning all created tables were populated with the datasets which correlated to them
- JOINS were then used to CONSOLIDATE the 3 seperate datasets into one datestes which included the addition of targetted information
- All LOADED data saved to SQL format

