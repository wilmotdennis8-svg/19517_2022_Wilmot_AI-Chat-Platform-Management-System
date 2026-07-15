CREATE TABLE user_role (
    user_id     NUMBER(10) REFERENCES users(user_id) ON DELETE CASCADE,
    role_id     NUMBER(3) REFERENCES roles(role_id) ON DELETE CASCADE,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_user_role PRIMARY KEY (user_id, role_id)
);

