-- 1.)
select * 
from data_analyst_jobs; --1793 Rows 

-- 2.)
select *
FROM data_analyst_jobs
LIMIT 10; --ExxonMobil

-- 3.)
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN'; --42

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location ='TN' 
OR location = 'KY'; -- 54

-- 4.)
SELECT COUNT (*)
	FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating >4; -- 6

-- 5.)
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count >=500
OR review_count <=1000; -- 3072

-- 6.)
SELECT location AS state, company, ROUND(AVG(star_rating),1) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location, company, star_rating
ORDER BY star_rating DESC; -- California

-- 7.)
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs; --881

-- 8.)
SELECT COUNT(DISTINCT title) AS unique_titles, location AS state
FROM data_analyst_jobs
WHERE location ='CA'
GROUP BY location, title
ORDER BY location; -- 230

-- 9.)/10.)
SELECT DISTINCT company , ROUND(AVG(star_rating), 2) AS avg_rating, review_count, location AS state
FROM data_analyst_jobs
WHERE company IS NOT NULL
AND review_count >5000
GROUP BY company, star_rating, review_count, location -- 82 companies >5000 reviews
ORDER BY avg_rating DESC; -- Am Express, Gen. Motors, Kaiser Permanente, Microsoft,Unilever all tied with 4.20??

-- 11.)
SELECT COUNT (*) title
FROM data_analyst_jobs
WHERE title LIKE '%Analyst' 
OR title LIKE 'Analyst%'; -- 2166 -- why does '%Analyst%' return more??

-- 12.)
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT iLIKE '%Analyst%'
AND title NOT iLIKE '%Analytics%'
ORDER BY title;

-- BONUS
SELECT domain AS industry, COUNT(title) AS hard_to_fill
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND skill iLIKE '%SQL%'
AND days_since_posting >21
GROUP BY domain
ORDER BY hard_to_fill desc;










	