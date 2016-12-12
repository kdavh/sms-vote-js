build:
	docker build -t sms-vote-js . && \
		docker run --name sms-vote-js-container \
		--rm \
		-p 49163:8080 \
		-it \
		-v `pwd`:/usr/src/app/ \
		sms-vote-js npm install
run:
	docker run --name sms-vote-js-container \
		--rm \
		-p 49163:8080 \
		-it \
		-v `pwd`:/usr/src/app/ \
		sms-vote-js
sh:
	docker run --name sms-vote-js-container-sh \
		--rm \
		-p 49163:8080 \
		-it \
		-v `pwd`:/usr/src/app/ \
		sms-vote-js /bin/bash
