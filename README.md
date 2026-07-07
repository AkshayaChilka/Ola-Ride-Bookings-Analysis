Problem Statement
Ride-hailing platforms operate on thin margins where every failed booking is lost revenue and a dented customer/driver relationship. Out of 100,000 bookings placed on the platform in a single month, only 62.33% were completed successfully — meaning nearly 38,000 rides never converted into revenue.
🎯 Objective


Measure overall booking success/failure rates and their drivers.
Break down performance by vehicle type, payment method, and time.
Quantify cancellation behavior (customer-initiated vs. driver-initiated).
Surface actionable insights a mobility business could act on (e.g., driver allocation, incentive design).


🗂️ Dataset

bangalore_ride_dataset_100k.xlsx — 100,000 rows, 19 columns:

ColumnDescriptionDate, TimeBooking timestampBooking_ID, Customer_IDUnique identifiersBooking_StatusSuccess / Canceled by Driver / Canceled by Customer / No Driver Found / IncompleteVehicle_TypePrime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, E-BikePickup_Location, Drop_LocationRide locationsV_TAT, C_TATVehicle/Customer turnaround timeCanceled_Rides_by_Customer, Canceled_Rides_by_DriverCancellation flagsIncomplete_Rides, Incomplete_Rides_ReasonIncomplete ride flag and reasonBooking_ValueRide fare valuePayment_MethodUPI, Cash, Card, WalletRide_DistanceDistance travelled (km)Driver_Ratings, Customer_RatingPost-ride ratings

🛠️ Tools & Tech


Power BI — dashboard build, DAX measures, interactive date/vehicle filters
Excel / Python (pandas) — data cleaning and validation


📊 Dashboard Pages


Overall — total bookings, total booking value, booking status breakdown, ride volume trend
Vehicle Type — booking value, success value, avg. & total distance travelled per vehicle type
Revenue — revenue by payment method, daily revenue trend, top 5 customers by booking value
Cancellation — cancellation rate, cancellations by customer vs. driver
Ratings — driver and customer ratings by vehicle type


🔑 Key Findings


Success rate: 62.33% (62,331 / 100,000 bookings completed successfully).
Booking status split: Success 62.3% · Canceled by Driver 17.8% · No Driver Found 7.1% · Canceled by Customer 7.0% · Incomplete 5.9%.
Driver-side cancellations dominate: 17,774 driver cancellations vs. 6,969 customer cancellations — a 2.5x gap, pointing to driver allocation/incentive issues rather than customer dissatisfaction as the primary drag on completion rate.
Total booking value: ₹44M, but successful booking value per vehicle type clusters tightly at ₹3.8M–4.0M regardless of that vehicle's total (requested) booking value — e.g., Auto has the highest total booking value (₹18.86M) yet a similar successful value (~₹3.87M) to every other vehicle type.
Ratings are stable across the board: driver ratings 4.24–4.25, customer ratings 4.24–4.26 across all vehicle types — service quality perception isn't segmented by vehicle.
Payment methods are balanced: UPI, Cash, Card, and Wallet each drive roughly ~₹10M in revenue, with no single method dominating.
Incomplete ride reasons are spread fairly evenly across driver-cancel requests, wrong address, driver not moving toward pickup, change of plans, no-shows, route issues, technical issues, and vehicle breakdowns — no single root cause explains incomplete rides.

Outcome: a dashboard that turns "our completion rate is 62%" into a specific, actionable recommendation — investigate driver cancellation causes and incentive structures first, since that's the single largest, most controllable source of lost bookings.

📁 Repo Structure

├── bangalore_ride_dataset_100k.xlsx   # Raw dataset
├── Ola_Dashboard.pbix                 # Power BI dashboard file
├── screenshots/                       # Dashboard page exports
└── README.md

🚀 How to Explore


Clone the repo.
Open Ola_Dashboard.pbix in Power BI Desktop.
Use the date slicer and vehicle-type filters to explore any period or segment.
