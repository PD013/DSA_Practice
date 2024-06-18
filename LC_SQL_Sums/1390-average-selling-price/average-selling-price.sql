-- # Write your MySQL query statement below
-- -- SELECT 
-- --     product_id,
-- --     ROUND(SUM(units*price)/SUM(units)) as Average_price
-- -- FROM 
-- SELECT  p.product_id,
--         IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) as Average_price
-- FROM 
--     Prices p
-- CROSS JOIN 
--     UnitsSold u
--     WHERE 
--         p.product_id = u.product_id
--                     AND 
--         u.purchase_date BETWEEN p.start_date AND p.end_date
-- GROUP BY 
--     product_id;
-- THis cannot work cause of cross join 
# Write your MySQL query statement below
SELECT p.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) AS average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND
u.purchase_date BETWEEN start_date AND end_date
group by product_id
