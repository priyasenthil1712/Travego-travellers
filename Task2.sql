USE Travego;

-- a. How many female passengers traveled a minimum distance of 600 KMs? (1 mark)
 SELECT * FROM Passenger;
SELECT count(passenger_name) FROM Passenger 
WHERE Distance>=600 AND Gender LIKE 'F';

-- b. Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus. 

SELECT * FROM Passenger
WHERE Distance>500 AND Bus_Type='sleeper';

-- c. Select passenger names whose names start with the character 'S'.

SELECT Passenger_name FROM Passenger
WHERE Passenger_name LIKE "S%";


-- d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City, Destination City, Bus type, and Price in the output. (3 marks)**/
SELECT * FROM Passenger;
SELECT * FROM Price;
SELECT P.Passenger_name,P.Boarding_City,P.Destination_City,P.Bus_type,PR.Price FROM Passenger P,PRICE PR 
WHERE P.Bus_type=PR.Bus_type AND P.Distance=PR.Distance; 

-- e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus? 
  SELECT P.Passenger_name,PR.Price FROM Passenger P,Price PR 
  WHERE P.Bus_type=PR.Bus_type 
  AND P.Distance=1000 AND P.Bus_type ="Sitting";

-- f.What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji? 
SELECT * FROM Passenger;
SELECT * FROM Price;
SELECT P.Passenger_name,P.Distance,P.Bus_Type,PR.Price FROM Passenger P,PRICE PR
WHERE  P.Distance=PR.Distance AND P.distance=600 and P.passenger_name="pallavi";

-- g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper 
update passenger
set category='Non-Ac'
where bus_type='Sleeper' and passenger_id;

-- h. Delete an entry from the table where the passenger name is Piyush and commit this change in the database. 
DELETE FROM Passenger WHERE passenger_name='Piyush ';

-- i. Truncate the table passenger and comment on the number of rows in the table (explain if required). 
truncate table passenger;
select  * from passenger;
-- if we use truncate it delete all the rows in the table so zero no of rows are there

-- j. Delete the table passenger from the database.
drop  table passenger ;
show tables ;
