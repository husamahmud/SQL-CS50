SELECT
	"english_title"
FROM
	"views"
WHERE
	"artist" = 'Hiroshige'
	AND "english_title" IS NOT NULL
ORDER BY
	"brightness" DESC
LIMIT
	5;
