IF OBJECT_ID('bronze.erp_LOC_A101','U') IS NOT NULL --U stands for user defined table
	DROP TABLE bronze.erp_LOC_A101;
CREATE TABLE bronze.erp_LOC_A101(
	CID NVARCHAR(50)
	,CNTRY NVARCHAR(50)
)

