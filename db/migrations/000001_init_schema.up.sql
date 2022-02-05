CREATE TABLE "contacts" (
  "id" bigserial PRIMARY KEY,
  "firstName" varchar,
  "lastName" varchar NOT NULL,
  "email" varchar NOT NULL,
  "accountId" bigint,
  "created_at" timestamptz DEFAULT (now())
);
CREATE TABLE "accounts" (
  "id" bigserial PRIMARY KEY,
  "name" varchar NOT NULL,
  "created_at" timestamptz DEFAULT (now())
);
ALTER TABLE "contacts"
ADD FOREIGN KEY ("accountId") REFERENCES "accounts" ("id");
CREATE INDEX ON "contacts" ("email");
CREATE INDEX ON "accounts" ("name");