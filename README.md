# Student Registration MVC

A Java-based web application demonstrating the **Model-View-Controller (MVC)** architecture. The application provides basic **Create, Read, Update, and Delete (CRUD)** operations for managing student records using Java Servlets, JSP, JDBC, and MySQL.

## Tech Stack

| Category | Technology |
|---|---|
| Backend | Java 17, Java Servlets, JDBC |
| Frontend | JSP, HTML, Bootstrap 4.3.1 |
| Database | MySQL 8.x |
| Build Tool | Apache Maven |
| Web Server | Eclipse Jetty (Embedded via Maven) |
| Architecture | Model-View-Controller (MVC) |

## Prerequisites

Make sure the following software is installed on your local machine:

- **JDK 17** or later
- **Apache Maven**
- **MySQL Server 8.x**
- A Java IDE (IntelliJ IDEA recommended)

## Installation and Setup

### 1. Clone the Repository

Clone the project and navigate to its directory:

```bash
git clone <YOUR_REPOSITORY_URL>
cd Student-Registration-MVC
```

### 2. Database Configuration

First, log in to your MySQL server:

```bash
mysql -u root -p
```

Create the database and student table:

```sql
CREATE DATABASE db_student;

USE db_student;

CREATE TABLE tbl_student (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    rollno VARCHAR(50) NOT NULL,
    email VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);
```

Insert some sample student records:

```sql
INSERT INTO tbl_student (name, rollno, email)
VALUES
    ('Mon Mon', '3CS-11', 'monmon@gmail.com'),
    ('Thaw Thaw', '3CS-22', 'thawthaw@gmail.com'),
    ('Mg Mg', '3CS-33', 'mgmg@gmail.com');
```

### 3. Configure Database Connection

Open the project in your preferred Java IDE.

Navigate to:

```text
src/main/java/util/DBConnection.java
```

Locate the `DriverManager.getConnection()` method and update the database credentials to match your local MySQL configuration.

```java
DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/db_student",
    "root",
    "YOUR_PASSWORD"
);
```

Replace `YOUR_PASSWORD` with your actual MySQL password.

> **Note:** Make sure your MySQL server is running before starting the application.

### 4. Build and Run the Application

This project uses the `jetty-maven-plugin`, allowing you to run the application directly through Maven without configuring an external Tomcat server.

Open a terminal in the project root directory (where `pom.xml` is located).

Run the following command:

```bash
mvn clean jetty:run
```

Maven will compile the project, resolve dependencies, and start the embedded Jetty server.

Wait until the console indicates that the Jetty server has successfully started.

### 5. Access the Application

Open your web browser and navigate to:

**http://localhost:8080**

You should now be able to access the Student Registration application.

## Project Features

- **Create:** Register new student records.
- **Read:** Display existing student information.
- **Update:** Modify student details.
- **Delete:** Remove student records.

## Project Structure

```text
student-MVC/
│
├── pom.xml
├── README.md
│
└── src/
    └── main/
        ├── java/
        │   ├── controller/
        │   │   └── StudentController.java
        │   │
        │   ├── dao/
        │   │   └── StudentDAO.java
        │   │
        │   ├── model/
        │   │   └── Student.java
        │   │
        │   └── util/
        │       └── DBConnection.java
        │
        ├── resources/
        │
        └── webapp/
            ├── student-form.jsp
            ├── student-list.jsp
            │
            └── WEB-INF/
                └── web.xml
```

### MVC Architecture

The project follows the Model-View-Controller (MVC) design pattern, separating application logic, data management, and user interface.

| Component | File / Directory | Responsibility |
|---|---|---|
| Model | `model/Student.java` | Represents student data and attributes. |
| View | `student-form.jsp` | Provides the student registration form. |
| View | `student-list.jsp` | Displays registered student records. |
| Controller | `controller/StudentController.java` | Handles HTTP requests and coordinates application operations. |
| DAO | `dao/StudentDAO.java` | Executes database operations using JDBC. |
| Utility | `util/DBConnection.java` | Manages MySQL database connections. |
| Configuration | `WEB-INF/web.xml` | Configures the web application and servlet mappings. |

### Application Request Flow

```text
       User
        |
        v
   JSP (View)
        |
        v
 Servlet (Controller)
        |
        v
   StudentDAO
        |
        v
  DBConnection
        |
        v
   MySQL Database
```

The controller receives user requests, communicates with the DAO to perform database operations, and forwards the results to the appropriate JSP page.

## License

This project is intended for educational and learning purposes.