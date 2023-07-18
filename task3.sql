--Mention the total number of nations who participated in each olympics game?. Order the results by games.(Australia has two NOCs)
SELECT h.Games, COUNT(DISTINCT n.region) AS total_countries
FROM olympics_history h, olympics_history_noc_regions n
WHERE h.NOC = n.NOC
GROUP BY h.Games
ORDER BY h.Games;
