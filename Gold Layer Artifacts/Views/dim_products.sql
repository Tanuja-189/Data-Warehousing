CREATE  OR ALTER VIEW gold.dim_products AS
SELECT
	 ROW_NUMBER() OVER(ORDER BY pn.prd_start_dt,pn.prd_key) AS product_key
	 ,pn.prd_id AS product_id
	,pn.prd_key AS product_number
	,pn.prd_nm AS product_name
	,pn.cat_id AS category_id
	,pc.cat AS category
	,pc.subcat AS subcategory
	,pc.maintenance AS maintenenace
	,pn.prd_cost AS product_cost
	,pn.prd_line AS product_line
	,pn.prd_start_dt AS product_start_date
FROM
	silver.crm_prd_info pn
LEFT JOIN
	silver.erp_PX_CAT_G1V2 pc
ON pn.cat_id = pc.id
WHERE prd_end_dt IS NULL -- gives the current prodcuts data