SELECT payment_status,
       COUNT(*) AS orders_count,
       SUM(total_amount) AS total_sum,
       AVG(total_amount) AS avg_order_amount
FROM orders
GROUP BY payment_status;

SELECT COUNT(order_item_id) AS total_items,
       SUM(product_price * quantity) AS overall_total,
       AVG(product_price) AS overall_avg_price
FROM order_items;

SELECT order_date,
       COUNT(*) AS orders_per_day,
       SUM(total_amount) AS daily_total
FROM orders
GROUP BY order_date
ORDER BY order_date;

SELECT user_id,
       COUNT(*) AS orders_count,
       SUM(total_amount) AS total_spent
FROM orders
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;