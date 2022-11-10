###########Labs 01############
#1
use sakila;
#2
select * from ACTOR;
select * from FILM;
select * from CUSTOMER;
#3
select TITLE FROM FILM;
#4
select distinct(NAME) as language from LANGUAGE;
#5.1
select count(STORE_ID) from STORE;
#5.2
select count(STAFF_ID) from STAFF;
#5.3
select distinct(FIRST_NAME) from STAFF;
###########Labs 02############
#1
select FIRST_NAME from ACTOR where FIRST_NAME = 'Scarlett';
#2
select LAST_NAME from ACTOR where LAST_NAME = 'Johansson';
#3
select count(FILM_ID) from FILM;
#4
select count(RENTAL_ID) from RENTAL;
#5
select min(RENTAL_DURATION) from FILM;
select max(RENTAL_DURATION) from FILM;
#6
set @min_length = (SELECT min(LENGTH) from FILM);
set @max_length = (select max(LENGTH) from FILM);
#7
set @avg_length = (SELECT avg(LENGTH) FROM FILM);
#8
select @avg_length DIV 60 AS hrs, @avg_length % 60 as min;
#9
select COUNT(LENGTH) from FILM where LENGTH > 180;
#10
select CONCAT(FIRST_NAME,' ',LAST_NAME,' ','-',' ',EMAIL) from CUSTOMER;
#11
select max(length(TITLE)) from FILM;
###########Labs 03############
#1
select count(distinct(LAST_NAME)) from ACTOR;
#2
select count(distinct(LANGUAGE_ID)) from FILM;
#3
select count(RATING) from FILM WHERE RATING = 'PG-13';
#4
select TITLE from FILM WHERE RELEASE_YEAR = '2006' LIMIT 10;
#5
set @last_date = (select PAYMENT_DATE from PAYMENT ORDER BY PAYMENT_DATE DESC LIMIT 1);
set @first_date = (select PAYMENT_DATE from PAYMENT ORDER BY PAYMENT_DATE ASC LIMIT 1);
select datediff(@last_date,@first_date);
#6
SELECT MONTH(RENTAL_DATE), WEEKDAY(RENTAL_DATE) from RENTAL LIMIT 20;
#7
select RENTAL_DATE,
case
when WEEKDAY(RENTAL_DATE) = 5 or 6 then 'weekend'
else 'weekday'
end as 'day_type'
from RENTAL;
#8
select count(RENTAL_DATE) from RENTAL where YEAR(RENTAL_DATE)=2006 and MONTH(RENTAL_DATE)=2;
###########Labs 04############
#1
select RATING from FILM;
#2
select RELEASE_YEAR from FILM;
#3
select * from FILM where TITLE regexp 'ARMAGEDDON';
#4
select * from FILM where TITLE regexp 'APOLLO';
#5
select * from FILM where TITLE regexp 'APOLLO$';
#6
select * from FILM where TITLE regexp 'DATE';
#7
select TITLE from FILM ORDER BY length(TITLE) DESC LIMIT 10;
#8
select TITLE from FILM ORDER BY LENGTH DESC LIMIT 10;
#9
select TITLE from FILM where SPECIAL_FEATURES regexp 'Behind the Scenes';
#10
select TITLE,RELEASE_YEAR from FILM ORDER BY RELEASE_YEAR ASC , TITLE ASC;