SELECT
	"english_title",
	"artist"
FROM
	"views"
WHERE
	"brightness" = (
		SELECT
			MAX(brightness)
		FROM
			"views"
	);
