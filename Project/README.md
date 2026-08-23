This is the data warehousing project.
Inspired from Data with Baraa SQL Data Warehouse from scratch.


FIRST STEP IS TO DESIGN DATA ARCHITECUTE
1. Choose Data Management approach -> Chose the Data Warehousing and Kimball method
2. Next, design the layers 
--Define the following for all layers -> Definition, Objective, Object type(Table or View), Load method,Data transformations,Data Modelling,Target audience

--> Bronze Layer: Raw, unprocessed data and main objective is for traceability and debugging
--> Silver Layer: Clean and Standardized data. Main objective is to have an intermediate layer to prepare data for analysis
--> Gold Layer: Business-ready data, provides data to be consumed for reporting and analytics
--> Will maintain views for gold layer and tables for others
--> Bronze layer is generally full load,silver can be full or incremental
--> No transformation in bronze layer, do data cleaning, standardization, normalization, derive columns and data enrichment in silver layer.
--> Do data integration, aggregation and define business logic, rules in Gold layer.
--> We don't break the tables in Bronze or Silver layer. We break the, in the gold layer and make star or snowflake schema, aggregated objects or flat tables.
--> Bronze layer is accessed by data engineers only, silver can be accessed by data engineers, data analysts. Gold layer can be accessed by the Business users and data analysts.

Data Architecture can be any of these types
1. Data Warehouse
2. Data Lake
3. Data Lakehouse
4. Data Mesh

Different approaches are below for datawarehousing
1. Inmon : stage -> EDW(3NF) -> Data Marts -> Visualizations
2. Kimball: Stage -> Data Marts -> Visualizations
3. Data vault: Stage -> Raw Vault -> Business vault -> Data marts -> Visualizations
4. Medallion architecture: bronze -> Silver -> Gold -> Visualizations

