migrate:
	@echo Starting migrations...
	go run ./cmd/migrator --storage-path=./storage/sso.db --migrations-path=./migrations 
	@echo Successfully migrated
start: 
	go run cmd/sso/main.go --config=./config/local.yaml

test_migrate:
	@echo Starting  test migrations...
	go run ./cmd/migrator --storage-path=./storage/sso.db --migrations-path=./tests/migrations --migrations-table=migrations_test
	@echo Successfully migrated for tests
