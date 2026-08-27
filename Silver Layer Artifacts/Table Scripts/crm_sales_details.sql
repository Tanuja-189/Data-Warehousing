IF OBJECT_ID('silver.crm_sales_details','U') IS NOT NULL --U stands for user defined table
	DROP TABLE silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details(
	sls_ord_num NVARCHAR(50)
	,sls_prd_key NVARCHAR(50)
	,sls_cust_id INT
	,sls_order_dt INT
	,sls_ship_dt INT
	,sls_due_dt INT
	,sls_sales INT
	,sls_quantity INT
	,sls_price INT
	, dwh_create_date DATETIME2 DEFAULT GETDATE()
)