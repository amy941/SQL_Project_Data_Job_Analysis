SELECT
	name
FROM 
	company_dim
WHERE 
	name LIKE '%Tech_' -- include 'Tech' followed by ANY SINGLE character 
ORDER BY
	name;
-- % represents zero, one or more character, _ respresents exactly 1 character 


SELECT
	job_id,
    job_title,
    job_posted_date
FROM 
	job_postings_fact 
WHERE 
	job_title LIKE '%Engineer_' 
    -- includes 'Engineer' in it with ONLY one character followed after the term.
ORDER BY 
	job_id;
    
    
SELECT
	job_id,
    job_title
FROM
	job_postings_fact 
WHERE 
	job_title LIKE '%a_a%'
ORDER BY 
	job_id;