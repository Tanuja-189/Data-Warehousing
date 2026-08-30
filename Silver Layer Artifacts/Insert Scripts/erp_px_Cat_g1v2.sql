TRUNCATE TABLE silver.erp_px_cat_g1v2;
INSERT INTO silver.erp_PX_CAT_G1V2 
(
	id
	,cat
	,subcat
	,maintenance
)
SELECT 
id
,TRIM(cat) AS cat
,TRIM(subcat) AS subcat
,TRIM(maintenance) AS maintenance
FROM bronze.erp_px_cat_g1v2