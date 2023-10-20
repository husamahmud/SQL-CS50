SELECT COUNT(*) AS "num_public_school",
       "city"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY "num_public_school" DESC,
         "city" ASC LIMIT
	10;
