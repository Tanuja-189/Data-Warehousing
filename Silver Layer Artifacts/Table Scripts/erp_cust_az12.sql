IF OBJECT_ID('silver.erp_CUST_AZ12','U') IS NOT NULL --U stands for user defined table
	DROP TABLE silver.erp_CUST_AZ12;
CREATE TABLE silver.erp_CUST_AZ12(
	CID NVARCHAR(50)
	,BDATE DATE
	,GEN NVARCHAR(50)
	, dwh_create_date DATETIME2 DEFAULT GETDATE()
)