SELECT
	job_postings_fact.job_id, 
    job_postings_fact.job_location, 
    job_postings_fact.job_posted_date,
	job_postings_fact.job_title, 
    company_dim.name
FROM job_postings_fact 
INNER JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
	job_postings_fact.job_title_short = 'Data Scientist' 
ORDER BY 
	job_postings_fact.job_posted_date DESC;
    
    
SELECT
	job_postings_fact.job_id,
    job_postings_fact.job_title,
    skills_dim.skills 
FROM
	job_postings_fact 
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
WHERE
	job_postings_fact.job_location = 'New York' 
    AND job_postings_fact.job_health_insurance = TRUE 
ORDER BY
	job_postings_fact.job_id DESC;
    
    
-- solutions: 
SELECT
	job_postings_fact.job_id,
    job_postings_fact.job_title,
    skills_dim.skills 
FROM
	job_postings_fact 
LEFT JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
LEFT JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
	job_postings_fact.job_location = 'New York' 
    AND job_postings_fact.job_health_insurance = TRUE 
ORDER BY
	job_postings_fact.job_id DESC;
    
    
SELECT
	COUNT(job_postings_fact.job_id) as number_job_postings, 
    -- counts num of job postings associated with each skill from job_postings_fact table 
    skills_dim.skills
FROM
	job_postings_fact
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id      
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id     
WHERE 
	job_postings_fact.job_work_from_home = TRUE
    AND job_postings_fact.salary_year_avg > 100000
GROUP BY
	skills_dim.skills
ORDER BY    
	number_job_postings DESC;