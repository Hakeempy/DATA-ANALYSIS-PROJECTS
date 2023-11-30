use dataanalysis;

-- 1	Show all columns and rows in the table.
SELECT 
    COUNT(*)
FROM
    salaries;

-- 2	Show only the EmployeeName and JobTitle columns.
select EmployeeName, Jobtitle from salaries;

-- 3	Show the number of employees in the table.
select count(*) from salaries;

-- 4	Show the unique job titles in the table.
 select distinct jobtitle from salaries;
 
-- 5	Show the job title and overtime pay for all employees with 
-- overtime pay greater than 50000.
select jobtitle, overtimepay
from salaries
where overtimepay > 50000;

-- 6    Show the average base pay for all employees.
select avg(basepay) as avg_basepay from salaries;


-- 7	Show the top 10 highest paid employees.
select employeename, Totalpay from salaries
order by Totalpay desc
limit 10;

-- 8	Show the average of BasePay, OvertimePay, and OtherPay for each employee:
select employeename, (basepay + overtimepay+ otherpay)/3 as avg_pay from salaries;


-- 9	Show all employees who have the word "Manager" in their job title.
select employeename, jobtitle from salaries
where jobtitle like '%Manager%';


-- 10	Show all employees with a job title not equal to "Manager".
select employeename, jobtitle from salaries
where jobtitle != 'Manager';

-- 11	Show all employees with a total pay between 50,000 and 75,000.
select employeename, totalpay from salaries
where totalpay between 50000 and 75000;

select employeename, totalpay from salaries
where totalpay >= 50000 and totalpay <=75000;


-- 12	Show all employees with a base pay less than 50,000 
-- or a total pay greater than 100,000.
select * from salaries
where basepay < 50000 or totalpay > 100000;

-- 13	Show all employees with a total pay benefits value 
-- between 125,000 and 150,000 and a job title containing the word "Director".
select employeename, totalpaybenefits, jobtitle from salaries
where totalpaybenefits between 125000 and 150000
and jobtitle like '%Director%';

select count(*) from salaries
where totalpaybenefits between 125000 and 150000
and jobtitle like '%Director%';

-- 14	Show all employees ordered by their total pay benefits in descending order.
select employeename, totalpaybenefits from salaries
order by totalpaybenefits desc;

-- 15	Show all job titles with an average base pay of 
-- at least 100,000 and order them by the average base pay in descending order.
select jobtitle, avg(basepay) from salaries
group by jobtitle
having avg(basepay) >=100000
order by avg(basepay) desc;


-- 16	Delete the column.
SELECT * FROM salaries;

ALTER TABLE salaries
DROP COLUMN Notes;
SELECT * FROM salaries;


-- 17	Update the base pay of all employees with 
-- the job title containing "Manager" by increasing it by 10%.

update salaries
set BasePay = basepay * 1.1
where JobTitle Like "%Manager%";
select * from salaries;

