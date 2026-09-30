-- =====================================================
-- Assignment: Week 5 - Indexes, Users and Access Control
-- File      : answers.sql
-- =====================================================

-- -----------------------------------------------------
-- Question 1: Drop the index named IdxPhone from the customers table
-- -----------------------------------------------------
CREATE INDEX IF NOT EXISTS IdxPhone ON customers (phone);
DROP INDEX IdxPhone ON customers;

-- -----------------------------------------------------
-- Question 2: Create user bob (localhost only) with a password
-- -----------------------------------------------------
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- -----------------------------------------------------
-- Question 3: Grant the INSERT privilege to bob on the salesDB database
-- -----------------------------------------------------
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- -----------------------------------------------------
-- Question 4: Change the password for user bob
-- -----------------------------------------------------
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';