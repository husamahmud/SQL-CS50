SELECT "name"
FROM "schools"
WHERE "id" IN (SELECT "school_id"
               FROM "graduation_rates"
               WHERE "graduated" = 100);
