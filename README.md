# 🚖 Ola Ride Bookings Analysis — Power BI Dashboard

End to end data analysis project on 100K+ Ola ride bookings (July 2024) to uncover trends in booking success, cancellations, revenue, and customer/driver satisfaction built using SQL for data exploration and Power BI for an interactive dashboard.

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Excel/CSV](https://img.shields.io/badge/Data-CSV-217346?style=flat&logo=microsoftexcel&logoColor=white)

---

## 📌 Problem Statement

Ola's operations team wants visibility into ride booking performance across Bangalore for July 2024. Leadership needs to understand:

- What % of rides are completed successfully vs. canceled or failed?
- Why are rides being canceled — by customers or drivers — and what are the top reasons?
- Which vehicle types and payment methods drive the most revenue?
- How satisfied are customers and drivers (ratings), and does ride distance/value affect this?
- Are there patterns by time of day, location, or vehicle type that can reduce cancellations and improve revenue?

This project answers these questions through a SQL-based exploration layer and an interactive Power BI dashboard for self-serve analysis.

---

## 🗂️ Dataset

| Detail | Description |
|---|---|
| Source | Ola ride bookings, Bangalore (synthetic/sample dataset) |
| Period | July 1 – July 31, 2024 |
| Rows | 103,024 bookings |
| Columns | 21 (Booking ID, Status, Customer ID, Vehicle Type, Pickup/Drop Location, V_TAT, C_TAT, Cancellation reasons, Booking Value, Payment Method, Ride Distance, Driver/Customer Ratings, etc.) |

**File:** [`Bookings.csv`](./Bookings.csv)

---

## 🔑 Key Insights

- **Success rate:** 62% of bookings completed successfully; the remaining 38% split between driver cancellations (18%), customer cancellations (10%), and "Driver Not Found" (10%).
- **Revenue:** ₹3.5+ crore in total revenue from completed rides, with an average booking value of ₹548 and average ride distance of ~23 km.
- **Top cancellation reasons (by driver):** personal/car-related issues, customer-related issues, and customer health concerns (coughing/sick) account for the majority of driver-side cancellations.
- **Top cancellation reasons (by customer):** driver not moving toward pickup, driver asking to cancel, and change of plans are the leading causes.
- **Ratings:** Average driver and customer ratings both sit around 4.0/5, fairly consistent across vehicle types.
- **Payment mix:** Cash (34%) and UPI (25%) dominate, with credit/debit cards making up a small share — relevant for any digital-payment push.
- **Vehicle mix:** Bookings are nearly evenly split across 7 vehicle types (Auto, Bike, eBike, Mini, Prime Sedan, Prime Plus, Prime SUV), each ~14-15% of volume.

*(Full breakdowns, trends by hour/day, and location-level cuts are in the dashboard.)*

---

## 🛠️ Tools & Tech Stack

- **SQL (MySQL)** – data exploration solved as 10 business problems, each backed by a reusable VIEW (see [`sql/Ola_SQL_Problem_Solution.sql`](./sql/Ola_SQL_Problem_Solution.sql))
- **Power BI** – data modeling (star schema / DAX measures), interactive dashboard, and slicers ([`Ola_Analysis.pbix`](./Ola_Analysis.pbix))
- **DAX** – calculated measures for success rate, cancellation rate, revenue, and average ratings

### SQL Business Problems Solved
1. Retrieve all successful bookings
2. Average ride distance per vehicle type
3. Total rides cancelled by customers
4. Top 5 customers by ride volume
5. Rides cancelled by drivers due to personal/car issues
6. Max & min driver ratings for Prime Sedan
7. All rides paid via UPI
8. Average customer rating per vehicle type
9. Total booking value of successful rides
10. Incomplete rides with reasons

---

## 📊 Dashboard Preview

**Overview**
![Overview Dashboard](./screenshots/Overview.png)

**Vehicle Type Analysis**
![Vehicle Type Analysis](./screenshots/Vehicle Type.png)

**Revenue Analysis**
![Revenue Analysis](./screenshots/Revenue.png)

**Cancellation Analysis**
![Cancellation Analysis](./screenshots/Cancellation.png)

**Ratings & Customer Insights**
![Ratings Analysis](./screenshots/Ratings.png)

---

---

## 🚀 How to Use

1. Clone the repo: `git clone https://github.com/zishan9309/ola-ride-bookings-analysis.git`
2. Open `Ola_Analysis.pbix` in Power BI Desktop to explore the interactive dashboard.
3. Run `sql/Ola_SQL_Problem_Solution.sql` against a MySQL instance (with `bookings.csv` imported into a `bookings` table) to reproduce the 10 business-problem solutions.

---

## 👤 Author

**Zishan Khan**
[LinkedIn](https://linkedin.com/in/zishan-khan-a310a3259) · [GitHub](https://github.com/zishan9309)
