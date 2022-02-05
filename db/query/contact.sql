-- name: CreateContact :one
INSERT INTO contacts (first_name, last_name, email, account_id)
VALUES ($1, $2, $3, $4)
RETURNING *;
-- name: GetContact :one
SELECT *
FROM contacts
WHERE id = $1
LIMIT 1;
-- name: ListContacts :many
SELECT *
FROM contacts
ORDER BY id
LIMIT $1 OFFSET $2;
-- name: UpdateContact :one
UPDATE contacts
SET first_name = $2,
  last_name = $3,
  email = $4,
  account_id = $5
WHERE id = $1
RETURNING *;
-- name: DeleteContact :exec
DELETE FROM contacts
WHERE id = $1;