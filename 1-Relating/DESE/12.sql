SELECT d.name AS "district_name",
       e.per_pupil_expenditure,
       s.exemplary
FROM "districts" AS "d"
         JOIN "expenditures" AS "e" ON d.id = e.district_id
         JOIN "staff_evaluations" AS "s" ON d.id = s.district_id
WHERE d.type = 'Public School District'
  AND e.per_pupil_expenditure > (SELECT AVG("per_pupil_expenditure")
                                 FROM "expenditures")
  AND s.exemplary > (SELECT AVG("exemplary")
                     FROM "staff_evaluations")
ORDER BY s.exemplary DESC,
         e.per_pupil_expenditure DESC;
