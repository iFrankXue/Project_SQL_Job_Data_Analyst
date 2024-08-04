SELECT 
    COUNT(job_id) AS number_of_jobs,
--    job_title_short,
--    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        WHEN job_location IS NULL THEN NULL
        ELSE 'Onsite'
    END AS location_category
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY 
    location_category;

