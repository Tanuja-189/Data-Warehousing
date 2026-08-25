TRUNCATE TABLE bronze.erp_cust_az12;

BULK INSERT bronze.erp_cust_az12
FROM 'C:\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH(
	FIRSTROW = 2, --Starting from second row, skipping the header row
	FIELDTERMINATOR =',',
	TABLOCK  --Locks whole table
);
