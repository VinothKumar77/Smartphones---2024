create table sample_dbs(
    smartphones varchar(50),
    brand varchar(50),
    model varchar(50),
    ram int,
    storage int,
    color varchar(50),
    free varchar(50),
    FinalPrice decimal(10,3),
    primary key(smartphones)
);
select * from sample_dbs;
describe sample_dbs;

-- --1. PRICE ANALYSIS-- 
select brand, AVG('Final Price') as avearge_price from sample_dbs group by brand;

select Smartphone, Brand, ('Final Price') from sample_dbs order by 'Final Price' desc limit 5;

select Smartphone, Brand, 'Final Price' from sample_dbs where 'Final Price'<300 order by 'Final Price' asc ;

-- 2. Feature Analysis
select COUNT(*) as ram_count from sample_dbs where ram>=8;

select Smartphone, Brand, storage from sample_dbs where storage>=128 order by storage desc;

select color, count(*) as color_used from sample_dbs group by color order by color_used desc;

-- 3. Freebies Analysis
-- Goal: Investigate the impact of freebies on smartphone pricing.

select Smartphone ,Free, 'Final Price'  from sample_dbs where free ='yes';

SELECT 
    CASE 
        WHEN free = 'yes' THEN 'With Freebies' 
        ELSE 'Without Freebies' 
    END AS freebies_status,
    AVG('Final Price') AS avg_price
FROM sample_dbs
GROUP BY freebies_status;

-- 4. Brand Market Insights
-- Goal: Compare the brands and their offerings.

select Brand, COUNT(Smartphone) as total_sp from sample_dbs group by Brand;

select Brand, AVG('Final Price') as high_avg from sample_dbs group by Brand;

SELECT Brand, COUNT(*) AS smartphone_count
FROM sample_dbs
GROUP BY brand;

select distinct Brand from sample_dbs where color='black'; 

select distinct Brand from sample_dbs where color='blue';

-- 5. Custom Smartphone Search
-- Goal: Create a user-friendly search for specific criteria.

select Smartphone, Ram, Storage,'Final Price' from sample_dbs where ram='8GB' and storage='128GB';

select Smartphones,Brand, 'Final Price' from sample_dbs where 'Final Price' between 500 and 5000;

-- 6. Comparison Insights
-- Goal: Compare smartphones based on specifications and price.

select Ram, AVG('Final Price') as avg_price from sample_dbs where ram in(6,8) group by Ram ;

select Smartphone, Brand, Storage,Ram, 'Final Price' from sample_dbs order by Ram, Storage, 'Final Price';

-- 7. Most Affordable Options by Brand
-- Goal: Highlight the most budget-friendly options.

select  Brand, min('Final Price') as min_price from sample_dbs group by Brand;

select Smartphone, Brand, 'Final Price' from sample_dbs order by 'Final Price' asc limit 500;



-- 8. Color and Price Relationship
-- Goal: Analyze how color preferences impact pricing.

select Color, avg('Final Price') as avg_price from sample_dbs group by Color;

select Color, avg('Final Price') as avg_price from sample_dbs group by Color order by avg_price desc  limit 1;
select Color, avg('Final Price') as avg_price from sample_dbs group by Color order by avg_price asc limit 5;


SELECT Color,'Final Price' FROM sample_dbs  WHERE 'Final Price' = (SELECT MAX('Final Price') FROM sample_dbs);

