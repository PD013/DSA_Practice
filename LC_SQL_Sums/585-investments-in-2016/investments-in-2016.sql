# Write your MySQL query statement below
# Write your MySQL query statement below

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(pid) = 1 
)
AND tiv_2015 IN
(SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(pid) > 1
);

-- SELECT ROUND(SUM(TIV_2016),2) AS TIV_2016
-- FROM
-- (SELECT *,
-- COUNT(*) OVER(PARTITION BY TIV_2015) AS CNT1,
-- COUNT(*) OVER(PARTITION BY LAT, LON) AS CNT2
-- FROM INSURANCE
-- ) AS TBL
-- WHERE CNT1 > =2 AND CNT2 =1