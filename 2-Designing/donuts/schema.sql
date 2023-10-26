CREATE TABLE
	IF NOT EXISTS "ingredients" (
		"id"             INTEGER,
		"name" 			 TEXT,
		"price_per_unit" DECIMAL(10, 2),
		PRIMARY KEY ("id")
	);

CREATE TABLE
	IF NOT EXISTS "donuts" (
		"id"              INTEGER,
		"name"            TEXT,
		"ingredient_id"   INTEGER,
		"is_gluten_free"  BOOLEAN,
		"price_per_donut" DECIMAL(10, 2),
		PRIMARY KEY ("id"),
		FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("id")
	);

CREATE TABLE
	IF NOT EXISTS "orders" (
		"id"           INTEGER,
		"order_number" VARCHAR(255),
		"cutomer_id"   INTEGER,
		PRIMARY KEY ("id"),
		FOREIGN KEY ("cutomer_id") REFERENCES "cutomers" ("id")
	);

CREATE TABLE
	IF NOT EXISTS "donuts_orders" (
		"id"          INTEGER,
		"order_id"    INTEGER,
		"customer_id" INTEGER,
		PRIMARY KEY ("id"),
		FOREIGN KEY ("order_id") REFERENCES "orders" ("id"),
		FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
	);

CREATE TABLE
	IF NOT EXISTS "customers" (
		"id"         INTEGER,
		"first_name" INTEGER,
		"last_name"  INTEGER,
		PRIMARY KEY ("id")
	);

CREATE TABLE
	IF NOT EXISTS "customer_order_history" (
		"customer_id" INTEGER,
		"order_id"    INTEGER,
		PRIMARY KEY ("customer_id", "order_id"),
		FOREIGN KEY ("customer_id") REFERENCES "customers" ("id"),
		FOREIGN KEY ("order_id")    REFERENCES "orders" ("id")
	);


