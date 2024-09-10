

SELECT id,type FROM 
(SELECT
    Tree.id,
    COUNT(sub.id) AS total,
    CASE
        WHEN EXISTS (SELECT 1 FROM Tree AS t WHERE t.id = Tree.id AND t.p_id IS NULL) THEN 'Root'
        WHEN COUNT(sub.id) > 0 THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM
    Tree
LEFT JOIN
    Tree AS sub
ON
    Tree.id = sub.p_id
GROUP BY
    Tree.id
ORDER BY
    Tree.id) temp;

