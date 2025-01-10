SELECT * FROM cars.car_dekho;
use cars;
-- read data--
select * from car_dekho;
-- total cars to get  a count of total record --
select count(*) from car_dekho;
-- The manager asked the employee how many cars are avaliable in 2023--
select count(*) from car_dekho where year = 2023;
-- The manager asked the employee how many cars avaliable in 2020,2021,2022--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- group by --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- client me to the print the total of all cars by year. i dont see all the details--
select year, count(*) from car_dekho group by year;
-- client asked to the car dealer agent how many cars will be there in 2020--
select count(*) from car_dekho where year=2020 and fuel = 'diesel';
-- client request a car dealer how many petrol cars will there be in 2020--
 select count(*) from car_dekho where year=2020 and fuel = 'petrol';
-- The manager told the employee to give a print all the fuel cars ( petrol,diesel,and CNG) come by all year--
select count(*) from car_dekho where fuel='petrol' group by year;
select count(*) from car_dekho where fuel='diesel' group by year;
select count(*) from car_dekho where fuel='CNG' group by year;
-- maneger said there were more than 100 cars in a given year, which year had more than 100 cars--
select year, count(*) from car_dekho group by year having count(*)>100;
-- The manager said the employee All cars count detail between 2015 and 2023; we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;
-- the manager said the employee all cars details between 2015 to 2023 we need complete list--
select * from car_dekho where year between 2015 and 2023;
-- END --



