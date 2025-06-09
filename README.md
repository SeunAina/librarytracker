## Library Tracker - ALibrary Management System (SQL Basics Project)

### Introduction

This project simulates a **Library Management System** designed to demonstrate foundational SQL concepts. It mimics the real-world operations of a local library by tracking books, members, and borrowing records. The project showcases relational database design, CRUD operations, filtering, joins, and aggregate queries.

---

### Objective

The goal of this project is to help reinforce SQL skills by:

- Designing relational database schemas with proper keys and constraints.
- Writing SQL queries for data insertion, retrieval, updating, and deletion.
- Filtering, sorting, and aggregating data to derive insights.
- Performing joins to analyze data across multiple tables.

---

### Problem Statement

A local library seeks to digitize its records to better manage:

- 📘 **Books** – Details such as title, author, genre, publication year, and available copies.
- 👥 **Members** – Registered library users and their contact information.
- 📄 **Borrowing Records** – History of borrowed books and return statuses.

They need a system that can:
- Log and manage all relevant information.
- Support easy retrieval and updating of records.
- Generate insights such as the most borrowed books and members with outstanding returns.

---

### Solutions Provided

### 1. Database & Table Creation

- Created three core tables: `Books`, `Members`, and `Borrow_Records`.
- Implemented:
  - Primary and foreign key constraints
  - Unique constraints (e.g., on emails)
  - Default values and check conditions (e.g., `available_copies >= 0`)

### 2. Sample Data Insertion

- Populated the database with:
  - 10 sample books
  - 5 sample members
  - 10 sample borrowing records
  
#### 3. Querying & Insights

- Wrote SQL queries to:
  - Retrieve book and member information quickly.
  - Track borrowed and returned books.
  - Identify the most borrowed books and frequent borrowers.
  - Highlight overdue returns and available book stock.

---

#### How the Solution Solves the Problem

By digitizing the library’s operations with this relational database system:

- **Centralized Information**: All book, member, and borrowing data is stored in an organized and structured manner.
- **Easy Record Management**: Staff can quickly look up, add, update, or delete records without combing through physical logs.
- **Data-Driven Insights**: Queries provide real-time insights into borrowing trends, member behavior, and overdue returns—enabling better decision-making.
- **Time Efficiency**: Routine operations such as tracking borrowed books or checking available stock are now performed instantly.
- **Scalability**: The database structure is flexible and scalable, allowing future integration with a full application or expansion of features.

---

#### Files Included

- [`librarytracker.sql`](./librarytracker.sql) – Contains all table creation and sample data insertion scripts.
- [`librarytrackerqueries.sql`](./librarytrackerqueries.sql) – Contains SQL queries used to analyze and manage the library data.

