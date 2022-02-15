.PHONY: mainnet
mainnet:
	curl https://opera.fantom.network/mainnet.g --output ./volumes/opera/mainnet.g

.PHONY: start
start:
	make genesis;\
    docker-compose up -d

.PHONY: restart
restart:
	docker-compose down;\
	make start

.PHONY: stop
stop:
	docker-compose down
