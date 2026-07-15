CREATE TABLE user_subscription (
    subscription_id   NUMBER(10) PRIMARY KEY,
    user_id           NUMBER(10) REFERENCES users(user_id) ON DELETE CASCADE,
    plan_id           NUMBER(3) REFERENCES subscription_plan(plan_id),
    start_date        DATE DEFAULT SYSDATE,
    end_date          DATE,
    is_active         CHAR(1) DEFAULT 'Y' CHECK (is_active IN ('Y', 'N')),
    auto_renew        CHAR(1) DEFAULT 'N' CHECK (auto_renew IN ('Y', 'N')),
    created_at        TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

