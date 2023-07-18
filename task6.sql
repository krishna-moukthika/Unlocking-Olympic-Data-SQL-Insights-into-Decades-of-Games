--Which Sports were just played only once in the olympics? and Order the output by Sports. output should include number of games.
SELECT Sport, COUNT(DISTINCT Games) AS NumberOfGames, Games
FROM olympics_history
GROUP BY Sport
HAVING COUNT(DISTINCT Games) = 1
ORDER BY Sport;
