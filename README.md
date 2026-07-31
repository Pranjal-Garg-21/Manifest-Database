# Database Management Project

## Team RNA
**Members:**
- Anushka Sinha
- Kartik Gupta
- Pranjal Garg

---

## 1. Project Overview
This project is a Python-based application that interfaces with a MySQL database. It allows users to manage records efficiently through a Command Line Interface (CLI). The system supports full CRUD (Create, Read, Update, Delete) functionality and executes specific analytical queries to retrieve insights from the data.

**Key Features:**
- Interactive Python CLI menu.
- Real-time database updates using MySQL Connector.
- Implementation of complex SQL queries via Python.
- Error handling for database constraints.

---

## 2. Technologies Used
- **Language:** Python 3.x
- **Database:** MySQL
- **Libraries:**
  - `mysql-connector-python` (Connectivity)
  - `tabulate` (Optional: used for pretty-printing tables)

---

## 3. Prerequisites
Ensure you have the following installed on your machine:
1. **Python 3.x**
2. **MySQL Server** (Ensure the service is running)
3. **Python MySQL Driver:**
   Run the following command to install the necessary library:
   ```bash
   pip install mysql-connector-python
   ```

---

## 4. Installation & Database Setup

### Step 1: Open the Project Folder
1. Unzip the submitted folder (if compressed) or clone the repository.
2. Open a terminal (or Command Prompt) and navigate to the project directory:
   ```bash
   cd path/to/project_folder
   ```

### Step 2: Initialize the Database
You need to create the database schema before running the app.
1. Open your MySQL terminal:
   ```bash
   mysql -u root -p
   ```
2. Run the source command to import the SQL file:
   ```sql
   source schema.sql;
   ```

### Step 3: Configure Credentials
Open the `main_app.py` (or `db_config.py`) file and update the database connection parameters to match your local setup:
```python
connection = mysql.connector.connect(
    host="localhost",
    user="your_username",  # e.g., root
    password="your_password",
    database="project_db"
)
```

---

## 5. How to Run the Application
To launch the application, execute the main Python script:

```bash
python main_app.py
```

### User Menu Guide
Once the application starts, follow the on-screen numbered prompts:
1. **READ:** Lists active mysteries
2. **READ:** Event timeline
3. **READ:** Find passenger by calling description
4. **READ:** Rank agency effectiveness
5. **READ:** Shared calling threat analysis
6. **INSERT:** Prompts the user for data to insert a new passenger
7. **UPDATE:** Prompts the user to update the status of an existing passenger
8. **DELETE:** Prompts the user to choose a calling ID to delete that calling entry
9. **READ:** Passenger Event Involvement Count
10. **READ:** Objects Uncovered by Location
