SELECT d.name AS "district_name",
       e.per_pupil_expenditure
FROM "districts" AS "d"
         JOIN "expenditures" AS "e" ON d.id = e.district_id
WHERE d.type = 'Public School District'
ORDER BY e.per_pupil_expenditure DESC LIMIT
	10;
