SELECT
	teams.name,
	ROUND(AVG(salaries.salary), 2) AS average_salary
FROM
	teams
	JOIN salaries ON teams.id = salaries.team_id
WHERE
	salaries.year = 2001
GROUP BY
	teams.name
ORDER BY
	average_salary
LIMIT
	5;
