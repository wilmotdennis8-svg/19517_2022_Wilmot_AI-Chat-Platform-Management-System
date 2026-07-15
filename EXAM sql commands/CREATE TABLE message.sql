CREATE TABLE message (
    message_id          NUMBER(10) PRIMARY KEY,
    chat_id             NUMBER(10) REFERENCES chat_session(chat_id) ON DELETE CASCADE,
    sender_type         VARCHAR2(10) NOT NULL CHECK (sender_type IN ('USER', 'AI')),
    message_content     CLOB NOT NULL,
    ai_model_used       VARCHAR2(50),
    token_usage         NUMBER(10),
    response_time_ms    NUMBER(10),
    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

