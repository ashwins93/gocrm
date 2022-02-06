CREATE TABLE "contacts" (
  "id" bigserial PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "account_id" bigint,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);
CREATE TABLE "accounts" (
  "id" bigserial PRIMARY KEY,
  "name" varchar NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);
ALTER TABLE "contacts"
ADD FOREIGN KEY ("account_id") REFERENCES "accounts" ("id");
CREATE INDEX ON "contacts" ("email");
CREATE INDEX ON "accounts" ("name");