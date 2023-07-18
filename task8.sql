--Fetch oldest athlete to win a gold medal
SELECT Name, Sex, Age, Team, Games, City, Sport, Event, Medal, 1 AS rnk
FROM olympics_history
WHERE Medal = 'Gold'
ORDER BY Age DESC
LIMIT 1;
