# My Maven App

This is a simple Spring Boot application that provides an API to return the current time.

## Project Structure

```
my-maven-app
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── example
│   │   │           ├── App.java
│   │   │           └── controller
│   │   │               └── TimeController.java
│   │   └── resources
│   │       └── application.properties
│   └── test
│       ├── java
│       │   └── com
│       │       └── example
│       │           └── AppTest.java
│       └── resources
├── pom.xml
└── README.md
```

## Prerequisites

- Java 11 or higher
- Maven 3.6 or higher

## Build the Application

To build the application, navigate to the project directory and run:

```
mvn clean install
```

## Run the Application

To run the application, use the following command:

```
mvn spring-boot:run
```

## Access the API

Once the application is running, you can access the current time API at:

```
http://localhost:8080/api/time
```

## Logging

The application logs the current time whenever the API is accessed. You can check the logs for the output. 

## Testing

To run the tests, execute:

```
mvn test
```

This will run the unit tests defined in the `AppTest.java` file.