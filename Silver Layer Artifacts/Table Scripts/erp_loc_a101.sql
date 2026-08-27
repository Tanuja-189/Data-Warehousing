IF OBJECT_ID('silver.erp_LOC_A101','U') IS NOT NULL --U stands for user defined table
	DROP TABLE silver.erp_LOC_A101;
CREATE TABLE silver.erp_LOC_A101(
	CID NVARCHAR(50)
	,CNTRY NVARCHAR(50)
	, dwh_create_date DATETIME2 DEFAULT GETDATE()
)