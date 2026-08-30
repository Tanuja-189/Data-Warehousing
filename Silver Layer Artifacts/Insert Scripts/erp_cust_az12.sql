INSERT INTO silver.erp_CUST_AZ12 
(
	cid
	,bdate
	,gen
)
SELECT 
CASE WHEN cid LIKE 'NAS%' THEN SUBSTRING(cid,4,LEN(cid)) -- did this based on observation
     ELSE cid
END AS cid
,CASE WHEN bdate>GETDATE() THEN NULL
	  ELSE bdate
END AS bdate
,CASE WHEN TRIM(UPPER(gen)) IN ('M','MALE') THEN 'Male'
	  WHEN TRIM(UPPER(gen)) IN ('F','FEMALE') THEN 'Female'
	  ELSE 'N/A'
END AS gen
FROM bronze.erp_cust_az12


