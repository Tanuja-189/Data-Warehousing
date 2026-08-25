/*
    Authored by: Tanuja Goli
    Authored on: 25-08-2026
*/
CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME,@batch_start_time DATETIME,@batch_end_time DATETIME;
	BEGIN TRY
		SET @batch_start_time=GETDATE();
		PRINT '=======================================';
		PRINT 'Loading Bronze Layer';
		PRINT '=======================================';

		PRINT '--------------------------------------';
		PRINT 'Loading CRM Tables';
		PRINT '--------------------------------------';

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table:bronze.crm_cust_info';
		TRUNCATE TABLE bronze.crm_cust_info;

		PRINT '>> Inserting data into table:bronze.crm_cust_info';
		BULK INSERT bronze.crm_cust_info
		FROM 'C:\sql-data-warehouse-project\datasets\source_crm\cust_info.csv' --Our data should be at same location where SQL Server is running
		WITH(
			FIRSTROW = 2, 
			FIELDTERMINATOR =',',
			TABLOCK 
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration:'+CAST(DATEDIFF(second,@start_time,@end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> --------------------------------------------';

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table:bronze.crm_prd_info';
		TRUNCATE TABLE bronze.crm_prd_info;

		PRINT '>> Inserting data into table:bronze.crm_prd_info';
		BULK INSERT bronze.crm_prd_info
		FROM 'C:\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		WITH(
			FIRSTROW = 2,  
			FIELDTERMINATOR =',',
			TABLOCK   
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration:'+CAST(DATEDIFF(second,@start_time,@end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> --------------------------------------------';

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table:bronze.crm_sales_details';
		TRUNCATE TABLE bronze.crm_sales_details;

		PRINT '>> Inserting data into table:bronze.crm_sales_details';
		BULK INSERT bronze.crm_sales_details
		FROM 'C:\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		WITH(
			FIRSTROW = 2,  
			FIELDTERMINATOR =',',
			TABLOCK   
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration:'+CAST(DATEDIFF(second,@start_time,@end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> --------------------------------------------';

		PRINT '--------------------------------------';
		PRINT 'Loading ERP Tables';
		PRINT '--------------------------------------';

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table:bronze.erp_cust_az12';
		TRUNCATE TABLE bronze.erp_cust_az12;

		PRINT '>> Inserting data into table:bronze.erp_cust_az12';
		BULK INSERT bronze.erp_cust_az12
		FROM 'C:\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
		WITH(
			FIRSTROW = 2,  
			FIELDTERMINATOR =',',
			TABLOCK   
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration:'+CAST(DATEDIFF(second,@start_time,@end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> --------------------------------------------';

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table:bronze.erp_loc_a101';
		TRUNCATE TABLE bronze.erp_loc_a101;

		PRINT '>> Inserting data into table:bronze.erp_loc_a101';
		BULK INSERT bronze.erp_loc_a101
		FROM 'C:\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
		WITH(
			FIRSTROW = 2,  
			FIELDTERMINATOR =',',
			TABLOCK   
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration:'+CAST(DATEDIFF(second,@start_time,@end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> --------------------------------------------';

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table:bronze.erp_px_cat_g1v2';
		TRUNCATE TABLE bronze.erp_px_cat_g1v2;

		PRINT '>> Inserting data into table:bronze.erp_px_cat_g1v2';
		BULK INSERT bronze.erp_px_cat_g1v2
		FROM 'C:\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
		WITH(
			FIRSTROW = 2,  
			FIELDTERMINATOR =',',
			TABLOCK   
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration:'+CAST(DATEDIFF(second,@start_time,@end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> --------------------------------------------';
		SET @batch_end_time=GETDATE();

		PRINT '>>Loading Bronze Layer is completed';
		PRINT '>>Total time taken to load all tables to the bronze layer is '+CAST(DATEDIFF(second,@batch_start_time,@batch_end_time) AS NVARCHAR)+' seconds';

		END TRY
		BEGIN CATCH
			PRINT '=========================================';
			PRINT 'ERROR OCCURED WHILE LOADING INTO THE BRONZE LAYER';
			PRINT 'Error Message ' + ERROR_MESSAGE();
			PRINT 'Error Number ' + CAST(ERROR_NUMBER() AS NVARCHAR);
			PRINT 'Error state ' + CAST(ERROR_STATE() AS NVARCHAR);
			PRINT '==========================================';
		END CATCH
END
