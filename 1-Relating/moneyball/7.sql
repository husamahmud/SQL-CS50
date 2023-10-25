SELECT "first_name",
	   "last_name"
FROM "players"
WHERE "id" = (SELECT "player_id"
FROM "salaries"
ORDER BY "salary" DESC
	LIMIT
	1
	);
