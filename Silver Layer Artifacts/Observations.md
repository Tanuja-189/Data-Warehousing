###### OBSERVATIONS FROM THE TABLES
#### MAIN THING WITH SILVER LAYER IS CHECK IF ALL THE BUSINESS RULES ARE MET ON ALL THE TABLES

1. In both customer and product tables we have both ids and keys.
2. Keys can be same, but id is always unique.
3. We have history i.e., changes of each product with their start and end time.
4. crm_sales_details is an event or transactions or facts table.
5. We basically have a fact and two dim tables.
6. in crm tables, we have a fact and two dim tables.
7. In crm and erp, while connecting the tables, the whole column is not same in both of them, but a part of the column can be connected between both the CRM and ERP tables.

##### CLEANING PROCESS I.E., TRANSFORMATIONS
1. Checking if we have the primary key in the tables. If there are any discrepancies with the primary key, then decide which one to choose. Take the latest update date kind of relevant columns to choose which one is main record and maintain a primary key for the table.
2. Next, we also check where we have trialing and leading spaces.
3. Next, check the data consistency of the low cardinality columns in the tables.
4. Document all the quality check queries ran on bronze and then run the same in Silver layer again to check if the discrepancies have resolved accordingly.


## DATE TRANSFORMATIONS
1. With dates we can encounter multiple issues like start date being greater than end date, end or start date being NULL.
2. For a same product, we might have the overlapping dates.
3. In order to resolve this ambiguity, we need to define the set of rules and follow them.
4. End date being NULL is fine, but start date being NULL is not allowed at all.
5. We might need to adjust the metadata of the table to satisfy the quality requirements for the data.


####
1. We might also need to create derived columns sometimes as per requirements.
2. We do data enrichment too i.e., by adding the relevant columns to the data to enhance the dataset for analysis.
3. Also , need to validate with the date boundaries that we have in our business.
4. Cannot convert from INT to DATE in SQL Server. First, we need to convert to VARCHAR and from there, convert to the DATE


####
1. sales_details have connection with other two table i.e., cust_info and prd_info because, they are dimension tables and this one is the facts table.
2. Whenever we have data issues, it has to be either solved directly in source system or in the data warehouse. But need to discuss it with the business team to come to an understanding.
3. 