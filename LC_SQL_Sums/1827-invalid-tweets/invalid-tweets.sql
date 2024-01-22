# Write your MySQL query statement below

# While 'LENGTH' function measures the length in bytes, 'CHAR_LENGTH' function measures the length of a string in characters

# This is the correct solution 
SELECT tweet_id FROM Tweets
WHERE CHAR_LENGTH(content) > 15 