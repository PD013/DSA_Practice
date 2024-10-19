# Write your MySQL query statement below
SELECT x,y,z,
CASE # At any time 2 Sides of Triangle shall be greater than the 3rd
    WHEN x + y <= z THEN 'No'
    WHEN y + z <= x THEN 'No'
    WHEN z + x <= y THEN 'No'
    ELSE 'Yes'
END AS triangle 
FROM Triangle 

# Found this technique using IF(conditions,if proven codition,else condition)
# Write your MySQL query statement below
-- select *, if(x+y>z and y+z>x and z+x>y, "Yes", "No") as triangle from Triangle