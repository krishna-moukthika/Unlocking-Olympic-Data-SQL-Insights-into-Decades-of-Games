--Top 5 most successful countries in olympics. Success is defined by no of medals won.
WITH country_medal_counts AS (
    SELECT NOC, COUNT(*) AS TotalMedals
    FROM olympics_history
    WHERE Medal IN ('Gold', 'Silver', 'Bronze')
    GROUP BY NOC
),
aggregated_medals AS (
    SELECT
        nhrc.region,
        SUM(cmc.TotalMedals) AS TotalMedals
    FROM country_medal_counts cmc
    JOIN olympics_history_noc_regions nhrc
        ON cmc.NOC = nhrc.NOC
    GROUP BY nhrc.region
)
SELECT
    region,
    TotalMedals,
    DENSE_RANK() OVER (ORDER BY TotalMedals DESC) AS country_rank
FROM aggregated_medals
ORDER BY TotalMedals DESC
LIMIT 5;
