/*
Find the count of the number of remote job postings per skill
    - Display the top 5 skills by their demand in remote jobs
    - Include skill ID, name, and count of postings requiring the skill
*/

SELECT
    job_postings.job_id,
    skill_id 
FROM 
    skills_job_dim as skills_to_job  
INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id
      
