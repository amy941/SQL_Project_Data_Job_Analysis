SELECT
    '2023-02-19'::DATE,
    '123'::INTEGER,
    'true'::BOOLEAN,
    '3.14'::REAL;


SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date::DATE AS date -- output as 'date' only, removed the 'time'
FROM 
    job_postings_fact;


SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AS date_time
FROM
    job_postings_fact
LIMIT 5;


SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
    -- 'UTC' is 5 hrs ahead 'EST'
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
    job_postings_fact
LIMIT 5;


SELECT 
    COUNT(job_id) AS job_posted_count, -- aggregate
    EXTRACT(MONTH FROM job_posted_date) AS month 
FROM 
    job_postings_fact
WHERE 
    job_title_short = 'Data Analyst'
GROUP BY 
    month
ORDER BY
    job_posted_count DESC;

    