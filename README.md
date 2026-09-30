# SQL Assignment – Week 5: Indexes, Users and Access Control

## Overview
This assignment practices managing indexes and database security in MySQL: dropping an index, creating a user account, granting privileges, and changing a password.

## Repository Contents

| File | Description |
|------|-------------|
| `answers.sql` | SQL queries for Questions 1–4 |
| `README.md` | Project documentation |
| `screenshots` | Sample proofs of the sql runs |

## Setup Instructions

1. Make sure the database from the earlier weeks is loaded (`salesdb.sql`).
2. Log in with an account that can manage users (for example `root`), since creating users and granting privileges requires administrative rights.
3. Run the script:
   ```bash
   mysql -u root -p < answers.sql
   ```
   Or open `answers.sql` in MySQL Workbench and run it.

## Questions and Solutions

### Question 1: Drop the index `IdxPhone` from the `customers` table
```sql
DROP INDEX IdxPhone ON customers;
```
Removes the index from the table. The index must already exist; otherwise create it first with `CREATE INDEX IdxPhone ON customers (phone);`.

### Question 2: Create user `bob` restricted to localhost
```sql
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';
```
The `@'localhost'` host restriction means bob can only connect from the same machine as the server.

### Question 3: Grant the INSERT privilege to `bob` on `salesDB`
```sql
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';
```
`salesDB.*` applies the privilege to all tables in the database. Following the principle of least privilege, bob receives only `INSERT` and nothing else.

### Question 4: Change bob's password
```sql
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
```
Replaces the old password with the new one.

## Concepts Practiced

| Concept | Statement |
|---------|-----------|
| Index management | `DROP INDEX` |
| User creation | `CREATE USER` |
| Access control | `GRANT` |
| Credential management | `ALTER USER` |

## Notes
- `GRANT` and `CREATE USER` take effect immediately; `FLUSH PRIVILEGES;` is not required.
- Passwords are included here only because the assignment requires them. Real passwords should never be committed to a public repository.

## Author
**Name:** Ayom Leek
**Course:** sql Database Management Fundamentals