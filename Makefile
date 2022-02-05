migrateup:
	migrate -path db/migrations -database "postgres://dev:password@localhost:5432/demo?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migrations -database "postgres://dev:password@localhost:5432/demo?sslmode=disable" -verbose down