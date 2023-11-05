CREATE VIEW
	june_vacancies AS
SELECT
	l.id,
	l.property_type,
	l.host_name,
	COUNT(a.date) AS days_vacant
FROM
	listings l
	LEFT JOIN availabilities a ON l.id = a.listing_id
WHERE
	a.available = 'TRUE'
	AND a.date >= '2023-06-01'
	AND a.date < '2023-07-01'
GROUP BY
	l.id,
	l.property_type,
	l.host_name;
