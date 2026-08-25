TRUNCATE TABLE bronze.crm_sales_details;

BULK INSERT bronze.crm_sales_details
FROM 'C:\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH(
	FIRSTROW = 2, --Starting from second row, skipping the header row
	FIELDTERMINATOR =',',
	TABLOCK  --Locks whole table
);


