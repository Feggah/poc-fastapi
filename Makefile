run:
	docker run -d -p 80:80 fastapi-poc

update:
	docker build -t fastapi-poc .

all: update run
