PASSWORD = 1234
DATABASE = aps1
USER=admin
CONTAINER=mysqldatabase

build:
	docker run --name $(CONTAINER) -e MYSQL_ROOT_PASSWORD=$(PASSWORD) \
	-e MYSQL_DATABASE=$(DATABASE) -e MYSQL_USER=$(USER) -e MYSQL_PASSWORD=$(PASSWORD) \
	-p 3306:3306 -d mysql:latest

stop:
	docker stop $(CONTAINER)

start:
	docker start $(CONTAINER)

clean:
	docker rm $(CONTAINER)

enter:
	docker exec -it $(CONTAINER) bash
