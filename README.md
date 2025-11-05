# 💰 Financial Tracking Application


> A full-stack personal finance management system designed to help users efficiently manage income, expenses, and overall financial health — with secure authentication and real-time transaction tracking.

---

## 📝 Overview

The **Financial Tracking Application** is a modern full-stack project that enables users to record and analyze their daily financial transactions. It provides an intuitive user interface for adding expenses and income, along with a Spring Boot backend to securely store and process user financial data.

Developed using **React (frontend)** and **Spring Boot + MySQL (backend)**, this application ensures seamless user experience, secure authentication, and accurate financial insights.

---

## 🗂 Table of Contents

1. [Key Features](#key-features)
2. [Tech Stack](#tech-stack)
3. [System Architecture](#system-architecture)
4. [Modules Overview](#modules-overview)
5. [Database Design](#database-design)
6. [Installation & Setup](#installation--setup)
7. [Project Structure](#project-structure)
8. [Usage Guide](#usage-guide)
9. [Screenshots](#screenshots)
10. [Future Enhancements](#future-enhancements)
11. [Author](#author)

---

## ✨ Key Features

* 🔐 **User Authentication** — JWT-based login & signup (secure access).
* 💸 **Income & Expense Tracking** — Add, edit, delete transactions easily.
* 🏷️ **Category-wise Records** — Organize finance by spending category.
* 📊 **Financial Dashboard** — Track total income, expenses & balance.
* 🔍 **Search & Filters** — Sort/filter transactions by date & type.
* ⚡ **Real-time UI Updates** — Modern React interface with clean UI.
* 💾 **Persistent Storage** — MySQL database for long-term records.
* 🔔 **Toasts & UI Validation** — Friendly messages and error handling.

---

## 🛠️ Tech Stack

| Layer           | Technology                                 |
| --------------- | ------------------------------------------ |
| **Frontend**    | React, Axios, React Router                 |
| **Backend**     | Spring Boot, Spring Security, JWT          |
| **Database**    | MySQL                                      |
| **ORM**         | JPA / Hibernate                            |
| **Build Tools** | Maven (Backend), NPM (Frontend)            |
| **Deployment**  | Render (Backend), Netlify/Local (Frontend) |

---

## 🧩 System Architecture

```
┌───────────────────────────────┐
│           Frontend            │  ← (React UI)
└──────────────┬────────────────┘
               │ REST API (Axios)
┌──────────────┴────────────────┐
│       Spring Boot Backend     │  ← Authentication & Business Logic
└──────────────┬────────────────┘
               │ JPA/Hibernate
┌──────────────┴────────────────┐
│            MySQL DB           │  ← Persistent Storage
└───────────────────────────────┘
```

---

## 🧮 Modules Overview

| Module                 | Description                              |
| ---------------------- | ---------------------------------------- |
| **Auth Module**        | User login & registration using JWT      |
| **Transaction Module** | Add, edit, delete, list all transactions |
| **Dashboard Module**   | Display income, expenses & balance       |
| **Category Module**    | Manage categories of transactions        |
| **User UI Module**     | React pages for smooth navigation        |

---

## 🗃️ Database Design

**Database:** `finance_db`

### `users`

| Field    | Type             | Description        |
| -------- | ---------------- | ------------------ |
| id       | INT (PK)         | Unique user ID     |
| name     | VARCHAR          | User full name     |
| email    | VARCHAR (unique) | Login ID           |
| password | VARCHAR          | Encrypted password |

### `transactions`

| Field    | Type     | Description          |
| -------- | -------- | -------------------- |
| id       | INT (PK) | Transaction ID       |
| user_id  | INT (FK) | Linked user          |
| title    | VARCHAR  | Expense/Income title |
| type     | VARCHAR  | INCOME / EXPENSE     |
| category | VARCHAR  | Category name        |
| amount   | DOUBLE   | Money amount         |
| date     | DATE     | Transaction date     |

---

## ⚙️ Installation & Setup

### 🧾 Prerequisites

* Node.js & NPM
* Java JDK 17+
* MySQL/PostgreSQL
* IntelliJ IDEA / VS Code

---

### ✅ Backend Setup

```bash
git clone <repo-url>
cd backend
mvn clean install
mvn spring-boot:run
```

Update DB credentials in `application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/finance_db
spring.datasource.username=root
spring.datasource.password=your_password
```

---

### ✅ Frontend Setup

```bash
cd frontend
npm install
npm start
```

---

## 🗂️ Project Structure

```
FinancialTrackingApp/
├── backend/
│   ├── controller/
│   ├── service/
│   ├── repository/
│   ├── entity/
│   └── dto/
└── frontend/
    ├── src/
    │   ├── components/
    │   ├── pages/
    │   ├── services/
    │   └── App.jsx
```

---

## 🧭 Usage Guide

1. Open the application.
2. Register or login as a user.
3. Add income and expenses with categories.
4. View dashboard to analyze balance.
5. Update or delete transactions anytime.

---

## 🎯 Key Highlights

* Built with **React + Spring Boot + MySQL**
* Secure JWT authentication
* Real‑time dashboard & analytics
* Export transactions to PDF / Excel
* Email alerts / reminders integrated


## 🖼️ Screenshots
<img width="1269" height="578" alt="image" src="https://github.com/user-attachments/assets/a9184260-bcfd-40fe-b6d4-e837def06f57" />

<img width="1280" height="600" alt="image" src="https://github.com/user-attachments/assets/7262f56d-9ef2-4d3b-8080-4783251b8c70" />

<img width="1261" height="572" alt="image" src="https://github.com/user-attachments/assets/1f9e9905-1c80-4ee2-bb5d-34acaf359293" />

<img width="1262" height="628" alt="image" src="https://github.com/user-attachments/assets/67a39e8d-f1aa-44ef-b5d5-fd515ca23eea" />


---

## 🚀 Future Enhancements

### 🎯 Upcoming Features

* 🤖 AI‑based spending predictions
* 💳 Bank account sync & auto‑import transactions
* 🌐 Multi‑currency support
* 💬 WhatsApp / SMS reminders
* 🛠️ Admin dashboard (User & data management)

---

## 📝 License & Author

This project is released under the MIT License. See [LICENSE](LICENSE) for details.

**Author:**
Abhay Kumar
B.Tech CSE — CGC Landran
📧 [abheykumar7860@gmail.com](mailto:abheykumar7860@gmail.com)
🔗 [https://www.linkedin.com/in/abheykumar07/](https://www.linkedin.com/in/abheykumar07/)
