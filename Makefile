migrate:
	@echo Starting migrations...
	go run ./cmd/migrator --storage-path=./storage/sso.db --migrations-path=./migrations 
	@echo Successfully migrated
start: 
	go run cmd/sso/main.go --config=./config/local.yaml