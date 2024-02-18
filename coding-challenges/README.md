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

```bash

2. Build a REST API with CRUD operations for 2 models (can use a Database of your choice. e.g. MongoDB) and JWT Authentication.

```
**Context**

AlphaTech is developing a new microservice for a blogging platform. They want to implement a secure authentication mechanism using JWT to ensure only authenticated users can create, edit, and delete blog posts. User password must be hashed to provide security.

**Requirements**

JWT Authentication: 

- Implement endpoints for user sign up, login, logout and delete.
- Upon successful authentication (login), issue a JWT containing user information and necessary claims (e.g. user ID, token, iat, exp)

REST API: Your API should have endpoints to:

- Create a user
- Read a user (protected route)
- Update a user (protected route)
- Delete a user (protected route)

Protected routes:

- Create a blog
- Read a blog
- Update a blog
- Delete a blog
- List all blogs of user

Protected routes:

Data Structures: use simple struct for a user and blog, which includes:

User:
  - ID
  - Username
  - Password

Blog:
  - ID 
  - Title 
  - Description
  - Author ID (user's ID)

Security: 
- Use a library like BCrypt to hash passwords securely before storing in the database.
- Use JWT securely, including proper signing and token validation.

Searching Algorithm: Implement a searching function which returns all blogs which contain the search query, make sure it's case-insensitive.

Bonus: 
- Implement Rate Limiting middleware.
- Implement a Regular Expression pattern for password validation.

Documentation: Provide a README that explains how to run your code and use your API and include instructions on how to interact with the authentication endpoints.

You can use a backend framework of your choice (e.g. Quarkus, Spring Boot, Flask, ExpressJS). Keep your application as stateless as possible. Please make sure to comment your code.
Success Criteria
All endpoints should work without any errors.
Searching algorithm should correctly return the blogs that contain the search query.
Test cases should cover basic scenarios and edge cases for the searching algorithm.

```
