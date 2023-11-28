use dataanalysis;

-- 1. Show the first 10 rows of the dataset.
SELECT * FROM titanic
LIMIT 10;

-- 2. Find the number of passengers who survived.
SELECT count(*) as survived from titanic
WHERE survived = 1;

-- 3. Find the average age of all passengers.
SELECT AVG(age) from titanic;

-- 4. Find the number of passengers in each class.
select pclass, count(*) as num_of_passengers from titanic
group by pclass
order by num_of_passengers desc;

-- 5. Find the first 10 rows of the dataset sorted by passenger class in descending order.
SELECT * FROM titanic
order by pclass desc
limit 10;

-- 6. Find the number of passengers in each class sorted by class in ascending order.
SELECT pclass, count(*) from titanic
group by pclass
order by pclass asc;

-- 7. Find the average fare paid by passengers in each class.
SELECT pclass, AVG(fare) from titanic
group by pclass;

-- 8. Find the name of the passenger with the highest fare.
SELECT name, fare from titanic where fare = (
	SELECT min(fare) from titanic);
    
    
-- 9. Find the name of the passenger who had the highest age among the survivors.
select name,age from titanic where age= (select max(age) from titanic where Survived = 1)
and Survived =1;


-- 10. Find the number of passengers who paid more than - 34.69451 the average fare.
SELECT COUNT(*) from titanic where fare > (
SELECT AVG(fare) from titanic);

-- 11. Find the name of the passenger who had the most parents or children on board.
select name, parch from titanic where Parch = (select max(Parch) from titanic);

-- 12. Find the number of male and female passengers who survived, 
-- and order the results by sex in ascending order:

SELECT sex, count(*) as num_survived from titanic where survived = 1
group by sex
order by sex asc;

-- 13. Find the name, age, and fare of the oldest passenger who survived.
SELECT name, age, fare from titanic where survived = 1 and age = (
SELECT MAX(age) from titanic where survived  = 1)















