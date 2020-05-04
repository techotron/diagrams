run:
	docker run -d \
		--name mingrammer \
		-v $(shell pwd)/imgs:/imgs \
		-v $(shell pwd):/diagram_files \
		mingrammer $(DIAGRAM_FILE)

stop:
	docker kill mingrammer && docker rm mingrammer

build:
	docker build -t techotron/mingrammer .