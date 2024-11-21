SELECT
	skill_id,
	skills 
FROM 
	skills_dim 
WHERE
	type IS NULL; 
-- the results mean that all the skills listed in the skills_dim table have a type.
-- means the data is clean 


SELECT
	job_id,
    job_title,
    salary_year_avg, 
    salary_hour_avg
FROM
	job_postings_fact
WHERE
	salary_year_avg IS NULL
    AND salary_hour_avg IS NULL
    -- neither an annual avg salary nor an hourly avg salary in the table
ORDER BY
	job_id;