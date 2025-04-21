INSERT INTO orders
SELECT *
FROM s3(
  'https://storage.yandexcloud.net/databacket/orders.csv',
  'CSV',
  'order_id UInt64, user_id UInt64, order_date DateTime, total_amount Decimal(10,2), payment_status String'
);

INSERT INTO order_items
SELECT *
FROM s3(
  'https://storage.yandexcloud.net/databacket/order_items.txt',
  'CSV',
  'order_item_id UInt64, order_id UInt64, product_name String, product_price Decimal(10,2), quantity UInt64'
)
SETTINGS format_csv_delimiter = ';', input_format_csv_skip_first_lines = 1;