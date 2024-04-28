create schema cars;
use cars;
-- Read Data ---
select * from cars.car_dekho;
select * from car_dekho;
-- Total Cars : To get a count of total records --
select count(*) from car_dekho;
-- The manager asked the employees how many cars available in 2023 --
select count(*) from car_dekho where year = 2023;
-- the manager asked the employees how many cars available in year 2020, 2021, 2022 --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- group by --
select count(*) from car_dekho where year in(2020, 2021,2022) group by year;
-- Client ask to print the total of all the cars by year. I don't see all the details --
select year, count(*) from car_dekho group by year;
-- client asked to car dealers agent how many diesle car will there b in 2020? --
select count(*) from car_dekho where fuel = "diesel" and year = 2020;
-- client requested a car dealer agent how many petrol cars will be there in 2020?    --
select count(*) from car_dekho where fuel = "petrol" and  year = 2020;
-- The manager told the employee to give a print all the fuel carss( petrol, diesel and cng) come all the year --
SELECT year, COUNT(*) 
FROM car_dekho 
WHERE fuel = 'petrol' 
GROUP BY year;
SELECT year, COUNT(*) 
FROM car_dekho 
WHERE fuel = 'diesel' 
GROUP BY year;
SELECT year, COUNT(*) 
FROM car_dekho 
WHERE fuel = 'cng' 
GROUP BY year;
-- manager said there are 100 cars in a given year , which year had more than 100 cars --
SELECT year, COUNT(*) 
FROM car_dekho 
GROUP BY year 
HAVING COUNT(*) > 100;
-- the manager said to the employee all cars count details between 2015 and 2023 we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;
-- the manager said to the employee all cars details between 2015 to 2023 we need a complete list --
select * from car_dekho where year between 2015 and 2023;