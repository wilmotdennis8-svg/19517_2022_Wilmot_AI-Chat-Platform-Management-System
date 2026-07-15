
CREATE TABLE audit_log (
    log_id          NUMBER(10) PRIMARY KEY,
    user_id         NUMBER(10) REFERENCES users(user_id) ON DELETE CASCADE,
    action          VARCHAR2(50) NOT NULL,
    entity_type     VARCHAR2(50),
    entity_id       VARCHAR2(50),
    old_value       CLOB,
    new_value       CLOB,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

