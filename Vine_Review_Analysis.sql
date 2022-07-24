--select * from review_id_table;
--select * from products_table;
--select * from customers_table;
--select * from vine_table;

-- Deliverable 2 - step 1
select * 
INTO step01_total_votes
from vine_table
where total_votes >= 20; 
-- Select * from step01_total_votes; 

-- Deliverable 2 - step 2
select *
INTO step02_helpful_total_votes
from step01_total_votes
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5; 
--Select * from step02_helpful_total_votes;

-- Deliverable 2 - step 3
select *
into step03_vine_records
from step02_helpful_total_votes
where vine = 'Y'; 
--select * from step03_vine_records;

-- Deliverable 2 - step 4
select *
into step04_no_vine_records
from step02_helpful_total_votes
where vine = 'N';
--select * from step04_no_vine_records;

-- Deliverable 2 - step 5
--Number of reviews
select count(*) from vine_table; -- Number of reviews = 960872

-- number of 5 star reviews
select count(*) from vine_table where star_rating = 5; -- Number of 5 stars reviews = 571627

/*
Calculating:
- Total number of reviews
- Number of 5 star reviews
- Percentage of 5 star reviews for the two types of review (paid vs unpaid)
*/

select 

reviews.number_of_reviews,
five_star_reviews.number_of_five_star_reviews,

paid_reviews.number_of_paid_reviews,
unpaid_reviews.number_of_unpaid_reviews,

five_stars_paid_reviews.five_star_paid_reviews,
five_stars_unpaid_reviews.five_star_unpaid_reviews,

((CAST(five_stars_paid_reviews.five_star_paid_reviews AS FLOAT)/CAST(paid_reviews.number_of_paid_reviews AS FLOAT)*100.00)) as percentage_paid_reviews,
((CAST(five_stars_unpaid_reviews.five_star_unpaid_reviews AS FLOAT)/CAST(unpaid_reviews.number_of_unpaid_reviews AS FLOAT)*100.00)) as percentage_unpaid_reviews

from 
(
	select count(*) as number_of_reviews from step01_total_votes
) reviews,
(
	select count(*) as number_of_five_star_reviews from step02_helpful_total_votes where star_rating = 5
) five_star_reviews,
(
	select count(*) as number_of_paid_reviews from step03_vine_records where vine = 'Y'
) paid_reviews,
(
	select count(*) as number_of_unpaid_reviews from step04_no_vine_records where vine = 'N'
) unpaid_reviews,
(
	select count(*) as five_star_paid_reviews from step03_vine_records where vine = 'Y' and star_rating >= 5
) five_stars_paid_reviews,
(
	select count(*) as five_star_unpaid_reviews from step04_no_vine_records where vine = 'N' and star_rating >= 5
) five_stars_unpaid_reviews

