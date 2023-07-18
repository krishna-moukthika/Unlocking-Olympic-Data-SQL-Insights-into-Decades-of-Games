--Fetch the total number of sports played in each olympic games. Order by no of sports by descending.
SELECT Games, COUNT(DISTINCT Sport) AS NumberOfSports
FROM olympics_history
GROUP BY Games
ORDER BY NumberOfSports DESC;
