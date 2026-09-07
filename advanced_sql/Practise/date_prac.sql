SELECT 
    job_schedule_type,
    AVG(salary_year_avg) as year_avg,
    AVG(salary_hour_avg) as hour_avg
FROM job_postings_fact
WHERE job_posted_date::DATE > '2023-06-01'::DATE
GROUP BY job_schedule_type
LIMIT 100; 


SELECT 
    EXTRACT(MONTH FROM (job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EDT')) AS month,
    COUNT(*) AS cnt
FROM job_postings_fact
WHERE job_posted_date >= '2023-01-01' AND job_posted_date < '2024-01-01'
GROUP BY month
ORDER BY month;
;    