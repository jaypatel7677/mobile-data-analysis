create schema jay_mobile;

use jay_mobile;

select * from csvjson;

-- check mobile features and price list

select phone_name , price from csvjson ;

-- find out the name of 5 most expensive phone

Select phone_name , max(price) as price
from csvjson
group by phone_name
order by price desc
limit 5 ;

-- Find out the price of 5 most cheapest phones

 select * from csvjson
 order by price asc
 limit 5;
 
 -- List of top 5 Samsung phones with price and all features
 
 select * from csvjson
 where brands ="samsung"
 order by price desc
 limit 5;
 
 -- Must have android phone list then top 5 High price android phones
 
 select * from csvjson
 where operating_system_type = "Android"
 order by price desc
 limit 5;
 
 -- Must have android phone list then top 5 lower price android phones
 
 select * from csvjson
 where operating_system_type = "Android"
 order by price asc
 limit 5;
 
 -- Must have IOS phone list then top 5 High price IOS phones
 
select * from csvjson
 where operating_system_type = "IOS"
 order by price desc
 limit 5; 
 
 -- Must have IOS phone list then top 5 lower price lOS phones
 select * from csvjson
 where operating_system_type = "IOS"
 order by price asc
 limit 5;
 
 -- write a query which phone support 5g and also top 5 phone with 5g support
 
 select * from csvjson
 where 5G_availability="yes"
 order by price desc
 limit 5;

-- Total price of all mobile is to be found with brand name

select sum(price) as tprice , brands
from csvjson
group by brands
order by tprice desc;

