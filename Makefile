ITRI_CERT=/etc/ssl/certs/*__CN_ITRIRoot256.pem

.PHONY: update-cert
update-cert:
	cp -p ${ITRI_CERT} kibana/CN_ITRIRoot256.pem

.PHONY: build
build:
	set -e; \
	docker compose pull; \
	docker compose build

.PHONY: start
start:
	docker compose up -d

.PHONY: setup
setup:
	docker compose up setup

.PHONY: log
log:
	docker compose logs -f

.PHONY: all
all: build start log
