CREATE TABLE IF NOT EXISTS
	"passengers" (
		"first_name" TEXT,
		"last_name"  TEXT,
		"age"        TEXT
);

CREATE TABLE IF NOT EXISTS
	"check-ins" (
		"date"      NUMERIC,
		"flight_id" INTEGER,
		FOREIGN KEY ("flight_id") REFERENCES "flights"("id")
	);

CREATE TABLE IF NOT EXISTS
	"airlines" (
		"id"      INTEGER,
		"name"    TEXT,
		"section" TEXT,
		PRIMARY KEY ("id")
	);

CREATE TABLE IF NOT EXISTS
	"flights" (
		"flight_no"      INTEGER,
		"airline_id"     INTEGER,
		"code_from"      TEXT,
		"code_to"        TEXT,
		"date"           NUMERIC,
		"departure_date" NUMERIC,
		"arrival_date"   NUMERIC,
		FOREIGN KEY ("airline_id") REFERENCES "airlines"("id")
	);
