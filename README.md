karate-Automation-Framework
This repository contains an API testing framework using Karate for functional testing and Scala Gatling for performance testing. It is designed to test RESTful APIs efficiently with an emphasis on simplicity, speed, and flexibility.

Features:
✅ Karate Framework for functional API testing
✅ Gatling Performance Testing for load and stress testing
✅ Automated test cases for Create, Delete, and Verify API functionality
✅ Environment configuration to support different test environments (dev, qa, etc.)

Setup Instructions:
Clone the repository.
Ensure Maven and Scala are installed.
Set up environment variables as required (e.g., karate.env).

Run Karate tests via Maven:
mvn test -Dkarate.options="--tags @PostAPI" -Dkarate.env=dev

Run Gatling performance tests via mvn:
mvn clean test-compile gatling:test

For more information, refer to the documentation within the repository. 🚀
