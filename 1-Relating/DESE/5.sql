SELECT "city",
       COUNT(*) AS "num_public_school"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING "num_public_school" <= 3
ORDER BY "num_public_school" DESC,
         "ciyt" ASC;
