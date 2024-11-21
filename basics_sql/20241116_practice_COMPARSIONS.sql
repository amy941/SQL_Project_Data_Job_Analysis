SELECT
	job_id,
    job_title_short, 
    job_location,
    job_via, 
    salary_year_avg
FROM 
	job_postings_fact 
WHERE
	job_location = 'Tampa, FL'
ORDER BY
	job_id;
    

SELECT
	job_id, 
    job_title_short, 
    job_location,
    job_via,
    salary_year_avg,
    job_schedule_type
FROM 
	job_postings_fact
WHERE 
	job_schedule_type = 'Full-time'
ORDER BY
	job_id;
    
    
SELECT
	job_id,
    job_title_short,
    job_location, 
    job_via, 
    job_schedule_type, 
    salary_year_avg
FROM
	job_postings_fact 
WHERE
	job_schedule_type <> 'Part-time' -- !=  /OR NOT job_schedule_type 
ORDER BY
	job_id;


SELECT
	job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
	job_postings_fact
WHERE
	job_via <> 'via LinkedIn'
ORDER BY
	job_id;


SELECT
	job_id,
    job_title_short,
    job_location,
    job_via, 
    salary_year_avg
FROM
	job_postings_fact
WHERE
	salary_year_avg >= 65000
ORDER BY
	job_id;
    
    
SELECT
	job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
	job_postings_fact 
WHERE 
	salary_year_avg > 55000
ORDER BY
	job_id;
    
    
SELECT
	job_id,
    job_title_short, 
    job_location, 
    job_via,
    salary_year_avg 
FROM  
	job_postings_fact 
WHERE
	salary_year_avg < 110000
ORDER BY
	job_id;
    
    
SELECT
	job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact 
WHERE
	salary_year_avg <= 150000
ORDER BY
	job_id;
    
    
SELECT
	job_id,
    job_title_short,
    job_country,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact 
WHERE
	job_title_short = 'Data Engineer' 
    AND job_country = 'United States'
ORDER BY
	job_id;
    
    
SELECT
	job_id,
    job_title_short,
    job_location,
    job_via, 
    salary_year_avg, 
    job_schedule_type
FROM 
	job_postings_fact 
WHERE 
	job_schedule_type = 'Full-time'
    OR job_schedule_type = 'Contractor'
ORDER BY
	job_id;


SELECT
	job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE
	salary_year_avg >= 50000
    AND salary_year_avg <= 70000
ORDER BY
	job_id;


SELECT
	job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE
	salary_year_avg BETWEEN 50000 AND 70000
ORDER BY
	job_id;
    
    
SELECT
	job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact 
WHERE
	job_title_short = 'Data Scientist'
    OR job_title_short = 'Business Analyst'
ORDER BY job_id;


SELECT
	job_id,
    job_title_short,
    job_location,
    job_via, 
    salary_year_avg
FROM 
	job_postings_fact 
WHERE 
	job_title_short IN ('Data Analyst', 'Data Scientist', 'Business Analyst')
ORDER BY job_id;


SELECT
	job_id,
    job_title_short,
    job_location,
    salary_year_avg
FROM 
	job_postings_fact 
WHERE 
	job_title_short = 'Data Analyst'
    AND salary_year_avg BETWEEN 50000 AND 75000
ORDER BY
	job_id;


SELECT
	job_id,
    job_title_short,
    job_location,
    salary_year_avg, 
    job_schedule_type
FROM 
	job_postings_fact 
WHERE 
	job_title_short IN ('Data Analyst', 'Business Analyst') 
    AND salary_year_avg > 75000
ORDER BY 
	job_id;