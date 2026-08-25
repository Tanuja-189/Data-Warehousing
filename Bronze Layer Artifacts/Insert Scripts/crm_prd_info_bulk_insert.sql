RUNCATE TABLE bronze.crm_prd_info;

BULK INSERT bronze.crm_prd_info
FROM 'C:\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH(
	FIRSTROW = 2, --Starting from second row, skipping the header row
	FIELDTERMINATOR =',',
	TABLOCK  --Locks whole table
);

