select * from bank

select top 20 * from bank

select count(*) from bank

select count(*) as no_of_rows from bank

select count(*) count_of_data from bank

select top 5 balance from bank

select sum(balance) as total_balance from bank

select max(balance) as max_balance from bank

select min(balance) as min_balance from bank

select avg(balance) as avg_balance from bank

select round(avg(balance),3) as avg_balance1 from bank


--- ALL Together -------

select count(balance) as count_balance,
		sum(balance) as total_balance,
		max(balance) as max_balance,
		min(balance) as min_balance,
		avg(balance) as avg_balance from bank

select sum(balance), count(balance)as total,
		sum(balance)/count(balance) as avg_balance from bank

select job from bank ------- entire data 4521

select distinct job from bank  ---- unique data will display 12

select count(job) as total_count from bank --- entire data count 4521

select count(distinct job) as unique_job_count from bank ---- unique count

select APPROX_COUNT_DISTINCT(job) from bank


select * from bank

select balance from bank where age=80

select avg(balance) as balance_80 from bank where age=80
select avg(balance) as balance_79 from bank where age=79
select avg(balance) as balance_78 from bank where age=78

--- groupby

select age from bank
group by age

select count(age) from bank

select count(distinct age) as unique_age_count from bank

select distinct(age) from bank  --- unique values
select age from bank group by age  --- unique value
select count(age) from bank group by age --- individual age count
select count(age) from bank where age =23

select age, count(age) as count_of_age from bank
group by age

-- group by and distinct are similar
select * from bank

select job from bank group by job
select job,count(job) from bank group by job

select marital from bank group by marital
select job from bank group by marital -- error
select count(job) from bank group by marital
select marital,job from bank group by marital --- error
select marital,count(job) from bank group by marital 

select age,count(age) age_count,
		sum(balance) as sum_balance,
		sum(balance)/count(age) as avg_balance_math,
		avg(balance) as avg_balance from bank group by age


--====================== ORDER BY =================

select age from bank
group by age
order by age

select age from bank group by age order by age desc


select job,avg(balance) as avg_bal from bank
where job ='unemployed'
group by job