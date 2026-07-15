CREATE TABLE feedback (
    feedback_id     NUMBER(10) PRIMARY KEY,
    user_id         NUMBER(10) REFERENCES users(user_id) ON DELETE SET NULL,
    chat_id         NUMBER(10) REFERENCES chat_session(chat_id) ON DELETE CASCADE,
    rating          NUMBER(2) CHECK (rating BETWEEN 1 AND 5),
    feedback_comment VARCHAR2(500),
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

