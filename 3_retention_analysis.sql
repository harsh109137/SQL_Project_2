WITH customer_last_purchase AS 
		(SELECT
			customerkey,
			customer_name,
			orderdate,
			ROW_NUMBER() OVER (PARTITION BY customerkey
ORDER BY
			orderdate DESC) AS row_no,
		first_purchase_date,
		cohort_year 
FROM
			cohort_analysis)
,
churned_customers AS 
(
SELECT
		customerkey,
		customer_name,
		orderdate AS last_purchase_date,
		CASE 
			WHEN orderdate < (SELECT max(orderdate) FROM sales) - INTERVAL '6 months' THEN 'Churned'
			ELSE 'Active'
		END AS customer_status,
		cohort_year 
		
	FROM
		customer_last_purchase
	WHERE
		row_no = 1
		AND first_purchase_date <  (SELECT max(orderdate) FROM sales) - INTERVAL '6 months'
		)
SELECT
cohort_year,	
customer_status,
	count(customerkey) AS customer_count,
	sum(count(customerkey)) OVER(PARTITION BY cohort_year) AS total_customers,
	round(100 * count(customerkey) / sum(count(customerkey)) OVER(PARTITION BY cohort_year), 1) AS pct_status
FROM
	churned_customers
GROUP BY
	cohort_year,customer_status