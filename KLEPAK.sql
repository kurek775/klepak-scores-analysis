CREATE TABLE "persons" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "crew_id" integer,
  "category" varchar
);

CREATE TABLE "crews" (
  "id" integer PRIMARY KEY,
  "leaders" varchar[],
  "number" integer,
  "password" varchar
);

CREATE TABLE "results" (
  "id" integer PRIMARY KEY,
  "sport_id" integer,
  "person_id" integer,
  "score" float
);

CREATE TABLE "sports" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "metric" varchar
);

CREATE TABLE "tours" (
  "id" integer PRIMARY KEY,
  "year" integer,
  "part" varchar,
  "theme" varchar
);

CREATE TABLE "templates" (
  "id" integer PRIMARY KEY,
  "bgImage" blob,
  "font" blob,
  "textPosition" varchar
);

ALTER TABLE "crews" ADD FOREIGN KEY ("id") REFERENCES "persons" ("crew_id");

ALTER TABLE "persons" ADD FOREIGN KEY ("id") REFERENCES "results" ("person_id");

ALTER TABLE "sports" ADD FOREIGN KEY ("id") REFERENCES "results" ("sport_id");

ALTER TABLE "tours" ADD FOREIGN KEY ("id") REFERENCES "templates" ("id");

ALTER TABLE "tours" ADD FOREIGN KEY ("id") REFERENCES "sports" ("id");

ALTER TABLE "tours" ADD FOREIGN KEY ("id") REFERENCES "crews" ("id");
