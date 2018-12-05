image=car-dashboard
container=car-dashboard-dev
hub_image=solo18/car-dashboard


all: clean build run

clean:
	-docker kill $(container)
	-docker rm $(container)
	-docker rmi $(image)

build:
	docker build -t $(image) .

run:
	docker run --name $(container) -it -p3000:3000 car-dashboard

publish:
	docker tag $(image) $(hub_image):latest
	docker push $(hub_image)


	# run on VM
	# docker run --name car-dashboard -p3000:3000 solo18/car-dashboard
