TRUNCATE TABLE silver.erp_loc_a101;
INSERT INTO silver.erp_loc_a101 
(
	cid
	,cntry
)
SELECT
REPLACE(cid,'-','') cid, -- to keep intact with customer id in silver.crm_cust_info
CASE WHEN TRIM(cntry) = 'DE' THEN 'Germany'
	 WHEN TRIM(cntry) IN ('US','USA') THEN 'United States'
	 WHEN TRIM(cntry) = '' OR CNTRY IS NULL THEN 'N/A'
	 ELSE TRIM(CNTRY)
END AS cntry
FROM bronze.erp_loc_a101;
