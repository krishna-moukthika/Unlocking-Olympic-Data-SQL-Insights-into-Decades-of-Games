--Break down all olympic games where india won medal for Hockey and how many medals in each olympic games and order the result by no of medals in descending.
SELECT Team, Sport, Games, COUNT(*) AS TotalMedals
FROM olympics_history
WHERE Medal IN ('Gold', 'Silver', 'Bronze') AND Team = 'India' AND Sport = 'Hockey'
GROUP BY Games
ORDER BY TotalMedals DESC;
