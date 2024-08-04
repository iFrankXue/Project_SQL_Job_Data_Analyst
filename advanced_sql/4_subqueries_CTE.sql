
WITH company_job_count AS (
SELECT 
    company_id,
    COUNT(*)
FROM
    job_postings_fact
GROUP BY company_id
)

SELECT *
FROM company_job_count