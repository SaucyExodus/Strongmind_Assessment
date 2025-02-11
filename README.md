## Overview

The Pizza Management Application allows users to create, manage, and display pizzas with multiple toppings. Users can add new pizzas with various toppings, update existing pizzas, and delete pizzas. This application is built using Ruby on Rails.

The main features of this application include:

- **Create**: Add new pizzas and toppings.
- **Read**: View the list of pizzas and toppings.
- **Update**: Edit existing pizzas and their toppings.
- **Delete**: Remove pizzas and toppings, with automatic handling for associated data (e.g., deleting pizzas with a topping when that topping is removed).

### Thought Process Behind Technical Choices

When I saw that Ruby was the preferred language, I decided to take it on as a challenge despite having no prior experience. I enjoy learning new technologies, and Ruby seemed like a great opportunity to grow as a developer.

I chose Ruby on Rails because it's a powerful framework that simplifies development with its convention-over-configuration approach, which allowed me to focus on the application’s features.

For hosting, I used Heroku. Although I had no experience with it, I learned that it integrates well with Ruby on Rails, making it a solid choice for deployment. Deployment on Heroku turned out to be my hardest challenge during this assessment, but it was a valuable learning experience. I’ve already gained a deeper understanding of deployment processes, and it was rewarding to overcome this obstacle.

## Technologies Used

- **Ruby on Rails**: Used for building the backend of the application and managing the database.
- **Puma**: A web server that handles request and route them to the application for processing.
- **SQLite**: Used for database management.
- **Bootstrap**: Provides responsive and a smooth UI experience.
- **Unit Testing (Minitest)**: Testing framework to ensure code quality and correctness.
- **Capybara**: Used for integration testing with Selenium for UI tests.

## Installation Instructions

Follow the steps below to get the application running on your local machine.

### Prerequisites

Before you begin, make sure you have the following installed on your local machine:

- Ruby (>= 3.4.1)
- Rails (>= 8.0.1)

### 1. Clone the repository

```bash
git clone https://github.com/SaucyExodus/Strongmind_Assessment.git
cd Strongmind_Assessment
```

### 2. Install dependencies

To install Ruby gems:

```bash
bundle install --without production
```

### 3. Setup the database

Set up your local database by running:

```bash
rails db:create
rails db:migrate
```

### 4. Running the application locally

To start the Rails server, run the following command:

```bash
rails server
```

The application will be accessible at http://localhost:3000.

## Running Tests

### Running Tests Locally with the Ruby LSP Extension in Visual Studio Code

If you are using Visual Studio Code with the Ruby LSP (Language Server Protocol) extension, you can run your tests directly in the editor. Here’s how:

1. **Open your project in Visual Studio Code.**
2. **Ensure the Ruby LSP extension is installed** in your editor. If it's not installed, go to the Extensions view and search for "Ruby" to find and install the Ruby LSP extension.
3. **Open the test file** you want to run or select the test folder.
4. **Run tests using the Ruby LSP**:
   - You can run tests directly from the editor by using the built-in commands in Ruby LSP.
   - Right-click inside the test file and select Run Test or use the command palette (Ctrl+Shift+P on Windows/Linux, Cmd+Shift+P on macOS) and search for Ruby: Run Test to execute your tests.

### Running Tests Manually

You can also run the tests manually from the terminal using Minitest, which is the testing framework used in this project. Here's how:

1. To run unit tests, simply run:

   ```bash
   rails test
   ```

2. To run a specific test file, use:

   ```bash
   rails test path/to/your_test_file.rb
   ```
