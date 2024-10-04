export CAROOT ?= $(shell cd dev ; go run filippo.io/mkcert -CAROOT)

.PHONY: run
run: dev/localhost.crt
	@docker compose up --build --remove-orphans --force-recreate

dev/localhost.crt:
	@dev/cert
