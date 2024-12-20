SELECT 
	job_id,
    job_title_short,
    job_location,
    job_via as job_posted_site, 
    job_posted_date, 
    salary_year_avg as avg_yearly_salary
FROM 
	job_postings_fact
ORDER BY
	job_id;