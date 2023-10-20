SELECT s.name AS "school_name",
       e.per_pupil_expenditure,
       g.graduated
FROM "schools" AS "s"
         JOIN "expenditures" AS "e" ON s.district_id = e.district_id
         JOIN "graduation_rates" AS "g" ON s.id = g.school_id
ORDER BY e.per_pupil_expenditure DESC,
         s.name ASC;
