-- Databases
CREATE DATABASE IF NOT EXISTS tfm_users  CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE DATABASE IF NOT EXISTS tfm_events CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

-- Users (RW) read-write
CREATE USER IF NOT EXISTS 'tfm_users_rw'@'%' IDENTIFIED BY 'tfm_users_password';
CREATE USER IF NOT EXISTS 'tfm_events_rw'@'%' IDENTIFIED BY 'tfm_events_password';

GRANT ALL PRIVILEGES ON tfm_users.*  TO 'tfm_users_rw'@'%';
GRANT ALL PRIVILEGES ON tfm_events.* TO 'tfm_events_rw'@'%';

FLUSH PRIVILEGES;
