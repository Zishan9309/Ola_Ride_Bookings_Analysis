CREATE DATABASE Ola;
USE Ola;
SELECT * FROM bookings;

-- ============================================================
-- Ola Ride Bookings — Business Problem & SQL Solution
-- Each problem is solved via a reusable VIEW, then queried.
-- ============================================================

-- 1. Retrieve all successful bookings
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status = "Success";

SELECT * FROM Successful_Bookings;

-- 2. Find the average ride distance for each vehicle type
CREATE VIEW AVG_Ride_Distance AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_Ride_Distance
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM AVG_Ride_Distance;

-- 3. Get the total number of cancelled rides by customers
CREATE VIEW Rides_Cancelled_by_Customer AS
SELECT COUNT(*) AS Cancelled_by_Customer
FROM bookings
WHERE Booking_Status = "Canceled by Customer";

SELECT * FROM Rides_Cancelled_by_Customer;

-- 4. List the top 5 customers who booked the highest number of rides
CREATE VIEW Top_5_Highest_Booking_Customer AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

SELECT * FROM Top_5_Highest_Booking_Customer;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues
CREATE VIEW Canceled_by_Driver_P_C_Issues AS
SELECT COUNT(*) AS cancelled_personal_car_issue
FROM bookings
WHERE Canceled_Rides_by_Driver = "Personal & Car related issue";

SELECT * FROM Canceled_by_Driver_P_C_Issues;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings
CREATE VIEW Max_Min_Driver_Rating_Prime_Sedan AS
SELECT MAX(Driver_Ratings) AS max_rating, MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = "Prime Sedan";

SELECT * FROM Max_Min_Driver_Rating_Prime_Sedan;

-- 7. Retrieve all rides where payment was made using UPI
CREATE VIEW UPI_Payments AS
SELECT * FROM bookings
WHERE Payment_Method = "UPI";

SELECT * FROM UPI_Payments;

-- 8. Find the average customer rating per vehicle type
CREATE VIEW Avg_Cust_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM Avg_Cust_Rating;

-- 9. Calculate the total booking value of rides completed successfully
CREATE VIEW Total_Successful_Booking_Value AS
SELECT SUM(Booking_Value) AS total_booking_value
FROM bookings
WHERE Booking_Status = "Success";

SELECT * FROM Total_Successful_Booking_Value;

-- 10. List all incomplete rides along with the reason
CREATE VIEW Incomplete_Rides_Reason_View AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = "Yes";

SELECT * FROM Incomplete_Rides_Reason_View;
