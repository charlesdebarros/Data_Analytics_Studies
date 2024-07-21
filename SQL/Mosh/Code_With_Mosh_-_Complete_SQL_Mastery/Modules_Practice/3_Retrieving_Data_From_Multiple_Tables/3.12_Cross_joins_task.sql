# 3.12 CROSS join - task

-- Do a CROSS join between shippers and products
	-- using the implicit syntax
	-- and then using the explicit syntax

USE sql_store;

# Implicit
SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh, products p
ORDER BY sh.shipper_id;

# Explicit
SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh 
CROSS JOIN products p
ORDER BY sh.shipper_id;