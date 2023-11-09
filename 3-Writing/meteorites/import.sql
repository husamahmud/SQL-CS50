.mode csv
.import meteorites.csv temp

--> Set empty values to NULL
UPDATE "temp"
SET
	"mass" = NULL
WHERE
	"mass" = ''
	OR "mass" IS NULL;

UPDATE "temp"
SET
	"year" = NULL
WHERE
	"year" = ''
	OR "year" IS NULL;

UPDATE "temp"
SET
	"lat" = NULL
WHERE
	"lat" = ''
	OR "lat" IS NULL;

UPDATE "temp"
SET
	"long" = NULL
WHERE
	"long" = ''
	OR "long" IS NULL;

--> Round certain columns to two decimal places
UPDATE "temp"
SET
	"mass" = ROUND("mass", 2),
	"lat" = ROUND("lat", 2),
	"long" = ROUND("long", 2);

--> Delete rows with nametype 'Relict'
DELETE FROM "temp"
WHERE
	nametype = 'Relict';

--> Create the 'meteorites' table with new_order column
CREATE TABLE
	meteorites AS
SELECT
	ROW_NUMBER() OVER (
		ORDER BY
			"year",
			"name"
	) AS id,
	"name",
	"class",
	"mass",
	"discovery",
	"year",
	"lat",
	"long"
FROM
	"temp";

--> Drop the temporary table
DROP TABLE "temp";
