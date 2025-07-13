# 🚗 Car Inventory System

A web-based inventory and sales tracking system built with **CodeIgniter**. This system allows for efficient management of car stock, tracking incoming and sold cars, managing employees, and recording business expenses — all through a modern, real-time web interface.

---

## 🧰 Built With

- **CodeIgniter** (PHP framework)
- **PHP 5.6 / 7+** (for backend functionality)
- **AJAX & JavaScript** (for real-time updates)
- **Bootstrap** (for responsive UI)
- **HTML & CSS** (for structure and design)
- **jQuery** (for DOM interaction and AJAX)

---

## 🧠 What is CodeIgniter?

[CodeIgniter](https://codeigniter.com/) is a lightweight and powerful open-source PHP framework designed for building dynamic web applications. It offers a small footprint and exceptional performance, making it ideal for fast, secure, and scalable web projects.

---

## 📦 Features

### 🚙 Car Inventory Management
- Track cars **added to inventory**
- Record **sold cars**
- View **current stock in real time**
- Organized inventory dashboard

### 💰 Sales and Transactions
- Dedicated **sales page** for processing transactions
- Sales data reflected in real time
- Easy transaction logging and tracking

### 📊 Reports
- Generate reports for:
  - **Inventory**
  - **Sales**
  - **Expenses**

### 🧑 Employee Management
- Register and manage **employees**
- Employees handle transactions and deals
- Track employee involvement in sales

### 💸 Expense Management
- Log business **expenses**
- Categorize expenses using **custom categories**
- View expense reports and summaries

---

## 🖥️ Installation Instructions

> ⚠️ This system is built for **PHP 5.6 or 7+**  
> ⚠️ Recommended environment: **WAMP Server** (preferably `wamp64`) where you can switch PHP versions

### Steps:
1. Download or clone this repository:
   ```bash
   git clone https://github.com/yourusername/car-inventory-system.git
Place the project folder in your wamp64/www/ directory.

Start WAMP Server and select your PHP version (5.6 or 7+).

Create a new MySQL database (e.g., car_inventory).

Import the SQL database as explained below.

Configure your database credentials in:

arduino
Copy
Edit
application/config/database.php
Open your browser and go to:

perl
Copy
Edit
http://localhost/car-inventory-system/
SQL Database Import Instructions
The database sql file is in the folder called database import it in your php my admin
To import the required database into phpMyAdmin:

Start your WAMP server and make sure MySQL is running.

Open your browser and go to:

arduino
Copy
Edit
http://localhost/phpmyadmin/
Log in (default username is root, password is usually blank).

Click New, and create a database named:

nginx
Copy
Edit
car_inventory
Click the newly created database.

Click Import from the top menu.

Choose the provided .sql file (e.g., car_inventory.sql) from the project folder.

Click Go to start the import.

You should now see all the tables populated in your database.
 Ensure the database name in application/config/database.php matches the one you just created.

 Requirements
WAMP Server (wamp64)

PHP 5.6 or PHP 7+

MySQL

Web browser (Chrome, Firefox, etc.)

🎯 Real-Time Functionality
The system uses AJAX to update inventory and transaction data in real time — eliminating the need for page refreshes and improving the user experience.


🤝 Acknowledgments
Developed as part of a group project (Group 28) for demonstration and educational use.
