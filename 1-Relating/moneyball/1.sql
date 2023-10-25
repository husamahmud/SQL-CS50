SELECT salaries.year,
	   ROUND(AVG(salaries.salary), 2) AS "average salary"
FROM salaries
		 JOIN players ON salaries.player_id = players.id
GROUP BY salaries.year
ORDER BY salaries.year DESC;
