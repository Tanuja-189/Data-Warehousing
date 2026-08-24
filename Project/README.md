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






###### HIGH LEVEL ARCHITECTURE

# Need to define the sources, data warehouse and the consumers in order.
1. In sources define the source point and the file type and so.
2. In data warehouse structure, for every layer define the object type, load type, transformations and data model (if any)
3. In the consume layer, choose what you are doing at the end, the reporting, machine learning and ad hoc or whatsoever
4. Next also choose, in which DB you want to do this warehousing.

# Next define the plan on what steps to do and then define the standards for the naming convention of tables, databases, schemas, stored procedures and so onn to maintain the standards and ensure consistency.
1. We are using the snake case here i.e., lowercase letters and underscore between the words.
2. <source system>_<entity>. source system is crm or erp (in this way, as these are present here).
3. And in gold layer, all names must be meaningful, business-aligned names for tables, starting with the category prefix. Describe the role of table here like dim/fact/agg(aggregated).

# Shall define the naming conventions for columns also. Below are the examples
1. All primary keys in dimension tables must use the suffix _key.
2. All technical columns must start with the prefix dwh_ followed by a descriptive name indicating the column's purpose.
3. All stored procedures used for loading data must follow the naming pattern load_<layer>
