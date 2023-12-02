CREATE TABLE
	triplets (
		sentence_number INTEGER,
		start_char      INTEGER,
		length          INTEGER
	);

INSERT INTO
	triplets (sentence_number, start_char, length)
VALUES
	(14, 98, 4),
	(114, 3, 5),
	(618, 72, 9),
	(630, 7, 3),
	(932, 12, 5),
	(2230, 50, 7),
	(2346, 44, 10),
	(3041, 14, 5);

CREATE VIEW
	message AS
SELECT
	substr (s.sentence, t.start_char, t.length) AS phrase
FROM
	sentences AS s
	JOIN triplets AS t ON t.sentence_number = s.id;
