# Hands-on challenges

1. Build a Simple REST API with CRUD Operations and Sorting Algorithm (in Golang but you may also do a similar project in Python or Java)

```bash

**Context**

Welcome to AlphaTech, where we build simplified software solutions. You're a part of the backend team and we're eager to see how you adapt to our stack. Our primary language is Golang and we're currently working on a series of microservices.

**The Project**

We're in the process of developing a service that requires fast read and write operations. As a quick POC (Proof of Concept), you are tasked to build a REST API in Golang that performs CRUD (Create, Read, Update, Delete) operations on a list of products. Additionally, implement a sorting algorithm that sorts these products based on price.

**Requirements**

REST API: Your API should have endpoints to:

- Create a product
- Read a product
- Update a product
- Delete a product
- List all products

Data Structure: Use a simple struct for a product, which includes:

- ID
- Name
- Price

Sorting Algorithm: Implement a sorting function that sorts the products based on price. You can use any sorting algorithm.

Test Cases: Write test cases to validate your sorting algorithm.

Bonus: Implement pagination on the list all products endpoint.

Documentation: Provide a README that explains how to run your code and use your API.

**Constraints**

Stick to Golang's standard library. You can use a package like Gorilla Mux for routing.
Keep your application as stateless as possible.
Please make sure to comment your code.
Success Criteria
All endpoints should work without any errors.
Sorting algorithm should correctly sort the products in ascending order based on price.
Test cases should cover basic scenarios and edge cases for the sorting algorithm.

```
