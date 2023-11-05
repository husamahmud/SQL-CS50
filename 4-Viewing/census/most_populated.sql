CREATE VIEW
	most_populated AS
SELECT
	district,
	SUM(families),
	SUM(households),
	SUM(population),
	SUM(male),
	SUM(female)
FROM
	census
GROUP BY
	district
ORDER BY
	SUM(population) DESC;
