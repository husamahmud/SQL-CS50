SELECT
	"english_title"
FROM
	"views"
WHERE
	"artist" = 'Hokusai'
	AND "english_title" IS NOT NULL
ORDER BY
	"contrast"
LIMIT
	5;
