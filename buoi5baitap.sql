--bai 1
select distinct CITY from STATION
where ID%2=0
--bai 2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION
--bai 3
--bai 4
SELECT
Round(CAST (sum(item_count*order_occurrences) / sum(order_occurrences) as decimal),1) AS mean
FROM items_per_order;
--bai 5
SELECT DISTINCT candidate_id FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) =3
--bai 6
SELECT user_id,
DATE(max(post_date)) - DATE(min(post_date)) AS day_between
FROM posts
WHERE post_date >= '2021-01-01' and post_date< '2022-01-01'
GROUP BY user_id
HAVING COUNT(post_content) >='2'
--bai 7
SELECT DISTINCT card_name,
max(issued_amount)-min(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC
--bai 8
SELECT manufacturer, 
COUNT (drug) as drug_count,
ABS(sum(total_sales - cogs)) AS total_lost
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY total_lost DESC
--bai 9
select * from Cinema
where id%2=1 and description <> 'boring'
order by rating desc
--bai 10
select teacher_id,
count(distinct subject_id) as cnt
from Teacher
group by teacher_id
--bai 11
select distinct user_id,
count(follower_id) as followers_count
from Followers
group by user_id
order by user_id
--bai 12
select class from Courses
group by class
having count(student) >= '5'
order by class
