-- *** The Lost Letter ***
SELECT
	"address",
	"type"
FROM
	"addresses"
WHERE
	"id" = (
		SELECT
			"to_address_id"
		FROM
			"packages"
		WHERE
			"contents" = 'Congratulatory letter'
	);

-- *** The Devious Delivery ***
SELECT
	"type"
FROM
	"addresses"
WHERE
	"id" = (
		SELECT
			"address_id"
		FROM
			"scans"
		WHERE
			"package_id" = (
				SELECT
					"id"
				FROM
					"packages"
				WHERE
					"from_address_id" IS NULL
			)
			AND "action" = 'Drop'
	);

SELECT
	"contents"
FROM
	"packages"
WHERE
	"from_address_id" IS NULL;

-- *** The Forgotten Gift ***
SELECT
	"contents"
FROM
	"packages"
WHERE
	"from_address_id" = (
		SELECT
			"id"
		FROM
			"addresses"
		WHERE
			"address" = '109 Tileston Street'
	);

