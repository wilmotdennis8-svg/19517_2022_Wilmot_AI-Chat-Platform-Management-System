CREATE TABLE chat_session (
    chat_id         NUMBER(10) PRIMARY KEY,
    user_id         NUMBER(10) REFERENCES users(user_id) ON DELETE CASCADE,
    title           VARCHAR2(200) NOT NULL,
    is_active       CHAR(1) DEFAULT 'Y' CHECK (is_active IN ('Y', 'N')),
    is_archived     CHAR(1) DEFAULT 'N' CHECK (is_archived IN ('Y', 'N')),
    ai_model_used   VARCHAR2(50) DEFAULT 'GPT-4',
    total_messages  NUMBER(10) DEFAULT 0,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_activity   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

