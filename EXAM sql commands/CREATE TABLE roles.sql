CREATE TABLE roles (
    role_id     NUMBER(3) PRIMARY KEY,
    role_name   VARCHAR2(30) UNIQUE NOT NULL,
    description VARCHAR2(200)
);

DESC roles;


