###### OBSERVATIONS FROM THE TABLES

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