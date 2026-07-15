SELECT p.plan_name, COUNT(ps.payment_id) AS payments, SUM(ps.amount_usd) AS revenue
FROM payment ps
JOIN user_subscription us ON ps.subscription_id = us.subscription_id
JOIN subscription_plan p ON us.plan_id = p.plan_id
WHERE ps.status = 'COMPLETED'
GROUP BY p.plan_name
ORDER BY revenue DESC;