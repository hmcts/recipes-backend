# Recipes API backend

This is a generalised backend service which can be used to deploy to multiple clusters for testing purposes with customization via the chart values.

## Purpose

The purpose of this service is to provide an example of how a Spring Boot application can be
set up in HMCTS, so that it can be processed by the pipeline and get deployed to AKS.

## What's inside

The project contains a Spring Boot app that exposes a single endpoint ([/src](/src)).

## Building and deploying the application

### Building the application

The project uses [Gradle](https://gradle.org) as a build tool. It already contains
`./gradlew` wrapper script, so there's no need to install gradle.

To build the project execute the following command:

```bash
  ./gradlew build
```

### Running the application

See `docker-compose.yml` and set the required environment variables.  They are currently unset.

Create and run docker image:

```bash
  docker-compose up --build
```

This will start the API container exposing the application on host port 9080

In order to test if the application is up, you can call its health endpoint:

```bash
  curl http://localhost:9080/health
```

You should get a response similar to this:

```json
  {"status":"UP","diskSpace": {"status":"UP","total":249644974080,"free":137188298752,"threshold":10485760}}
```

## License

This project is licensed under the MIT License - see the [LICENCE](LICENCE.md) file for details.
