# Write your MySQL query statement below
SELECT w.id AS id FROM Weather w
WHERE w.temperature > (SELECT w1.temperature FROM Weather w1 WHERE w1.recordDate = DATE_SUB(w.recordDate , INTERVAL 1 DAY));