SELECT "name",
       "pupils"
FROM "districts"
         JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id";
