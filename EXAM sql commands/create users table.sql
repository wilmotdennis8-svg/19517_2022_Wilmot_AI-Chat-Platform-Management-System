
CREATE TABLE users (
    user_id         NUMBER(10) PRIMARY KEY,
    email           VARCHAR2(100) UNIQUE NOT NULL,
    username        VARCHAR2(50) UNIQUE NOT NULL,
    password_hash   VARCHAR2(255) NOT NULL,
    first_name      VARCHAR2(50) NOT NULL,
    last_name       VARCHAR2(50) NOT NULL,
    is_active       CHAR(1) DEFAULT 'Y' CHECK (is_active IN ('Y', 'N')),
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login      TIMESTAMP,
    storage_used_mb NUMBER(10,2) DEFAULT 0
);

SELECT table_name FROM user_tables WHERE table_name = 'USERS';

DESC users;

SELECT * FROM USERS;

