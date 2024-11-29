/* 
Label new columns as follows:
- 'Anywhere' jobs as 'Remote'
- 'New York, NY' jobs as 'Local'
- Otherwise 'Onsite'
*/

SELECT
    job_title_short,
    job_location, -- don't forget COMMA here!!!
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category    
FROM job_postings_fact;    



SELECT
    COUNT(job_id) AS number_of_jobs, -- COMMA here!!!
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY
    location_category;