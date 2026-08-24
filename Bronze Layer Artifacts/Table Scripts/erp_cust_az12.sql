IF OBJECT_ID('bronze.erp_CUST_AZ12','U') IS NOT NULL --U stands for user defined table
	DROP TABLE bronze.erp_CUST_AZ12;
CREATE TABLE bronze.erp_CUST_AZ12(
	CID NVARCHAR(50)
	,BDATE DATE
	,GEN NVARCHAR(50)
)

