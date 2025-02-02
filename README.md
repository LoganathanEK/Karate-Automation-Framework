karate-Automation-Framework

This repository contains an API testing framework using Karate, designed for testing RESTful APIs with an emphasis on simplicity, speed, and flexibility. It features automated scenarios to create, verify, and delete products via different API endpoints. The framework includes:

Karate for writing BDD-style tests
Automated test cases for Create, Delete, and Verify API functionality
Environment configuration to support different test environments (e.g., dev, qa)
Setup Instructions:

Clone the repository.
Ensure Maven is installed.
Set up environment variables as required (e.g., karate.env).
Run the tests via Maven:
bash
Copy
Edit
mvn test -Dkarate.options="--tags @PostAPI" -Dkarate.env=dev
For more information, refer to the documentation within the repository.
