TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM 'C:\sql-data-warehouse-project\datasets\source_crm\cust_info.csv' --Our data should be at same location where SQL Server is running
WITH(
	FIRSTROW = 2, --Starting from second row, skipping the header row
	FIELDTERMINATOR =',',
	TABLOCK  --Locks whole table
);

-- Further in data checks, check if any col is NULL and if any cols data is swapped or mismatched.
