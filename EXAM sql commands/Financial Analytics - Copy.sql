SELECT SUM(amount_usd) AS total_revenue
FROM payment
WHERE status = 'COMPLETED';