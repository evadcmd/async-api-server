.PHONY: aerich-init
aerich-init:
	aerich init -t app.config.TORTOISE_ORM

.PHONY: db-init
db-init:
	aerich init-db