# Write your MySQL query statement below
SELECT DISTINCT a.num AS ConsecutiveNums
FROM Logs a
JOIN Logs b
    ON a.id = b.id + 1
JOIN Logs c
    ON a.id = c.id + 2
WHERE a.num = b.num
  AND a.num = c.num;

  /*SELECT DISTINCT a.num AS ConsecutiveNums
SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT
        num,
        LAG(num, 1) OVER (ORDER BY id) AS prev_num,
        LAG(num, 2) OVER (ORDER BY id) AS prev2_num
    FROM Logs
) t
WHERE num = prev_num
  AND num = prev2_num;*/