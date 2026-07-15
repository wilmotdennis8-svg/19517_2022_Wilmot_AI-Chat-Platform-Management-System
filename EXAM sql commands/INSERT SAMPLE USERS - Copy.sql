CREATE SEQUENCE user_seq START WITH 1000 INCREMENT BY 1;

-- 2. Insert roles first (parent tables)
INSERT INTO roles (role_id, role_name) VALUES (1, 'ADMIN');
INSERT INTO roles (role_id, role_name) VALUES (2, 'USER');

-- 3. Insert users (use the sequence)
INSERT INTO users (user_id, email, username, password_hash, first_name, last_name, is_active)
VALUES (user_seq.NEXTVAL, 'jane@aichat.com', 'jane_ai', 'jane1234', 'Jane', 'Smith', 'Y');

INSERT INTO user_role (user_id, role_id) VALUES (1001, 2);

INSERT INTO users (user_id, email, username, password_hash, first_name, last_name, is_active)
VALUES (user_seq.NEXTVAL, 'john@aichat.com', 'john_ai', 'john1234', 'John', 'Doe', 'Y');

INSERT INTO user_role (user_id, role_id) VALUES (1002, 2);

INSERT INTO users (user_id, email, username, password_hash, first_name, last_name, is_active)
VALUES (user_seq.NEXTVAL, 'alice@aichat.com', 'alice_ai', 'alice1234', 'Alice', 'Brown', 'Y');

INSERT INTO user_role (user_id, role_id) VALUES (1003, 2);

INSERT INTO users (user_id, email, username, password_hash, first_name, last_name, is_active)
VALUES (user_seq.NEXTVAL, 'bob@aichat.com', 'bob_ai', 'bob1234', 'Bob', 'Wilson', 'Y');

INSERT INTO user_role (user_id, role_id) VALUES (1004, 2);


COMMIT;