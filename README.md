# AI Chat Platform Management System

**Student:** Wilmot 19517/2022
**Course:** DPR400210 - Database Programming
**Date:** July 2026
**Database:** Oracle 26ai Free

## Project Overview

The **AI Chat Platform Management System** is a complete full-stack application that combines:

* **Oracle Database** (11 tables, 8 sequences, 3 views, 4 procedures, 4 functions, 3 triggers)
* **Python FastAPI Backend** (18+ REST API endpoints with JWT authentication)
* **Vanilla JavaScript Frontend** (Chat interface with real-time AI streaming)
* **Admin Dashboard** (User management, revenue tracking, analytics charts)

The system demonstrates the integration of database programming with modern web technologies to create a production-ready AI chat platform.

## Problem Statement

Organizations using AI chat platforms lack centralized systems to manage users, conversations, files, subscriptions, and analytics. Existing solutions focus on AI responses but offer limited administrative control over:

* User access and permissions
* Conversation history and tracking
* Subscription and payment management
* Usage analytics and reporting
* Security auditing

This project addresses these challenges by providing a complete database solution using Oracle PL/SQL with a full-stack web application interface.

# System Architecture

## Core Database Layer (Main Focus)

### Oracle Database 26ai Free

The database is the heart of this system. It contains:

| Component                   | Count | Description                                    |
| --------------------------- | ----- | ---------------------------------------------- |
| **Tables**            | 11    | Core data structures for all platform features |
| **Sequences**         | 8     | Auto-incrementing ID generators                |
| **Views**             | 3     | Analytics and reporting views                  |
| **Stored Procedures** | 4     | Business logic in PL/SQL                       |
| **Functions**         | 4     | Calculated data retrieval                      |
| **Triggers**          | 3     | Automated data management                      |
| **Sample Data**       | 50+   | Pre-populated test data                        |

## Database Schema

### ER Diagram

![1784049949560](image/README/1784049949560.png)

## PL/SQL Components Summary

### Procedures (4)

| Procedure               | Purpose                                 |
| ----------------------- | --------------------------------------- |
| **register_user** | Creates new user with USER role         |
| **create_chat**   | Creates new chat session                |
| **send_message**  | Sends message and gets AI response      |
| **delete_chat**   | Archives (user) or deletes (admin) chat |

### Functions (4)

| Function                        | Return Type | Purpose                          |
| ------------------------------- | ----------- | -------------------------------- |
| **get_total_users**       | NUMBER      | Returns total active users       |
| **get_user_chat_count**   | NUMBER      | Returns chat count for a user    |
| **get_avg_response_time** | NUMBER      | Returns average AI response time |
| **get_storage_used**      | NUMBER      | Returns storage used by a user   |

### Triggers (3)

| Trigger                            | Event                   | Purpose                         |
| ---------------------------------- | ----------------------- | ------------------------------- |
| **trg_audit_user_changes**   | BEFORE UPDATE ON users  | Logs user changes to AUDIT_LOG  |
| **trg_update_chat_activity** | AFTER INSERT ON message | Updates last_activity timestamp |
| **trg_update_message_count** | AFTER INSERT ON message | Increments total_messages count |

### Views (3)

| View                         | Purpose                             |
| ---------------------------- | ----------------------------------- |
| **active_users_view**  | Shows active users with their roles |
| **recent_chats_view**  | Shows chats from last 7 days        |
| **user_activity_view** | Shows user activity statistics      |

### Sequences (8)

| Sequence         | Used For                                     |
| ---------------- | -------------------------------------------- |
| USER_SEQ         | USERS.user_id                                |
| CHAT_SEQ         | CHAT_[SESSION.chat](https://session.chat/)_id |
| MESSAGE_SEQ      | MESSAGE.message_id                           |
| FILE_SEQ         | FILES.file_id                                |
| FEEDBACK_SEQ     | FEEDBACK.feedback_id                         |
| SUBSCRIPTION_SEQ | USER_SUBSCRIPTION.subscription_id            |
| PAYMENT_SEQ      | PAYMENT.payment_id                           |
| AUDIT_SEQ        | AUDIT_LOG.log_id                             |

---

## Summary

| Component       | Count                |
| --------------- | -------------------- |
| Tables          | 11                   |
| Procedures      | 4                    |
| Functions       | 4                    |
| Triggers        | 3                    |
| Views           | 3                    |
| Sequences       | 8                    |
| **TOTAL** | **33 Objects** |

## Relationship Map

**text**

```
USERS (1) ─────< USER_ROLE (M) ─────> ROLES (1)
USERS (1) ─────< CHAT_SESSION (M)
USERS (1) ─────< FILES (M)
USERS (1) ─────< FEEDBACK (M)
USERS (1) ─────< USER_SUBSCRIPTION (M)
USERS (1) ─────< PAYMENT (M)
USERS (1) ─────< AUDIT_LOG (M)

CHAT_SESSION (1) ─────< MESSAGE (M)
CHAT_SESSION (1) ─────< FILES (M)
CHAT_SESSION (1) ─────< FEEDBACK (M)

SUBSCRIPTION_PLAN (1) ─────< USER_SUBSCRIPTION (M)
USER_SUBSCRIPTION (1) ─────< PAYMENT (M)
```

## DATABASE SCREENSHOTS - COMPLETE LIST

TABLE CREATIONS (12 screenshots)

# Screenshot Name	Description

1	create user table.png	USERS table created
2	create roles table.png	ROLES table created
3	CREATE TABLE user_role.png	USER_ROLE table created
4	create table chat session.png	CHAT_SESSION table created
5	CREATE TABLE message.png	MESSAGE table created
6	CREATE TABLE subscription_plan.png	SUBSCRIPTION_PLAN table created
7	CREATE TABLE user_subscription.png	USER_SUBSCRIPTION table created
8	CREATE TABLE payment.png	PAYMENT table created
9	CREATE TABLE audit_log.png	AUDIT_LOG table created
10	CREATE TABLE feedback.png	FEEDBACK table created
11	view all tables.png	All 11 tables listed
12	create sequences.png	All sequences created
2. SEQUENCES (1 screenshot)

# Screenshot Name	Description

13	create sequences.png	USER_SEQ, CHAT_SEQ, MESSAGE_SEQ, PAYMENT_SEQ, SUBSCRIPTION_SEQ, AUDIT_SEQ, FILE_SEQ, FEEDBACK_SEQ created
3. DEFAULT DATA INSERTION (4 screenshots)

# Screenshot Name	Description

14	insert roles.png	ADMIN and USER roles inserted
15	insert subscription plans.png	Free, Premium, Enterprise plans inserted
16	insert sample users.png	Jane, John, Alice, Bob users inserted
17	admin user.png	Admin user (wilmot_ai) created
4. SAMPLE DATA (4 screenshots)

# Screenshot Name	Description

18	insert sample chat.png	Chat sessions inserted (Python Help, Cover Letter, etc.)
19	insert sample messages.png	Sample messages with USER/AI responses
20	sample subscriptions.png	User subscriptions inserted
21	sample payments real.png	Payment records inserted
5. TRIGGERS (3 screenshots)

# Screenshot Name	Description

22	TRIGGER trg_update_message_count.png	Updates total_messages in chat_session after message insert
23	TRIGGER trg_update_chat_activity.png	Updates last_activity in chat_session after message insert
24	TRIGGER trg_audit_user_changes.png	Logs user changes to audit_log
6. FUNCTIONS (4 screenshots)

# Screenshot Name	Description

25	FUNCTION get_total_users.png	Returns count of active users
26	FUNCTION get_user_chat_count.png	Returns chat count for a user
27	FUNCTION get_avg_response_time.png	Returns average AI response time
28	FUNCTION get_storage_used.png	Returns storage used by a user
7. PROCEDURES (4 screenshots)

# Screenshot Name	Description

29	PROCEDURE register_user.png	Registers a new user
30	PROCEDURE create_chat.png	Creates a new chat session
31	procedure send message.png	Sends a message and generates AI response
32	procedure delete chat.png	Soft deletes a chat
8. VIEWS (3 screenshots)

# Screenshot Name	Description

33	active users view.png	Shows active users with their roles
34	create recent chats view.png	Shows chats from last 7 days
35	create user activity view.png	Shows user activity summary
9. FINANCIAL ANALYTICS (3 screenshots)

# Screenshot Name	Description

36	financial analitics.png	Total revenue query
37	monthly revenue.png	Revenue grouped by month
38	revenue by plan.png	Revenue grouped by subscription plan
10. FEEDBACK & SUBSCRIPTIONS (3 screenshots)

# Screenshot Name	Description

39	sample feedback.png	User feedback sample data
40	sample subscriptions.png	User subscription sample data
41	sample payments real.png	Payment sample data

## Author

**Wilmot Dennis** 19517/2022

University of Lay Adventists of Kigali

## Acknowledgments

* **Eric Maniraguha** - Lecturer, Database Programming (DPR400210)
* **Oracle Corporation** - Database 26ai Free Edition

## License

This project was created for educational purposes as part of the Database Programming course at the University of Lay Adventists of Kigali.

**Completed:** July 2026
