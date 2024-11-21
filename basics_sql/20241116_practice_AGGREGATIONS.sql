SELECT
	COUNT (job_id) as jobs_offer_health_insurance
FROM job_postings_fact
WHERE 
	job_health_insurance = TRUE;
    
    
SELECT
	job_country,
    COUNT (*) as job_postings
FROM 
	job_postings_fact
GROUP BY
	job_country -- Use job_country column to GROUP the job postings
ORDER BY 
	job_country;
    
    
SELECT
	job_id,
    COUNT(job_work_from_home),
	SUM(salary_year_avg) / COUNT(salary_year_avg)
FROM 
	job_postings_fact
WHERE 
	job_work_from_home = TRUE
    AND salary_year_avg IS NOT NULL
GROUP BY 
	job_work_from_home;


SELECT
	MIN(salary_year_avg) as min_yearly_salary,
    MAX(salary_year_avg) as max_yearly_salary,
    job_location
FROM
	job_postings_fact
WHERE
	job_location LIKE '%San Francisco%'
    AND salary_year_avg IS NOT NULL;
	

SELECT
	AVG(salary_year_avg) as avg_yearly_salary
FROM
	job_postings_fact
WHERE 
	job_title_short = 'Data Scientist'
    AND salary_year_avg IS NOT NULL;
    
        
SELECT
	job_title_short,
    AVG(salary_year_avg) as avg_salary,
    MIN(salary_year_avg) as min_yearly_salary,
    MAX(salary_year_avg) as max_yearly_salary
FROM 
	job_postings_fact
GROUP BY
	job_title_short
HAVING
	COUNT(job_id) > 1000 -- include job titles with more than 1000 job postings	
ORDER BY
	job_title_short;
    
    
SELECT
	job_country,
 	AVG(salary_year_avg) as avg_yearly_salary
FROM
 	job_postings_fact
WHERE
	salary_year_avg IS NOT NULL
GROUP BY
	job_country
HAVING
	AVG(salary_year_avg) > 100000;
  

SELECT
	job_location,
	COUNT(job_id) as not_remote_job_count
FROM
	job_postings_fact
WHERE
	job_work_from_home = FALSE
GROUP BY
	job_location
HAVING
	AVG(salary_year_avg) > 70000
ORDER BY
	not_remote_job_count DESC;