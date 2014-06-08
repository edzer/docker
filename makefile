rm:
	docker rm `docker ps -a | grep Exit | awk '{print $$1}'`

rmi:
	docker rmi `docker images | awk '{if($$1=="<none>"){print($$3)}}'`

