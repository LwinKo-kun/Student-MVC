```markdown
# Student Registration MVC

A Java-based web application demonstrating the Model-View-Controller (MVC) architecture. It performs basic Create, Read, Update, and Delete (CRUD) operations on student records using Java Servlets, JSP, JDBC, and a MySQL database.

## Tech Stack
* **Backend:** Java 17, Servlets, JDBC
* **Frontend:** JSP, HTML, Bootstrap 4.3.1
* **Database:** MySQL 8.x
* **Build Tool:** Apache Maven
* **Server:** Eclipse Jetty (Embedded via Maven)

## Prerequisites
Ensure you have the following installed on your local environment:
* Java Development Kit (JDK) 17
* Apache Maven
* MySQL Server (running on port 3306)

## 1. Database Setup
1. Open your terminal and log into your MySQL server:
   ```bash
   mysql -u root -p

```

2. Execute the following SQL script to create the database schema and populate it with initial seed data:
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

INSERT INTO tbl_student (name, rollno, email) VALUES 
    ('Mon Mon', '3CS-11', 'monmon@gmail.com'),
    ('Thaw Thaw', '3CS-22', 'thawthaw@gmail.com'),
    ('Mg Mg', '3CS-33', 'mgmg@gmail.com');

```



## 2. Project Configuration

1. Open the project in your IDE (IntelliJ IDEA recommended).
2. Navigate to `src/main/java/util/DBConnection.java`.
3. Update the `DriverManager.getConnection()` parameters to match your local MySQL credentials:
```java
DriverManager.getConnection("jdbc:mysql://localhost:3306/db_student", "root", "YOUR_PASSWORD");
```



## 3. Build and Run

This project utilizes the `jetty-maven-plugin`, allowing you to run the application directly from the command line without configuring an external Tomcat instance.

1. Open your terminal in the project's root directory (where `pom.xml` is located).
2. Clean the target directory, compile the WAR package, and start the server:
```bash
mvn clean jetty:run
```


3. Wait for the console to display `Started Jetty Server`.
4. Open your web browser and navigate to:
   [http://localhost:8080](http://localhost:8080)
