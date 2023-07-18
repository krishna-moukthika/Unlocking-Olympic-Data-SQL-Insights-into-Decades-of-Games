--Which nation has participated in all of the olympic games? and order the output by first column which is fetched
SELECT n.region, COUNT(DISTINCT h.Games) AS TotalGamesParticipated
FROM olympics_history h, olympics_history_noc_regions n
WHERE h.NOC = n.NOC
GROUP BY n.region
HAVING TotalGamesParticipated = (
    SELECT COUNT(DISTINCT Games)
    FROM olympics_history
)
ORDER BY n.region;
