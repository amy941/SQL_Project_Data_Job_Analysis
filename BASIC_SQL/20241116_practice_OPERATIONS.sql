SELECT
	activity_id,
	hours_spent + hours_rate as added_value
FROM invoices_fact
ORDER BY activity_id;


SELECT
	activity_id,
	hours_spent / hours_rate as efficiency_ratio
FROM invoices_fact
ORDER BY activity_id;


SELECT
	activity_id,
	hours_spent - hours_rate as estimate_budget
FROM invoices_fact
ORDER BY activity_id;


SELECT
	activity_id,
    (hours_spent * hours_rate) + 10 as adjusted_cost
FROM invoices_fact
ORDER BY activity_id;