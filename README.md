# Demo project for Robot Framework testing with Zalenium

## Prerequisites

* docker
* docker-compose
* docker-selenium image (`docker pull elgalu/selenium`)

## Running tests

```
docker-compose up robot
```

### Rebuild containers and run tests

```
docker-compose up --build robot
```

### Passing arguments to robot

```
ROBOT_ARGS="-v BROWSER:firefox -v SELENIUM_SPEED:2" docker-compose up robot
```

## Stop environment

```
docker-compose down
```
