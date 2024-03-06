# Inserting a Single Row
# We can use NULL or Default fields set to 'Null', 'Empty', or a set value like '0'

# First method
-- INSERT INTO customers
-- VALUE (
-- 	DEFAULT, 
--     'Bob', 
--     'Bacall',
--     '1990-01-01',
--     NULL,
--     '123 Avenue Road',
--     'White Plains',
--     'NY',
--     DEFAULT
-- )

# Second method
# Notice no need to declare DEFAULT or NULL
# The order of the fields do not matter as long as the values match the order of the fields
INSERT INTO customers (
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state
)
VALUE (
    'Bob', 
    'Bacall',
    '1990-01-01',
    '123 Avenue Road',
    'White Plains',
    'NY'
); 

SELECT *
FROM customers;