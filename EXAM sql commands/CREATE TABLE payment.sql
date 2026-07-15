CREATE TABLE payment (
    payment_id       NUMBER(10) PRIMARY KEY,
    user_id          NUMBER(10) REFERENCES users(user_id) ON DELETE CASCADE,
    subscription_id  NUMBER(10) REFERENCES user_subscription(subscription_id) ON DELETE SET NULL,
    amount_usd       NUMBER(10,2) NOT NULL,
    currency         VARCHAR2(3) DEFAULT 'USD',
    payment_method   VARCHAR2(30),
    transaction_id   VARCHAR2(100) UNIQUE,
    status           VARCHAR2(20) DEFAULT 'PENDING' CHECK (status IN ('PENDING', 'COMPLETED', 'FAILED', 'REFUNDED')),
    payment_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

