SELECT 
	job_id,
    job_title_short,
    job_location,
    job_via
FROM 
	job_postings_fact
ORDER BY
	job_location;


SELECT 
	job_id,
    job_title_short,
    job_location,
    job_via
FROM 
	job_postings_fact
ORDER BY
	job_title_short DESC;
    
    
SELECT
	job_id,
    job_title_short,
    job_location, 
    job_via
FROM 
	job_postings_fact 
ORDER BY
	job_location 
LIMIT 10;    


SELECT DISTINCT
	job_location
FROM 
	job_postings_fact 
ORDER BY 
	job_location;
    
    
SELECT 
	job_id,
    job_title_short, 
    job_location, 
    job_via, 
    salary_year_avg 
FROM 
	job_postings_fact 
WHERE 
	job_title_short = 'Data Engineer'
ORDER BY 
	job_id;