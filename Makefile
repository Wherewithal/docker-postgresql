user=wherewithal
version=9.4

all: build

build:
	docker build --tag=$(user)/postgresql:$(version) .
	docker tag -f $(user)/postgresql:$(version) $(user)/postgresql:latest

