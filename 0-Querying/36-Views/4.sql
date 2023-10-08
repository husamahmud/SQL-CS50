SELECT
	COUNT(*)
FROM
	"views"
WHERE
	"artist" = 'Hiroshige'
	AND "english_title" LIKE '%Eastern Capital%';
