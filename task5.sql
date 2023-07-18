--How many unique athletes have won a gold medal in the Olympics?
SELECT COUNT(DISTINCT Name) AS total_unique_athletes
FROM olympics_history
WHERE Medal = 'Gold'
