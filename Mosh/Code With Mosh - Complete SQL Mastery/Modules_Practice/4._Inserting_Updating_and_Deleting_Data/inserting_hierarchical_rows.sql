# Inserting Hierarchical rows 
# Inserting data into multiple tables

# See the 'orders' table. It is composed of data from other tables: customers, order_items, order_statuses, shippers.

INSERT INTO orders (customer_id, order_date, status)
VALUES (
	1,
    '2019-01-02',
    1
);

INSERT INTO order_items
VALUES ( 
	LAST_INSERT_ID(),
	1,
    1,
    2.95
), (
	LAST_INSERT_ID(),
    2,
    1,
    3.95
);