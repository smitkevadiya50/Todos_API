
# Ruby on Rails Todos API

## Overview
This project is a simple and efficient Todos API built using Ruby on Rails. It allows users to create, update, delete, and list tasks in a todo list.

## Features
- **Create Task**: Allows users to add new tasks to the list.
- **Update Task**: Users can update the details of an existing task.
- **Delete Task**: Provides the functionality to remove tasks from the list.
- **List Tasks**: Users can view all the tasks in their todo list.

## Getting Started

### Prerequisites
- Ruby
- Rails
- SQLite3 (or another database system, if configured)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/smitkevadiya50/Todos_API
   ```
2. Navigate to the project directory:
   ```bash
   cd Todos_API
   ```
3. Install dependencies:
   ```bash
   bundle install
   ```
4. Set up the database:
   ```bash
   rails db:migrate
   ```

### Running the Application
Start the Rails server:
```bash
rails server
```
The API will be available at `http://localhost:3000`.

## API Endpoints

### Create Task
`POST /todos`
- Description: Create a new task.
- Payload: `{ "title": "[title]", "description": "[description]", "task_generate_date": "[YYYY-MM-DD]", "task_completed": "[true or false]" }`

### Update Task
`PUT /todos/:id`
- Description: Update an existing task.
- Payload: `{ "title": "[title]", "description": "[description]", "task_generate_date": "[YYYY-MM-DD]", "task_completed": "[true or false]" }`

### Delete Task
`DELETE /todos/:id`
- Description: Deleted the todo task.

### List Tasks
`GET /todos`
- Description: List all tasks.

## Testing
Explain how to run the automated tests for this system.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
