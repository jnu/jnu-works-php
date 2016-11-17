.PHONY: image run

image:
	docker build -t joen/jnuworks:php .

run: image
	docker kill php ;\
	docker rm php ;\
	docker run -d \
				--name php \
				-p 5001:80 \
				-v "$(PWD)"/mysql:/var/lib/mysql \
				joen/jnuworks:php
