// Code generated by sqlc. DO NOT EDIT.

package db

import (
	"database/sql"
)

type Account struct {
	ID        int64        `json:"id"`
	Name      string       `json:"name"`
	CreatedAt sql.NullTime `json:"createdAt"`
}

type Contact struct {
	ID        int64          `json:"id"`
	FirstName sql.NullString `json:"firstName"`
	LastName  string         `json:"lastName"`
	Email     string         `json:"email"`
	AccountID sql.NullInt64  `json:"accountID"`
	CreatedAt sql.NullTime   `json:"createdAt"`
}
