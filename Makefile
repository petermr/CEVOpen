
all: dockerimage

dockerimage:
	docker build -t forestplot .

lint:
	pylint forestplots
	pylint test

test:
	pytest --ignore normami --ignore cephis --ignore integration_tests

integration:
	pytest --ignore normami --ignore cephis --ignore tests
