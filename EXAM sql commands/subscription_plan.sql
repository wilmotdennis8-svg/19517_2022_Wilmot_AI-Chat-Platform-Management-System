CREATE TABLE subscription_plan (
    plan_id         NUMBER(3) PRIMARY KEY,
    plan_name       VARCHAR2(30) UNIQUE NOT NULL,
    description     VARCHAR2(500),
    price_usd       NUMBER(10,2),
    billing_cycle   VARCHAR2(20) CHECK (billing_cycle IN ('MONTHLY', 'YEARLY', 'LIFETIME')),
    max_chats       NUMBER(10),
    max_files       NUMBER(10),
    max_storage_mb  NUMBER(10,2),
    is_active       CHAR(1) DEFAULT 'Y' CHECK (is_active IN ('Y', 'N'))
);

