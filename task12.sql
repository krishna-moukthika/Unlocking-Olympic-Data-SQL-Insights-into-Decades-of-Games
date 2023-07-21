--In which Sport/event, India has won highest medals.
WITH india_medal_counts AS (
    SELECT Sport, Event, COUNT(*) AS TotalMedals
    FROM olympics_history
    WHERE Medal IN ('Gold', 'Silver', 'Bronze') AND Team = 'India'
    GROUP BY Sport, Event
)
SELECT Sport, TotalMedals
FROM (
    SELECT Sport, Event, TotalMedals, RANK() OVER (ORDER BY TotalMedals DESC) AS sport_rank
    FROM india_medal_counts
) AS ranked_sports
WHERE sport_rank = 1;
