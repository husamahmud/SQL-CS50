CREATE TABLE
	IF NOT EXISTS "users" (
		"id"         SERIAL PRIMARY KEY,
		"first_name" TEXT         NOT NULL,
		"last_name"  TEXT         NOT NULL,
		"password"   VARCHAR(255) NOT NULL
	);

CREATE TABLE
	IF NOT EXISTS "schools" (
		"id"                   SERIAL PRIMARY KEY,
		"name"                 TEXT NOT NULL,
		"type"                 TEXT,
		"location"             TEXT,
		"date_of_stablishment" NUMERIC
);

CREATE TABLE
	IF NOT EXISTS "companies" (
		"id"       SERIAL PRIMARY KEY,
		"name"     TEXT NOT NULL,
		"industry" TEXT,
		"location" TEXT
	);

CREATE TABLE
	IF NOT EXISTS "conns_with_people" (
		"user_id_1" INTEGER,
		"user_id_2" INTEGER,
		PRIMARY KEY ("user_id_1", "user_id_2")
	);

CREATE TABLE
	IF NOT EXISTS "conns_with_schools" (
		"user_id"    INTEGER,
		"school_id"  INTEGER,
		"start_date" NUMERIC,
		"end_date"   NUMERIC,
		"status"     TEXT CHECK ("status" IN ('earned', 'pursued')),
		"type"       TEXT CHECK ("type"   IN ('BA', 'MA', 'PhD', 'etc')),
		FOREIGN KEY ("user_id")   REFERENCES "users" ("id"),
		FOREIGN KEY ("school_id") REFERENCES "schools" ("id")
	);

CREATE TABLE
	IF NOT EXISTS "conns_with_companies" (
		"user_id"    INTEGER,
		"company_id" INTEGER,
		"title"      TEXT,
		"start_date" NUMERIC,
		"end_date"   NUMERIC,
		FOREIGN KEY ("user_id")    REFERENCES "users" ("id"),
		FOREIGN KEY ("company_id") REFERENCES "companies" ("id")
	);
