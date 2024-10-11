# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) as fraction
FROM Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY))
IN (SELECT player_id, MIN(event_date) AS first_login FROM ACTIVITY GROUP BY player_id)




-- This is a little modified Version for myself 
-- So for eg Lets bend this question as to Find Players who have logedin 2 consecutive times and also find the count how many times totlay they have login consecutive times like eg player 1 logedin 2 consecutive times so it also checks the count of such occurences  
-- WITH consecutive_logins AS (
--     SELECT
--         player_id,
--         event_date,
--         LAG(event_date) OVER (PARTITION BY player_id ORDER BY event_date) AS previous_date
--     FROM
--         Activity
-- )
-- SELECT
--     player_id,
--     COUNT(*) AS consecutive_login_count
-- FROM
--     consecutive_logins
-- WHERE
--     DATEDIFF(event_date, previous_date) = 1
-- GROUP BY
--     player_id
-- HAVING
--     consecutive_login_count > 0;
