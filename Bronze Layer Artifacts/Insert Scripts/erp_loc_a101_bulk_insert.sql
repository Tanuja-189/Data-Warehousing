TRUNCATE TABLE bronze.erp_loc_a101;

BULK INSERT bronze.erp_loc_a101
FROM 'C:\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH(
	FIRSTROW = 2, --Starting from second row, skipping the header row
	FIELDTERMINATOR =',',
	TABLOCK  --Locks whole table
);


