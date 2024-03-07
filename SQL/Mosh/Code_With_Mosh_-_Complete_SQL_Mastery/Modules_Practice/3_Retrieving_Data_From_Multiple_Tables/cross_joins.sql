# CROSS joins
# Combine or join every record on the first table with every record on the second table.
# Because of the nature of the join, there is no 'ON' condition.
# A CROSS join is useful when, for example, we need to combine clothes different sizes with clothes different colours

# Explicit syntax
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;

# Implicit syntax
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c, products p
ORDER BY c.first_name;