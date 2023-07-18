--Top 5 athletes who have won the most gold medals. Order the results by gold medals in descending.
WITH gold_medal_counts AS (
    SELECT Name, Team, COUNT(*) AS TotalGoldMedals
    FROM olympics_history
    WHERE Medal = 'Gold'
    GROUP BY Name, Team
)
SELECT Name, Team, TotalGoldMedals
FROM (
    SELECT Name, Team, TotalGoldMedals, RANK() OVER (ORDER BY TotalGoldMedals DESC) AS athlete_rank
    FROM gold_medal_counts
) AS ranked_athletes
WHERE athlete_rank <= 5
ORDER BY TotalGoldMedals DESC
LIMIT 5;
