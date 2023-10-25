SELECT "name"
FROM "teams"
WHERE "id" IN (SELECT "team_id"
FROM "performances"
WHERE "player_id" = (SELECT "id"
FROM "players"
WHERE "first_name" = 'Satchel'
  AND "last_name" = 'Paige'));
