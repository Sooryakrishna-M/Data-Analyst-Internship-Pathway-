-- SQLite
-- 1. View first few rows
SELECT * FROM shipping_data LIMIT 5;

-- 2. Total number of orders
SELECT COUNT(*) AS total_orders FROM shipping_data;

-- 3. Orders by country
SELECT Mode_of_Shipment, AVG(Cost_of_the_Product) AS avg_cost
FROM shipping_data
GROUP BY Mode_of_Shipment;

-- 4. Average cost by shipping mode
SELECT Gender, COUNT(*) AS order_count
FROM shipping_data
GROUP BY Gender;

-- 5
SELECT COUNT(*) AS delayed_orders
FROM shipping_data
WHERE "Reached.on.Time_Y.N" = 0;

--6
SELECT Product_importance, AVG(Customer_rating) AS avg_rating
FROM shipping_data
GROUP BY Product_importance;

--7
SELECT ID, Discount_offered
FROM shipping_data
WHERE Discount_offered > (
  SELECT AVG(Discount_offered) FROM shipping_data
);

--8
CREATE VIEW shipment_summary AS
SELECT Mode_of_Shipment, COUNT(*) AS total_shipments,
       AVG(Weight_in_gms) AS avg_weight
FROM shipping_data
GROUP BY Mode_of_Shipment;

SELECT * FROM shipment_summary;

