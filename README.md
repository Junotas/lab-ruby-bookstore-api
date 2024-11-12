
---

# Bookstore API

This is a simple API for managing a collection of books, built with Ruby on Rails.

## Requirements

- **Ruby Version**: 3.3.6
- **Rails Version**: 8.0.0
- **Database**: SQLite (default) or PostgreSQL (for production)

## Getting Started

### 1. Clone the Repository

Clone the project to your local machine:

```bash
git clone https://github.com/YOUR_USERNAME/bookstore_api.git
cd bookstore_api
```

### 2. Install Dependencies

Use `bundle install` to install the required gems:

```bash
bundle install
```

### 3. Configure the Database

By default, this project uses SQLite in development. To configure or change databases, update `config/database.yml` as needed.

- **Database Setup**: Create and set up the database:

  ```bash
  rails db:create
  rails db:migrate
  ```

### 4. Run the Server

Start the Rails server:

```bash
rails server
```

The API will be accessible at [http://localhost:3000](http://localhost:3000).

## API Usage

### Endpoints

Here are the main endpoints for managing books:

- **Get all books**: `GET /books`
- **Get a single book**: `GET /books/:id`
- **Create a new book**: `POST /books`
  - **Parameters**: `title` (string, required), `author` (string), `genre` (string), `published_year` (integer)
- **Update a book**: `PATCH /books/:id`
- **Delete a book**: `DELETE /books/:id`

### Example Requests

- **Create a Book**:
  ```bash
  curl -X POST http://localhost:3000/books -d "book[title]=Sample Book&book[author]=Author Name&book[genre]=Fiction&book[published_year]=2021"
  ```

- **Get All Books**:
  ```bash
  curl http://localhost:3000/books
  ```

- **Get a Specific Book**:
  ```bash
  curl http://localhost:3000/books/1
  ```

## Running the Test Suite

To run the test suite, use the following command:

```bash
rails test
```

### Tests Included

The test suite includes tests for:
- **CRUD operations**: Ensuring `create`, `read`, `update`, and `delete` actions function as expected.
- **Validation**: Confirming that a book without a title cannot be created.

## Deployment

To deploy this application:
1. Configure the production database in `config/database.yml`.
2. Precompile assets if needed (for API-only apps, this may not apply).
3. Deploy to your server or platform of choice (e.g., Heroku, AWS).

## Additional Notes

- This is an API-only Rails app with no frontend.
- Considering using PostgreSQL or another database for production environments.

---
