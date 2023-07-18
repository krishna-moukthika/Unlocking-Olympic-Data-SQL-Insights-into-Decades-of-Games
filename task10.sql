--Top 5 athletes who have won the most medals (gold/silver/bronze). Order the results by medals in descending.
WITH medal_counts AS (
    SELECT Name, Team, COUNT(*) AS TotalMedals
    FROM olympics_history
    WHERE Medal IN ('Gold', 'Silver', 'Bronze')
    GROUP BY Name, Team
)
SELECT Name, Team, TotalMedals
FROM (
    SELECT Name, Team, TotalMedals, RANK() OVER (ORDER BY TotalMedals DESC) AS athlete_rank
    FROM medal_counts
) AS ranked_athletes
WHERE athlete_rank <= 5
ORDER BY TotalMedals DESC
LIMIT 5;
