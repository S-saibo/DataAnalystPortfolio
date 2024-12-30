

----OLA DATA ANALYSIS----


--**********************************************


--1. Retrive all successful Bookings
CREATE VIEW SUCCESSFUL_BOOKINGS AS
SELECT * from "Bookings"
WHERE "Booking_Status" = 'Success';

SELECT * FROM SUCCESSFUL_BOOKINGS;



--2.Find the average ride distance  foreach vehicle type.
select "Vehicle_Type",
avg("Ride_Distance")
from "Bookings"
group by "Vehicle_Type"


--3.Get the total number of calcelled ride by customers
select count("Canceled_Rides_by_Customer") "Customer_cancled_Count" from "Bookings"

--or--

select count("Booking_Status") from "Bookings"
where "Booking_Status" = 'Canceled by Customer'



--4.List the top 5 customers who booked the higheset number of rides
select "Customer_ID",
count("Booking_ID")
from "Bookings"
group by "Customer_ID"
order by 2 desc
limit 5;

--5.get the number of rides cancelled by drivers due to personal and car related problems
select count("Canceled_Rides_by_Driver")
from "Bookings"
where "Canceled_Rides_by_Driver" = 'Personal & Car related issue'



--6.Find the maximum and minimum driver ratings  for Prime SEdan bookings
select min("Driver_Ratings") as "minimum_driver_Ratings",
max("Driver_Ratings") as "maximum_Driver_Ratings"
from "Bookings"
where "Vehicle_Type"='Prime Sedan'


--7.Retrieve all rides where payment was made using UPI
create view rides_detail_UPI_Payment as
select * from "Bookings"
where "Payment_Method" = 'UPI';

select * from rides_detail_UPI_Payment;

--8.Find the average customer ratings per vehicle types
select "Vehicle_Type",
avg("Customer_Rating")
from "Bookings"
group by "Vehicle_Type"


--9.Calculate the total booking value of ride completed successfully
create view SuccessFullBookings as
select sum("Booking_Value") "Total_Booking_Value"
from "Bookings"
where "Booking_Status" = 'Success'

--10.List all incomplete rides along with their reasons
select "Booking_ID","Incomplete_Rides_Reason"
from "Bookings"
where "Incomplete_Rides" = 'Yes'



--select * from public."Bookings"
