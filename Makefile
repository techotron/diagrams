run:
	docker run -d \
		--name diagrams \
		-v $(shell pwd)/imgs:/imgs \
		-v $(shell pwd):/diagram_files \
		mingrammer $(DIAGRAM_FILE)

stop:
	docker kill diagrams && docker rm diagrams

build:
	docker build -t techotron/diagrams .