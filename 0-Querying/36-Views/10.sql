SELECT
	"english_title" AS "Most popular"
FROM
	"views"
WHERE
	"artist" = 'Hokusai'
ORDER BY
	'print_number' DESC
LIMIT
	10;
