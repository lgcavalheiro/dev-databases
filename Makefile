c-build-no-volume:
	docker run --name mysqldatabase -e MYSQL_ROOT_PASSWORD=1234 -e MYSQL_DATABASE=aps1 -e MYSQL_USER=admin -e MYSQL_PASSWORD=1234 -p 3306:3306 -d mysql:latest

c-build-with-volume:
	docker run --name mysqldatabase -v dbvol:$${HOME}/mysqldatabase/volume -e MYSQL_ROOT_PASSWORD=1234 -e MYSQL_DATABASE=aps1 -e MYSQL_USER=admin -e MYSQL_PASSWORD=1234 -p 3306:3306 -d mysql:latest

c-stop:
	docker stop mysqldatabase

c-start:
	docker start mysqldatabase

c-clean:
	docker rm mysqldatabase

c-enter:
	docker exec -it mysqldatabase bash

v-create:
	mkdir -p $${HOME}/mysqldatabase/volume

v-wipe:
	rm -rf $${HOME}/mysqldatabase
