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

2. Build a REST API with CRUD operations for 2 models (can use a Database of your choice. e.g. MongoDB) and JWT Authentication.

```bash
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

3. Implement a Basic Linux Command Line Interface (CLI) Tool

```bash
**Context**

To broaden the scope of learning and provide hands-on experience with command line tools, we want to introduce a challenge focused on building a basic Linux Command Line Interface (CLI) tool. This will allow beginners to get familiar with common Linux commands and to provide as a starting point to working with the terminal.

**The Project**

You are tasked with developing a simple CLI tool that performs basic file management tasks. Users should be able to interact with the tool via the command line to perform actions such as creating files, listing directory contents, renaming files, and deleting files.

**Requirements**

1. **CLI Commands**:
    - Implement commands for basic file management tasks, including:
    - `create`: Create a new file.
    - `list`: List the contents of a file.
    - `rename`: Rename a file.
    - `delete`: Delete a file.
    
Note: When using the `create` command, if the folders leading to the file you want to create don't exist yet, the command should create those folders as well. For instance, if you're creating a file at `lib/admin/index.ts`, but the `lib` and `admin` folders are missing, the `create` command should create them along with the file.

2. **Command Syntax**:
   - Define a clear and intuitive syntax for each command, along with any required arguments or options.

3. **File Management**:
   - Ensure that file management operations are performed safely and accurately.

4. **Error Handling**:
   - Implement proper error handling to provide informative error messages to users.

5. **Documentation**:
   - Create a `help` command which provides comprehensive details about the different commands in the CLI tool.

**Bonus**:
- Implement additional commands for more advanced file management tasks (e.g., copying files, moving files).
- Add support for working with directories (e.g., creating directories, navigating between directories).
- Implement interactive mode for the CLI tool to enhance user experience.

**Constraints**

- Keep the project simple and beginner-friendly.
- Use a programming language commonly used for building command line tools (e.g., Python).
- Do not use Bash, the challenge would be too easy with Bash.
- Ensure that the CLI tool is easy to install and run on a Linux system.

**Success Criteria**

- All commands should function correctly without errors.
- File management operations should be performed accurately and safely.
- The CLI tool should provide clear and helpful feedback to users, including error messages when necessary.
- Documentation should be comprehensive and easy to understand for beginners, and provide documentation on the installation of the tool.
```

4. Build a chat application using Socket.IO (WebSockets)

```bash
**Context**

AlphaTech is planning to build a real-time chat application to facilitate communication among users. The application should support instant messaging and group chats in real-time.

**The Project**

You are assigned to develop a real-time chat application using Socket.IO for real-time communication and ReactJS for the frontend interface. Users should be able to create accounts, join chat rooms, send messages, and receive messages instantly without the need for page refresh.

**Requirements**

Frontend (ReactJS):

- Create a user-friendly interface for the chat application.
- Implement components for displaying chat rooms, messages, user lists, and message input.
- Include features for joining chat rooms, sending messages, and receiving messages in real-time.
- Use React Router for navigation between different pages, such as the login page, chat room page, and user profile page.

Backend (Node.js with ExpressJS and Socket.IO):

- Set up a Node.js backend with ExpressJS to handle HTTP requests and serve the frontend application.
- Use Socket.IO for real-time communication between clients and the server.
- Implement authentication endpoints for user registration, login, and logout.
- Create endpoints for managing chat rooms, sending messages, and fetching message history.

Database (MongoDB):

- Set up a MongoDB database to store user data, chat room data, and message history.

Security:

- Implement secure authentication mechanisms using JWT tokens to authenticate users.
- Ensure that only authenticated users can access chat rooms and send messages.
- Protect sensitive routes and endpoints from unauthorized access.

Bonus Features:

- Add support for creating private chat rooms and inviting specific users to join.
- Implement message encryption to secure message content during transmission.
- Include features for sending multimedia files such as images and videos in chat messages.
- Implement typing indicators and read receipts to enhance the user experience.

Documentation:

- Provide a README that explains how to run both the frontend and backend applications.
- Include instructions on setting up the MongoDB database and configuring the frontend and backend environments.

**Constraints**

- Use Socket.IO for real-time communication between clients and the server.
- Ensure that the application is scalable and can handle multiple concurrent users.
- Keep the project well-organized and maintainable by following best practices and conventions.

**Success Criteria**

- Users should be able to create accounts, join chat rooms, send messages, and receive messages in real-time.
- The application should provide a smooth and responsive user experience without any latency.
- User data and chat history should be stored securely in the MongoDB database.
- Documentation should be clear and comprehensive, enabling users to set up and run the application easily.
```

5. Build a Web Scraper Tool that can scrape various pages and store in database.

Note: Use websites that allow web scraping for the sake of respecting digital law:

[Scrape This Site](https://www.scrapethissite.com/pages/),
[Books to Scrape](https://books.toscrape.com/)

```bash
**Context**

AlphaTech wants to stay updated with the latest news related to their industry and competitors. They are interested in developing a web scraper that can fetch data from various websites and aggregate them into a centralized database for analysis and monitoring.

**Requirements**

Website Scraping:

  - Implement a web scraping mechanism capable of traversing websites and collecting data.
  - Use HTML parsing libraries or techniques (e.g., BeautifulSoup, Scrapy) to extract structured data from web pages.

Data Storage:

  - Choose an appropriate database system (e.g., MySQL, PostgreSQL, MongoDB) for storing and querying data efficiently.

Error Handling:

  - Implement error handling mechanisms to deal with various issues encountered during web scraping, such as network errors, HTTP errors, and content parsing errors.
  - Provide logging and reporting functionalities to track errors and debug issues effectively.

Bonus Features:

  - Add support for custom user-defined rules and filters to scrape specific types of information based on keywords.
  - Develop a user interface for browsing and searching data in the database, with features such as filtering, sorting, and pagination.

Documentation:

- Provide a README clearly explaining how to run the web scraper and configuring a database.

**Constraints**

  - Adhere to web scraping best practices and ethical guidelines, respecting website terms of service and copyright laws.
  - Ensure scalability and performance optimization to handle large volumes of data.
  - Consider privacy and data security implications when storing and processing data, especially if personal or sensitive information is involved.

**Success Criteria**

  - The web scraper should be able to fetch data from various websites and store them in a database accurately and efficiently.
  - The system should handle errors and exceptions gracefully, providing informative error messages and logs for troubleshooting.
  - Documentation should be comprehensive, covering installation instructions, usage guidelines, and best practices for configuring and running the web scraper.
```
