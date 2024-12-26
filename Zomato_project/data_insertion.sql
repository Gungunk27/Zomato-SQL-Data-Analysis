BEGIN TRANSACTION;
-- This SQL script inserts data into the 'customers' table.
-- The table has three columns: customer_id, customer_name, and reg_date.
-- Metadata: This query is part of the Zomato SQL Project for inserting customer data.

INSERT INTO customers (customer_id, customer_name, reg_date) VALUES
(1, 'Aarav', '2022-08-28'),
(2, 'Vihaan', '2021-05-17'),
(3, 'Ananya', '2023-10-01'),
(4, 'Ishaan', '2023-10-27'),
(5, 'Meera', '2023-08-24'),
(6, 'Riya', '2020-08-25'),
(7, 'Krish', '2020-08-30'),
(8, 'Aditya', '2023-06-29'),
(9, 'Priya', '2020-12-09'),
(10, 'Kabir', '2021-02-15'),
(11, 'Sanya', '2020-06-14'),
(12, 'Vivaan', '2020-12-15'),
(13, 'Simran', '2022-09-06'),
(14, 'Arjun', '2022-08-06'),
(15, 'Dev', '2021-04-29'),
(18, 'Kavya', '2021-08-25'),
(19, 'Siddharth', '2022-11-14'),
(20, 'Tara', '2021-07-03'),
(21, 'Neha', '2023-10-24'),
(22, 'Aryan', '2023-10-09'),
(23, 'Dhruv', '2023-09-20'),
(24, 'Myra', '2024-12-13'),
(25, 'Naina', '2024-01-07'),
(26, 'Soham', '2024-01-01'),
(27, 'Alia', '2023-07-05'),
(28, 'Meena', '2023-11-30'),
(29, 'Pari' , '2023-12-01');

COMMIT;
select * from customers;

-- ######################### SEPARATOR ###########################

BEGIN TRANSACTION;
-- This SQL query inserts data into the 'restaurants' table.
-- It adds values for restaurant_id, restaurant_name, city, and opening_hours columns.

INSERT INTO restaurants (restaurant_id, restaurant_name, city, opening_hours) VALUES
(1, 'Tandoori Nights', 'Delhi', '7:00 PM - 11:00 PM'),
(2, 'Spice Symphony', 'Mumbai', '6:30 PM - 10:30 PM'),
(3, 'Curry Junction', 'Bangalore', '7:00 PM - 11:30 PM'),
(4, 'Saffron Spice', 'Kolkata', '6:00 PM - 10:00 PM'),
(5, 'Masala House', 'Chennai', '7:00 PM - 11:00 PM'),
(6, 'Flavors of Punjab', 'Amritsar', '5:00 PM - 10:00 PM'),
(7, 'Royal Rasoi', 'Jaipur', '6:30 PM - 11:00 PM'),
(8, 'Dilli Zaika', 'Lucknow', '7:00 PM - 11:30 PM'),
(9, 'Annapurna Bhavan', 'Hyderabad', '6:00 PM - 10:30 PM'),
(11, 'Rajdhani Rasoi', 'Ahmedabad', '7:00 PM - 11:00 PM'),
(12, 'Biryani Corner', 'Hyderabad', '6:00 PM - 11:30 PM'),
(13, 'Dakshin Delight', 'Chennai', '6:30 PM - 10:30 PM'),
(14, 'The Spice Hub', 'Pune', '7:00 PM - 11:30 PM'),
(15, 'Zayka Mahal', 'Kanpur', '6:00 PM - 10:00 PM'),
(16, 'Heritage Haveli', 'Udaipur', '6:30 PM - 11:00 PM'),
(17, 'Garam Masala', 'Surat', '7:00 PM - 11:00 PM'),
(18, 'Bombay Bistro', 'Mumbai', '6:30 PM - 11:30 PM'),
(19, 'Taste of Bengal', 'Kolkata', '7:00 PM - 11:30 PM'),
(20, 'Punjabi Tadka', 'Ludhiana', '5:00 PM - 10:30 PM'),
(21, 'Nawabi Zaika', 'Lucknow', '7:00 PM - 11:30 PM'),
(22, 'The Curry Palace', 'Delhi', '6:00 PM - 10:30 PM'),
(23, 'Kerala Kitchen', 'Kochi', '7:00 PM - 11:00 PM'),
(24, 'Rajasthani Thali', 'Jodhpur', '6:30 PM - 11:00 PM'),
(25, 'Chaat Bazaar', 'Noida', '5:00 PM - 9:30 PM'),
(26, 'Coastal Aroma', 'Mangalore', '7:00 PM - 11:00 PM'),
(27, 'Vindaloo Village', 'Goa', '6:00 PM - 10:30 PM'),
(28, 'Desi Treats', 'Nagpur', '7:00 PM - 11:00 PM'),
(29, 'Aroma of India', 'Bhopal', '6:30 PM - 11:30 PM'),
(30, 'Royal Curry', 'Agra', '7:00 PM - 10:30 PM');

COMMIT;
select * from restaurants;

-- ######################### SEPARATOR ###########################

BEGIN TRANSACTION;
/*
 * This SQL query retrieves the list of employees from the 'employees' table.
 * It selects the employee ID, first name, last name, and department.
 * The results are ordered by the employee's last name in ascending order.
 */

INSERT INTO orders (order_id, customer_id, restaurant_id, order_item, order_date, order_time, order_status, total_amount) VALUES
(1, 1, 1, 'Tandoori Chicken', '2023-12-01', '19:30:00', 'Completed', 850.00),
(2, 2, 2, 'Butter Naan with Paneer Tikka', '2023-12-02', '20:00:00', 'Completed', 550.00),
(3, 3, 3, 'Chicken Curry with Rice', '2023-12-03', '19:45:00', 'Completed', 650.00),
(4, 4, 4, 'Fish Curry with Rice', '2023-12-04', '20:15:00', 'Completed', 700.00),
(5, 5, 5, 'Masala Dosa', '2023-12-05', '18:30:00', 'Completed', 300.00),
(6, 6, 6, 'Amritsari Kulcha', '2023-12-06', '19:15:00', 'Completed', 400.00),
(7, 7, 7, 'Dal Baati Churma', '2023-12-07', '19:00:00', 'Completed', 500.00),
(8, 8, 8, 'Lucknowi Biryani', '2023-12-08', '19:45:00', 'Completed', 750.00),
(9, 9, 9, 'Hyderabadi Dum Biryani', '2023-12-09', '20:30:00', 'Completed', 850.00),
(10, 10, 11, 'Gujarati Thali', '2023-12-10', '19:15:00', 'Completed', 650.00),
(11, 11, 12, 'Chicken 65', '2023-12-11', '19:45:00', 'Completed', 550.00),
(12, 12, 13, 'Chettinad Chicken', '2023-12-12', '20:15:00', 'Completed', 600.00),
(13, 13, 14, 'Pav Bhaji', '2023-12-13', '19:30:00', 'Completed', 300.00),
(14, 14, 15, 'Kanpuri Kachori', '2023-12-14', '20:00:00', 'Completed', 250.00),
(15, 15, 16, 'Rajasthani Thali', '2023-12-15', '19:15:00', 'Completed', 750.00),
(16, 16, 17, 'Surati Locho', '2023-12-16', '19:45:00', 'Completed', 350.00),
(17, 17, 18, 'Bombay Sandwich', '2023-12-17', '18:45:00', 'Completed', 200.00),
(18, 18, 19, 'Shorshe Ilish', '2023-12-18', '20:00:00', 'Completed', 850.00),
(19, 19, 20, 'Makki Ki Roti with Sarson Ka Saag', '2023-12-19', '19:00:00', 'Completed', 550.00),
(20, 20, 21, 'Awadhi Mutton Biryani', '2023-12-20', '20:30:00', 'Completed', 950.00),
(21, 21, 22, 'Chicken Tikka Masala', '2023-12-21', '19:45:00', 'Completed', 800.00),
(22, 23, 23, 'Kerala Parotta with Beef Fry', '2023-12-22', '20:00:00', 'Completed', 700.00),
(23, 24, 24, 'Jodhpuri Gatta Curry', '2023-12-23', '19:15:00', 'Completed', 600.00),
(24, 26, 25, 'Aloo Tikki Chaat', '2023-12-24', '19:30:00', 'Completed', 250.00),
(25, 27, 26, 'Mangalore Fish Curry', '2023-12-25', '20:15:00', 'Completed', 750.00),
(26, 28, 27, 'Goan Prawn Curry', '2023-12-26', '19:30:00', 'Completed', 850.00),
(27, 29, 28, 'Nagpuri Saoji Chicken', '2023-12-27', '19:00:00', 'Completed', 900.00),
(28, 1, 29, 'Bhopali Keema Pulao', '2023-12-28', '20:30:00', 'Completed', 950.00),
(29, 2, 30, 'Mughlai Chicken', '2023-12-29', '19:45:00', 'Completed', 850.00);

COMMIT;

-- ######################### SEPARATOR ###########################

BEGIN TRANSACTION;
-- This SQL query inserts a new record into the 'orders' table with specified values for 
-- order_id, customer_id, restaurant_id, order_item, order_date, order_time, order_status, and total_amount.

INSERT INTO orders (order_id, customer_id, restaurant_id, order_item, order_date, order_time, order_status, total_amount) VALUES
(30, 1, 2, 'Butter Naan with Butter Chicken', '2023-12-30', '19:45:00', 'Completed', 700.00),
(31, 1, 3, 'Chicken Biryani', '2023-12-31', '20:00:00', 'Completed', 750.00),
(32, 2, 4, 'Malai Kofta', '2023-12-30', '18:30:00', 'Completed', 650.00),
(33, 2, 5, 'Rogan Josh', '2023-12-31', '19:15:00', 'Completed', 800.00),
(34, 3, 6, 'Lemon Rice', '2023-12-30', '19:00:00', 'Completed', 500.00),
(35, 3, 7, 'Hyderabadi Chicken Biryani', '2023-12-31', '20:30:00', 'Completed', 850.00),
(36, 4, 8, 'Prawn Malai Curry', '2023-12-30', '18:45:00', 'Completed', 900.00),
(37, 4, 9, 'Fish Tikka Masala', '2023-12-31', '19:45:00', 'Completed', 750.00),
(38, 5, 10, 'Paneer Butter Masala', '2023-12-30', '20:00:00', 'Completed', 600.00),
(39, 5, 11, 'Chole Bhature', '2023-12-31', '19:30:00', 'Completed', 500.00),
(40, 6, 12, 'Biryani Rice', '2023-12-30', '19:15:00', 'Completed', 700.00),
(41, 6, 13, 'Chickpea Curry', '2023-12-31', '20:15:00', 'Completed', 750.00),
(42, 7, 14, 'Pani Puri', '2023-12-30', '19:00:00', 'Completed', 300.00),
(43, 7, 15, 'Aloo Paratha', '2023-12-31', '19:45:00', 'Completed', 400.00),
(44, 8, 16, 'Tandoori Roti with Dal Tadka', '2023-12-30', '19:30:00', 'Completed', 500.00),
(45, 8, 17, 'Korma with Naan', '2023-12-31', '20:00:00', 'Completed', 650.00),
(46, 9, 18, 'Butter Naan with Saag Paneer', '2023-12-30', '19:45:00', 'Completed', 600.00),
(47, 9, 19, 'Goan Fish Curry', '2023-12-31', '20:30:00', 'Completed', 750.00),
(48, 10, 20, 'Biryani with Seekh Kebab', '2023-12-30', '19:15:00', 'Completed', 900.00),
(49, 10, 21, 'Paneer Toofani with Roti', '2023-12-31', '20:00:00', 'Completed', 850.00),
(50, 11, 22, 'Macher Jhol with Steamed Rice', '2023-12-30', '19:30:00', 'Completed', 700.00),
(51, 11, 23, 'Chicken Korma with Naan', '2023-12-31', '20:15:00', 'Completed', 650.00),
(52, 12, 24, 'Fish Amritsari with Rice', '2023-12-30', '19:00:00', 'Completed', 800.00),
(53, 12, 25, 'Goan Fish Curry', '2023-12-31', '20:00:00', 'Completed', 850.00),
(54, 13, 26, 'Chicken Biryani', '2023-12-30', '19:15:00', 'Completed', 750.00),
(55, 13, 27, 'Kerala Parotta with Beef Curry', '2023-12-31', '19:45:00', 'Completed', 900.00),
(56, 14, 28, 'Mutton Rogan Josh', '2023-12-30', '19:30:00', 'Completed', 850.00),
(57, 14, 29, 'Prawn Malai Curry with Naan', '2023-12-31', '20:30:00', 'Completed', 950.00),
(58, 15, 30, 'Chole with Bhature', '2023-12-30', '18:45:00', 'Completed', 650.00),
(59, 15, 13, 'Pav Bhaji', '2023-12-31', '19:15:00', 'Completed', 700.00),
(60, 16, 29, 'Thepla', '2023-12-30', '19:00:00', 'Completed', 800.00),
(61, 16, 12, 'Biryani', '2023-12-31', '20:00:00', 'Completed', 850.00),
(62, 17, 12, 'Chicken Biryani with Raita', '2023-12-30', '19:30:00', 'Completed', 700.00),
(63, 17, 12, 'Veg Pulao', '2023-12-31', '20:15:00', 'Completed', 950.00),
(64, 18, 8, 'Butter Chicken with Naan', '2023-12-30', '19:45:00', 'Completed', 800.00),
(65, 18, 7, 'Kachori with Sweets', '2023-12-31', '20:30:00', 'Completed', 750.00),
(66, 19, 5, 'Mughlai Biryani with Raita', '2023-12-30', '19:00:00', 'Completed', 850.00),
(67, 19, 12, 'Hyderabadi Dum Biryani', '2023-12-31', '20:00:00', 'Completed', 900.00),
(68, 20, 15, 'Chicken Tikka with Naan', '2023-12-30', '19:15:00', 'Completed', 700.00),
(69, 20, 27, 'Awadhi Biryani with Raita', '2023-12-31', '20:30:00', 'Completed', 950.00),
(70, 21, 6, 'Paneer Bhurji', '2023-12-30', '19:30:00', 'Completed', 800.00),
(71, 21, 8, 'Chicken Tikka Masala', '2023-12-31', '20:00:00', 'Completed', 850.00),
(72, 22, 13, 'Kerala Parotta with Fish Curry', '2023-12-30', '19:00:00', 'Completed', 700.00),
(73, 22, 13, 'Beef Fry', '2023-12-31', '20:15:00', 'Completed', 800.00),
(74, 23, 27, 'Goan Prawn Curry with Rice', '2023-12-30', '19:45:00', 'Completed', 850.00),
(75, 23, 23, 'Kerala Chicken Curry with Rice', '2023-12-31', '20:30:00', 'Completed', 900.00),
(76, 24, 24, 'Jodhpuri Gatta Sabji', '2023-12-30', '19:00:00', 'Completed', 750.00),
(77, 24, 24, 'Kachori with Jalebi', '2023-12-31', '20:15:00', 'Completed', 600.00),
(78, 26, 8, 'Aloo Tikki Chaat with Pani Puri', '2023-12-30', '19:30:00', 'Completed', 300.00),
(79, 26, 30, 'Mangalore Fish Curry with Rice', '2023-12-31', '20:00:00', 'Completed', 750.00),
(80, 27, 12, 'Mysore Biryani with Raita', '2023-12-30', '19:15:00', 'Completed', 850.00),
(81, 27, 28, 'Nagpuri Saoji Chicken with Roti', '2023-12-31', '20:30:00', 'Completed', 900.00),
(82, 28, 29, 'Bhopali Keema Pulao with Naan', '2023-12-30', '19:00:00', 'Completed', 950.00),
(83, 28, 30, 'Goan Prawn Curry with Roti', '2023-12-31', '20:00:00', 'Completed', 850.00),
(84, 29, 28, 'Nagpuri Saoji Chicken with Rice', '2023-12-30', '19:30:00', 'Completed', 900.00),
(85, 29, 8, 'Mysore Biryani', '2023-12-31', '20:15:00', 'Completed', 750.00),
(86, 30, 21, 'Tandoori Chicken with Roti', '2023-12-30', '19:00:00', 'Completed', 850.00),
(87, 30, 21, 'Hyderabadi Dum Biryani', '2023-12-31', '20:30:00', 'Completed', 950.00),
(88, 1, 22, 'Prawn Malai Curry with Naan', '2024-01-01', '19:45:00', 'Completed', 900.00),
(89, 2, 15, 'Malai Kofta with Butter Naan', '2024-01-01', '18:30:00', 'Completed', 700.00),
(90, 3, 27, 'Lemon Rice with Fish Curry', '2024-01-01', '19:15:00', 'Completed', 600.00),
(91, 4, 30, 'Fish Tikka', '2024-01-01', '20:00:00', 'Completed', 750.00),
(92, 5, 6, 'Paneer Butter Masala with Roti', '2024-01-01', '19:30:00', 'Completed', 800.00),
(93, 6, 26, 'Biryani Rice with Chicken Korma', '2024-01-01', '19:45:00', 'Completed', 700.00),
(94, 7, 6, 'Aloo Paratha', '2024-01-01', '20:15:00', 'Completed', 300.00);

COMMIT;
select * from orders;

-- ######################### SEPARATOR ###########################

BEGIN TRANSACTION;
-- This SQL query inserts data into the 'riders' table.
-- It adds a new rider with the specified 'rider_id', 'rider_name', and 'signup' date.

INSERT INTO riders (rider_id, rider_name, signup) VALUES
(1, 'Arjun Sharma', '2022-01-15'),
(2, 'Priya Singh', '2023-03-10'),
(3, 'Rajesh Gupta', '2021-11-22'),
(4, 'Anjali Mehta', '2022-06-18'),
(5, 'Vikram Verma', '2023-07-05'),
(6, 'Karan Patel', '2021-09-12'),
(7, 'Sonia Jain', '2023-08-20'),
(8, 'Manish Thakur', '2022-02-14'),
(9, 'Ritu Kapoor', '2021-12-01'),
(10, 'Rahul Yadav', '2023-04-25'),
(11, 'Aarti Desai', '2022-08-09'),
(12, 'Aman Mishra', '2023-05-17'),
(13, 'Shivani Joshi', '2022-10-31'),
(14, 'Ajay Bansal', '2023-06-11'),
(15, 'Deepika Sinha', '2021-07-23'),
(16, 'Vivek Tiwari', '2023-02-28'),
(17, 'Pooja Reddy', '2022-11-19'),
(18, 'Suresh Nair', '2021-10-08'),
(19, 'Nikita Shah', '2023-01-06'),
(21, 'Priya Mishra', '2023-11-12'),
(22, 'Ashish Kumar', '2023-09-18'),
(23, 'Meera Verma', '2022-05-21'),
(24, 'Ravi Sharma', '2023-08-30'),
(25, 'Ankit Gupta', '2021-04-10'),
(26, 'Naveen Shah', '2023-02-14'),
(27, 'Priyanka Joshi', '2022-03-25'),
(28, 'Manoj Desai', '2023-07-20'),
(29, 'Reema Reddy', '2021-06-15'),
(30, 'Arvind Patel', '2023-10-05'),
(20, 'Rohan Khanna', '2022-09-15');

COMMIT;
select * from riders;

-- ######################### SEPARATOR ###########################

BEGIN TRANSACTION;
-- This SQL query inserts data into the 'deliveries' table.
-- It adds a new delivery record with the specified delivery_id, order_id, delivery_status, delivery_time, and rider_id.


INSERT INTO deliveries (delivery_id, order_id, delivery_status, delivery_time, rider_id) VALUES
(1, 1, 'Completed', '20:00:00', 1),
(2, 2, 'Completed', '21:00:00', 2),
(3, 3, 'Completed', '20:30:00', 3),
(4, 4, 'Completed', '21:00:00', 4),
(5, 5, 'Completed', '19:00:00', 5),
(6, 6, 'Completed', '20:00:00', 6),
(7, 7, 'Completed', '19:30:00', 7),
(8, 8, 'Completed', '20:30:00', 8),
(9, 9, 'Completed', '21:00:00', 9),
(10, 10, 'Completed', '20:00:00', 10),
(11, 11, 'Completed', '20:30:00', 11),
(12, 12, 'Completed', '21:00:00', 12),
(13, 13, 'Completed', '20:00:00', 13),
(14, 14, 'Completed', '21:00:00', 14),
(15, 15, 'Completed', '20:00:00', 15),
(16, 16, 'Completed', '20:30:00', 16),
(17, 17, 'Completed', '18:30:00', 17),
(18, 18, 'Completed', '20:00:00', 18),
(19, 19, 'Completed', '19:30:00', 19),
(20, 20, 'Completed', '21:00:00', 20),
(21, 21, 'Completed', '20:30:00', 21),
(22, 22, 'Completed', '21:00:00', 22),
(23, 23, 'Completed', '20:00:00', 23),
(24, 24, 'Completed', '20:30:00', 24),
(25, 25, 'Completed', '20:00:00', 25),
(26, 26, 'Completed', '21:00:00', 26),
(27, 27, 'Completed', '20:00:00', 27),
(28, 28, 'Completed', '21:00:00', 28),
(29, 29, 'Completed', '20:30:00', 29);

COMMIT;

-- ######################### SEPARATOR ###########################

BEGIN TRANSACTION;
-- This SQL query inserts data into the 'deliveries' table, specifying the delivery_id, order_id, delivery_status, delivery_time, and rider_id for each new record.

INSERT INTO deliveries (delivery_id, order_id, delivery_status, delivery_time, rider_id) VALUES
(30, 30, 'Completed', '20:30:00', 1),
(31, 31, 'Completed', '20:30:00', 2),
(32, 33, 'Completed', '19:00:00', 3),
(33, 32, 'Completed', '19:30:00', 4),
(34, 34, 'Completed', '19:30:00', 5),
(35, 35, 'Completed', '21:00:00', 6),
(36, 36, 'Completed', '19:00:00', 7),
(38, 37, 'Completed', '20:00:00', 8),
(39, 38, 'Completed', '20:30:00', 9),
(37, 39, 'Completed', '20:20:00', 10),
(40, 40, 'Completed', '20:00:00', 11),
(41, 41, 'Completed', '21:00:00', 11),
(42, 43, 'Completed', '20:00:00', 12),
(43, 42, 'Completed', '19:30:00', 14),
(44, 45, 'Completed', '20:30:00', 15),
(45, 48, 'Completed', '20:50:00', 16),
(46, 47, 'Completed', '20:30:00', 17),
(47, 50, 'Completed', '20:00:00', 17),
(48, 46, 'Completed', '20:20:00', 19),
(49, 49, 'Completed', '20:30:00', 18),
(50, 51, 'Completed', '20:45:00', 19),
(51, 52, 'Completed', '19:40:00', 18),
(52, 53, 'Completed', '20:40:00', 23),
(53, 54, 'Completed', '19:30:00', 11),
(54, 55, 'Completed', '20:00:00', 19),
(55, 56, 'Completed', '20:00:00', 26),
(56, 57, 'Completed', '21:00:00', 27),
(57, 58, 'Completed', '19:00:00', 28),
(58, 59, 'Completed', '20:00:00', 24),
(59, 60, 'Completed', '19:30:00', 23),
(60, 61, 'Completed', '20:30:00', 25),
(61, 62, 'Completed', '20:00:00', 22),
(62, 63, 'Completed', '20:40:00', 27),
(63, 64, 'Completed', '20:10:00', 28),
(64, 65, 'Completed', '20:50:00', 29),
(65, 66, 'Completed', '19:30:00', 29),
(66, 67, 'Completed', '20:30:00', 20),
(67, 68, 'Completed', '19:30:00', 15),
(68, 69, 'Completed', '21:00:00', 12),
(69, 70, 'Completed', '20:00:00', 13),
(70, 71, 'Completed', '20:30:00', 13),
(71, 72, 'Completed', '19:40:00', 15),
(72, 73, 'Completed', '20:40:00', 10),
(73, 74, 'Completed', '20:10:00', 18),
(74, 75, 'Completed', '20:50:00', 17),
(75, 76, 'Completed', '19:50:00', 19),
(76, 77, 'Completed', '20:40:00', 20),
(77, 78, 'Completed', '20:00:00', 29),
(78, 79, 'Completed', '20:30:00', 3),
(79, 80, 'Completed', '20:00:00', 4),
(80, 81, 'Completed', '21:00:00', 5),
(81, 82, 'Completed', '21:00:00', 8),
(82, 83, 'Completed', '20:50:00', 12),
(83, 84, 'Completed', '20:50:00', 10),
(84, 85, 'Completed', '20:00:00', 17),
(85, 86, 'Completed', '19:50:00', 26),
(86, 87, 'Completed', '21:10:00', 27),
(87, 88, 'Completed', '20:00:00', 19),
(88, 89, 'Completed', '19:00:00', 20),
(89, 90, 'Completed', '19:40:00', 9),
(90, 91, 'Completed', '20:30:00', 22),
(91, 92, 'Completed', '20:00:00', 28),
(92, 93, 'Completed', '20:30:00', 23),
(93, 94, 'Completed', '20:50:00', 7);

COMMIT;