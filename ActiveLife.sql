
CREATE TABLE WeightCategory (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    min_weight DECIMAL(5, 2) NOT NULL ,
    max_weight DECIMAL(5, 2) NOT NULL
);

CREATE TABLE Exercise (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    WeightCategory_id INT,
    FOREIGN KEY (WeightCategory_id) REFERENCES WeightCategory(id)
);

CREATE TABLE Packages (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2)NOT NULL
);


CREATE TABLE Foods (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,               
    calories INT NOT NULL,
    WeightCategory_id INT,
    FOREIGN KEY (WeightCategory_id) REFERENCES WeightCategory(id)
);


CREATE TABLE Users (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,               
    age INT NOT NULL,                         
    body_weight DECIMAL(5, 2) NOT NULL,             
    gender VARCHAR(10) NOT NULL,                 
    register_date DATE NOT NULL,                    
    package_id INT,                        
    WeightCategory_id INT,                 
    FOREIGN KEY (package_id) REFERENCES Packages(id),         
    FOREIGN KEY (WeightCategory_id) REFERENCES WeightCategory(wid) 
);

CREATE TABLE Payment (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   	date DATE NOT NULL,
	payment DECIMAL(10, 2)NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

DROP TABLE payment;
DELETE FROM Users;


select *  from Users;

INSERT INTO packages (name, price) VALUES 
 ('Basic Plan', 3500.00),
 ('Standard Plan', 4500.00),
 ('Premium Plan', 5500.00),
 ('Family Plan', 6000.00),
 ('Business Plan', 7500.00),
 ('Elite Plan', 8000.00),
 ('Enterprise Plan', 8500.00),
 ('Gold Plan', 9000.00),
 ('Platinum Plan', 9500.00),
 ('Ultimate Plan', 10000.00);


INSERT INTO WeightCategory (name, min_weight, max_weight) VALUES
('Severely Underweight', 0.0, 40.0),
('Moderately Underweight', 40.01, 50.0),
('Underweight', 50.01, 55.0),
('Normal', 55.01, 70.0),
('Slightly Overweight', 70.01, 80.0),
('Overweight', 80.01, 90.0),
('Obese Class 1', 90.01, 100.0),
('Obese Class 2', 100.01, 110.0),
('Obese Class 3', 110.01, 120.0),
('Morbidly Obese', 120.01, 150.0);


INSERT INTO Users (name, age, body_weight, gender, register_date, package_id, WeightCategory_id) VALUES
('Kamal Perera', 22, 38.5, 'Male', '2024-01-15', 1, 1),
('Nadeeka Fernando', 25, 45.3, 'Female', '2024-02-20', 2, 2),
('Suresh Jayasinghe', 30, 52.7, 'Male', '2024-03-12', 3, 3),
('Anjali Ratnayake', 35, 65.2, 'Female', '2024-01-25', 4, 4),
('Chathura Wickramasinghe', 28, 72.8, 'Male', '2024-04-05', 5, 5),
('Dilani Gunawardena', 40, 88.4, 'Female', '2024-03-19', 6, 6),
('Tharindu Silva', 32, 95.6, 'Male', '2024-05-22', 7, 7),
('Lakmini Rajapaksha', 45, 105.3, 'Female', '2024-06-18', 8, 8),
('Nuwan Kumara', 50, 115.9, 'Male', '2024-07-12', 9, 9),
('Amali Weerasinghe', 38, 125.4, 'Female', '2024-08-20', 10, 10),
('Samantha Abeywickrama', 26, 39.9, 'Male', '2024-02-10', 1, 1),
('Dinusha Hettiarachchi', 29, 46.5, 'Female', '2024-03-25', 2, 2),
('Roshan de Silva', 34, 51.2, 'Male', '2024-04-14', 3, 3),
('Manjula Karunaratne', 31, 67.3, 'Female', '2024-05-08', 4, 4),
('Pasan Liyanage', 27, 78.0, 'Male', '2024-06-21', 5, 5),
('Sanduni Ekanayake', 39, 85.7, 'Female', '2024-07-15', 6, 6),
('Shanaka Madushanka', 33, 92.4, 'Male', '2024-08-30', 7, 7),
('Hiruni Dissanayake', 37, 102.1, 'Female', '2024-09-12', 8, 8),
('Janaka Rathnayaka', 41, 113.7, 'Male', '2024-10-05', 9, 9),
('Nimali Wijesinghe', 48, 128.5, 'Female', '2024-11-20', 10, 10),
('Aravinda Perera', 23, 36.5, 'Male', '2024-01-15', 1, 1),
('Kavindi Fernando', 27, 48.4, 'Female', '2024-02-20', 2, 2),
('Nishantha Jayasinghe', 31, 54.2, 'Male', '2024-03-12', 3, 3),
('Ravina Ratnayake', 34, 63.1, 'Female', '2024-01-25', 4, 4),
('Dilan Wickramasinghe', 29, 71.0, 'Male', '2024-04-05', 5, 5),
('Sithma Gunawardena', 37, 84.3, 'Female', '2024-03-19', 6, 6),
('Saman Silva', 40, 93.8, 'Male', '2024-05-22', 7, 7),
('Tharushi Rajapaksha', 42, 100.5, 'Female', '2024-06-18', 8, 8),
('Kusal Kumara', 25, 110.2, 'Male', '2024-07-12', 9, 9),
('Chamila Weerasinghe', 32, 120.0, 'Female', '2024-08-20', 10, 10),
('Sashika Abeywickrama', 22, 40.3, 'Male', '2024-02-10', 1, 1),
('Dinusha Hettiarachchi', 29, 46.5, 'Female', '2024-03-25', 2, 2),
('Roshan de Silva', 34, 51.2, 'Male', '2024-04-14', 3, 3),
('Manjula Karunaratne', 31, 67.3, 'Female', '2024-05-08', 4, 4),
('Pasan Liyanage', 27, 78.0, 'Male', '2024-06-21', 5, 5),
('Sanduni Ekanayake', 39, 85.7, 'Female', '2024-07-15', 6, 6),
('Shanaka Madushanka', 33, 92.4, 'Male', '2024-08-30', 7, 7),
('Hiruni Dissanayake', 37, 102.1, 'Female', '2024-09-12', 8, 8),
('Janaka Rathnayaka', 41, 113.7, 'Male', '2024-10-05', 9, 9),
('Nimali Wijesinghe', 48, 128.5, 'Female', '2024-11-20', 10, 10),
('Rajitha Gunawardena', 29, 45.3, 'Male', '2024-01-15', 1, 1),
('Nuwan Ranasinghe', 26, 52.1, 'Male', '2024-01-15', 2, 2),
('Thilini Perera', 31, 60.2, 'Female', '2024-02-01', 3, 3),
('Yashoda De Silva', 35, 70.0, 'Female', '2024-03-10', 4, 4),
('Harindra Wijesuriya', 28, 73.9, 'Male', '2024-04-15', 5, 5),
('Ruwani Karunaratne', 36, 85.4, 'Female', '2024-05-20', 6, 6),
('Chandana Fernando', 39, 94.7, 'Male', '2024-06-25', 7, 7),
('Yamini Weerasinghe', 43, 101.3, 'Female', '2024-07-30', 8, 8),
('Duminda Rajapaksha', 30, 109.8, 'Male', '2024-08-05', 9, 9),
('Vimukthi Wijesinghe', 38, 118.4, 'Male', '2024-09-10', 10, 10),
('Sashini Liyanage', 24, 42.7, 'Female', '2024-10-15', 1, 1),
('Ravindu Jayaratne', 27, 47.9, 'Male', '2024-11-20', 2, 2),
('Samanthika De Silva', 32, 55.8, 'Female', '2024-12-01', 3, 3),
('Hiruni Nissanka', 34, 66.4, 'Female', '2024-01-10', 4, 4),
('Suranga Rathnayake', 29, 74.5, 'Male', '2024-02-20', 5, 5),
('Lahiru Mahendra', 37, 87.2, 'Male', '2024-03-25', 6, 6),
('Shalika Perera', 33, 95.5, 'Female', '2024-04-30', 7, 7),
('Shirani Gunaratne', 41, 105.3, 'Female', '2024-05-10', 8, 8),
('Ravindra Samaraweera', 36, 113.2, 'Male', '2024-06-15', 9, 9),
('Sithara Weerasinghe', 46, 122.8, 'Female', '2024-07-20', 10, 10),
('Chirantha Abeysinghe', 29, 44.3, 'Male', '2024-08-25', 1, 1),
('Dinithi Rajapakse', 25, 51.1, 'Female', '2024-09-05', 2, 2),
('Kumara Herath', 33, 58.0, 'Male', '2024-10-10', 3, 3),
('Kavindi Karunaratne', 36, 67.6, 'Female', '2024-11-15', 4, 4),
('Prasad Madurasinghe', 29, 74.2, 'Male', '2024-12-05', 5, 5),
('Manori Liyanage', 34, 84.6, 'Female', '2024-01-20', 6, 6),
('Pradeep Wickramasinghe', 38, 94.4, 'Male', '2024-02-10', 7, 7),
('Rohana Silva', 40, 102.3, 'Male', '2024-03-30', 8, 8),
('Chamari Abeywickrama', 30, 111.0, 'Female', '2024-04-10', 9, 9),
('Gayantha Wijesinghe', 42, 120.4, 'Male', '2024-05-15', 10, 10),
('Anoma Samarasinghe', 24, 43.6, 'Female', '2024-06-01', 1, 1),
('Heshan Perera', 27, 50.7, 'Male', '2024-07-05', 2, 2),
('Nandani Fernando', 32, 57.5, 'Female', '2024-08-15', 3, 3),
('Madushani Weerasinghe', 36, 66.3, 'Female', '2024-09-25', 4, 4),
('Jayantha Rajapakse', 30, 73.7, 'Male', '2024-10-20', 5, 5),
('Dushmantha Karunaratne', 35, 83.4, 'Male', '2024-11-25', 6, 6),
('Dilushi Wijesuriya', 37, 92.8, 'Female', '2024-12-15', 7, 7),
('Kavitha Wickramasinghe', 40, 101.6, 'Female', '2024-01-05', 8, 8),
('Lahiru Priyadarshana', 39, 111.1, 'Male', '2024-02-25', 9, 9),
('Krishna Weerasinghe', 45, 121.0, 'Male', '2024-03-05', 10, 10),
('Ayesha Perera', 24, 42.1, 'Female', '2024-04-01', 1, 1),
('Vishal Fernando', 29, 48.6, 'Male', '2024-04-02', 2, 2),
('Nadeesha Weerasinghe', 31, 56.8, 'Female', '2024-04-03', 3, 3),
('Gayan Rajapaksha', 26, 63.5, 'Male', '2024-04-04', 4, 4),
('Sanjana Karunaratne', 32, 70.3, 'Female', '2024-04-05', 5, 5),
('Chaminda Jayasinghe', 34, 74.9, 'Male', '2024-04-06', 6, 6),
('Tharini De Silva', 27, 81.2, 'Female', '2024-04-07', 7, 7),
('Sujeewa Wijesinghe', 36, 87.0, 'Male', '2024-04-08', 8, 8),
('Shehani Wickramasinghe', 40, 93.8, 'Female', '2024-04-09', 9, 9),
('Kalpana Ratnayake', 43, 102.6, 'Female', '2024-04-10', 10, 10),
('Dilshan Perera', 33, 106.4, 'Male', '2024-04-11', 1, 1),
('Nirasha Fernando', 29, 110.3, 'Female', '2024-04-12', 2, 2),
('Sujith Karunaratne', 35, 115.7, 'Male', '2024-04-13', 3, 3),
('Asela Wijesinghe', 38, 121.9, 'Male', '2024-04-14', 4, 4),
('Tanuja Weerasinghe', 42, 127.4, 'Female', '2024-04-15', 5, 5),
('Lakshitha Rajapaksha', 28, 54.0, 'Male', '2024-04-16', 6, 6),
('Ishara Liyanage', 31, 61.2, 'Female', '2024-04-17', 7, 7),
('Heshan Hettiarachchi', 32, 67.8, 'Male', '2024-04-18', 8, 8),
('Srinika Gunaratne', 39, 74.4, 'Female', '2024-04-19', 9, 9),
('Suren Wickramasinghe', 41, 81.7, 'Male', '2024-04-20', 10, 10),
('Tharika Samaraweera', 27, 49.1, 'Female', '2024-04-21', 1, 1),
('Ashan Karunaratne', 34, 55.2, 'Male', '2024-04-22', 2, 2),
('Maheshi Liyanage', 28, 60.9, 'Female', '2024-04-23', 3, 3),
('Dinesh Wijesinghe', 37, 66.7, 'Male', '2024-04-24', 4, 4),
('Sajini Rajapaksha', 33, 73.1, 'Female', '2024-04-25', 5, 5),
('Rohitha Hettiarachchi', 29, 79.5, 'Male', '2024-04-26', 6, 6),
('Nalini Weerasinghe', 38, 85.3, 'Female', '2024-04-27', 7, 7),
('Aravinda Perera', 36, 92.0, 'Male', '2024-04-28', 8, 8),
('Shehani Fernando', 30, 98.2, 'Female', '2024-04-29', 9, 9),
('Gamini Rajapakse', 43, 105.6, 'Male', '2024-04-30', 10, 10),
('Charitha Abeysinghe', 34, 52.3, 'Female', '2024-05-01', 1, 1),
('Raveen Wijesuriya', 29, 59.5, 'Male', '2024-05-02', 2, 2),
('Madhuri Jayasuriya', 32, 66.2, 'Female', '2024-05-03', 3, 3),
('Ilantha Perera', 28, 72.3, 'Male', '2024-05-04', 4, 4),
('Rishitha Rajapaksha', 31, 79.0, 'Female', '2024-05-05', 5, 5),
('Sameera Liyanage', 30, 85.7, 'Male', '2024-05-06', 6, 6),
('Tharushi Fernando', 35, 92.9, 'Female', '2024-05-07', 7, 7),
('Roshan Ratnayake', 41, 99.6, 'Male', '2024-05-08', 8, 8),
('Prasadi Weerasinghe', 42, 106.8, 'Female', '2024-05-09', 9, 9),
('Sanjeeva Wijesinghe', 33, 113.0, 'Male', '2024-05-10', 10, 10),
('Asitha De Silva', 34, 120.4, 'Male', '2024-05-11', 1, 1),
('Dilki Karunaratne', 29, 53.7, 'Female', '2024-05-12', 2, 2),
('Pradeep Wickramasinghe', 30, 60.1, 'Male', '2024-05-13', 3, 3),
('Shalani Weerasinghe', 35, 66.4, 'Female', '2024-05-14', 4, 4),
('Janith Rajapaksha', 28, 73.8, 'Male', '2024-05-15', 5, 5),
('Santhusha Fernando', 33, 80.2, 'Male', '2024-05-16', 6, 6),
('Priya Karunaratne', 31, 87.0, 'Female', '2024-05-17', 7, 7),
('Arjuna Liyanage', 32, 93.5, 'Male', '2024-05-18', 8, 8),
('Dinesha Weerasinghe', 36, 100.1, 'Female', '2024-05-19', 9, 9),
('Kumara Wijesuriya', 39, 106.7, 'Male', '2024-05-20', 10, 10),
('Udaya Perera', 40, 113.2, 'Male', '2024-05-21', 1, 1),
('Manisha Wickramasinghe', 27, 47.2, 'Female', '2024-05-22', 2, 2),
('Tashika Fernando', 33, 54.3, 'Female', '2024-05-23', 3, 3),
('Sasanka Rajapaksha', 38, 62.0, 'Male', '2024-05-24', 4, 4),
('Shanika Wijesuriya', 42, 68.9, 'Female', '2024-05-25', 5, 5),
('Chinthaka Perera', 41, 75.6, 'Male', '2024-05-26', 6, 6),
('Sharika Karunaratne', 30, 82.1, 'Female', '2024-05-27', 7, 7),
('Roshan Weerasinghe', 35, 88.5, 'Male', '2024-05-28', 8, 8),
('Dileesha Rajapaksha', 29, 95.7, 'Female', '2024-05-29', 9, 9),
('Arvind Wickramasinghe', 37, 103.0, 'Male', '2024-05-30', 10, 10),
('Chamari Abeywickrama', 36, 109.6, 'Female', '2024-06-01', 1, 1),
('Shanika Karunaratne', 31, 115.2, 'Female', '2024-06-01' , 2, 9),
('Lalitha Perera', 51, 58.2, 'Female', '2024-01-15', 1, 4),
('Kumar Fernando', 52, 63.5, 'Male', '2024-01-15', 2, 4),
('Sumithra Rajapaksha', 53, 70.2, 'Female', '2024-01-15', 3, 4),
('Mahesh Perera', 54, 74.3, 'Male', '2024-01-15', 4, 5),
('Indrani Fernando', 55, 78.4, 'Female', '2024-01-15', 5, 5),
('Chaminda Wijesinghe', 56, 83.1, 'Male', '2024-01-15', 6, 5),
('Nimala Perera', 57, 86.5, 'Female', '2024-01-15', 7, 6),
('Janaka Silva', 58, 92.2, 'Male', '2024-01-15', 8, 6),
('Indika Wijesekara', 59, 96.1, 'Female', '2024-01-15', 9, 6),
('Chandima Gunasekara', 60, 100.3, 'Male', '2024-01-15', 10, 7),
('Nayana Rajapaksha', 51, 56.4, 'Female', '2024-01-15', 1, 4),
('Pradeep Perera', 52, 62.1, 'Male', '2024-01-15', 2, 4),
('Chandrika De Silva', 53, 67.8, 'Female', '2024-01-15', 3, 4),
('Vijay Kumar', 54, 73.4, 'Male', '2024-01-15', 4, 5),
('Kavitha Gunawardena', 55, 77.9, 'Female', '2024-01-15', 5, 5),
('Ruwan Rajapaksha', 56, 82.2, 'Male', '2024-01-15', 6, 5),
('Ashoka Weerasinghe', 57, 85.6, 'Male', '2024-01-15', 7, 6),
('Sajini Silva', 58, 91.8, 'Female', '2024-01-15', 8, 6),
('Nimal Rajapaksha', 59, 95.0, 'Male', '2024-01-15', 9, 6),
('Nirupa Liyanage', 60, 99.4, 'Female', '2024-01-15', 10, 7),
('Dinesh Jayasinghe', 51, 60.3, 'Male', '2024-01-15', 1, 4),
('Samanthika Perera', 52, 65.1, 'Female', '2024-01-15', 2, 4),
('Ravi Kumar', 53, 70.9, 'Male', '2024-01-15', 3, 4),
('Padmini Fernando', 54, 74.7, 'Female', '2024-01-15', 4, 5),
('Rohitha Wijesinghe', 55, 79.1, 'Male', '2024-01-15', 5, 5),
('Tharindu Karunaratne', 56, 84.0, 'Male', '2024-01-15', 6, 5),
('Madhavi Perera', 57, 88.3, 'Female', '2024-01-15', 7, 6),
('Chathurika Wijesinghe', 58, 92.6, 'Female', '2024-01-15', 8, 6),
('Sajith Weerasinghe', 59, 96.2, 'Male', '2024-01-15', 9, 6),
('Pooja Kumar', 60, 101.1, 'Female', '2024-01-15', 10, 7),
('Priyanka Silva', 51, 55.6, 'Female', '2024-01-15', 1, 4),
('Kusal Perera', 52, 61.3, 'Male', '2024-01-15', 2, 4),
('Jayantha Gunaratne', 53, 68.5, 'Male', '2024-01-15', 3, 4),
('Ruvini Weerasinghe', 54, 72.2, 'Female', '2024-01-15', 4, 5),
('Dhanushka Silva', 55, 76.9, 'Male', '2024-01-15', 5, 5),
('Ajantha Rajapaksha', 56, 81.5, 'Female', '2024-01-15', 6, 5),
('Shanika Liyanage', 57, 85.7, 'Female', '2024-01-15', 7, 6),
('Roshan Gunawardena', 58, 90.3, 'Male', '2024-01-15', 8, 6),
('Gihan Kumar', 59, 93.9, 'Male', '2024-01-15', 9, 6),
('Malini Karunaratne', 60, 98.4, 'Female', '2024-01-15', 10, 7),
('Nadeesha Rajapaksha', 51, 59.5, 'Female', '2024-01-15', 1, 4),
('Kamalanatha Kumar', 52, 64.4, 'Male', '2024-01-15', 2, 4),
('Anusha Silva', 53, 69.7, 'Female', '2024-01-15', 3, 4),
('Athuraliya Rajapaksha', 54, 73.9, 'Male', '2024-01-15', 4, 5),
('Saman Weerasinghe', 55, 78.2, 'Male', '2024-01-15', 5, 5),
('Rishika Perera', 56, 82.5, 'Female', '2024-01-15', 6, 5),
('Shashika Silva', 57, 86.1, 'Female', '2024-01-15', 7, 6),
('Gehan Gunathilake', 58, 91.2, 'Male', '2024-01-15', 8, 6),
('Hemantha Rajapaksha', 59, 94.8, 'Male', '2024-01-15', 9, 6),
('Jeevani Wijesinghe', 60, 99.7, 'Female', '2024-01-15', 10, 7),
('Ruwan Wijesuriya', 45, 45.0, 'Male', '2024-01-02', 1, 1),
('Sunil Karunaratne', 46, 47.5, 'Male', '2024-02-18', 2, 2),
('Nimasha Silva', 47, 53.4, 'Female', '2024-03-12', 3, 3),
('Chandrika Fernando', 48, 58.7, 'Female', '2024-04-24', 4, 4),
('Samitha Rajapaksha', 49, 72.5, 'Male', '2024-05-07', 5, 5),
('Shyamala Wijesinghe', 50, 68.0, 'Female', '2024-06-15', 6, 4),
('Jagath Perera', 51, 81.2, 'Male', '2024-07-20', 7, 6),
('Kalpana De Silva', 52, 84.5, 'Female', '2024-08-28', 8, 6),
('Rani Wickramasinghe', 53, 90.1, 'Female', '2024-09-10', 9, 7),
('Kumar Karunaratne', 54, 96.3, 'Male', '2024-10-01', 10, 7),
('Ishara Rajapaksha', 55, 104.7, 'Female', '2024-11-16', 1, 8),
('Vishal Perera', 56, 112.4, 'Male', '2024-12-07', 2, 9),
('Indira Fernando', 57, 118.2, 'Female', '2024-01-22', 3, 9),
('Suresh Jayasinghe', 58, 123.5, 'Male', '2024-02-10', 4, 10),
('Vidushi De Silva', 59, 128.9, 'Female', '2024-03-15', 5, 10),
('Pradeep Karunaratne', 60, 132.6, 'Male', '2024-04-08', 6, 10),
('Shashi Wickramasinghe', 61, 70.2, 'Female', '2024-05-18', 7, 5),
('Buddhi Perera', 62, 55.9, 'Male', '2024-06-12', 8, 4),
('Madhavi Rajapaksha', 63, 65.1, 'Female', '2024-07-01', 9, 4),
('Chandima Karunaratne', 64, 73.2, 'Female', '2024-08-20', 10, 5),
('Ravindra Wijesuriya', 65, 78.6, 'Male', '2024-09-05', 1, 5),
('Shashini Perera', 45, 50.5, 'Female', '2024-09-15', 2, 3),
('Ruwan Rajapaksha', 46, 55.0, 'Male', '2024-10-10', 3, 3),
('Tharanga Wijesinghe', 47, 61.3, 'Female', '2024-11-01', 4, 4),
('Suresh Karunaratne', 48, 63.5, 'Male', '2024-12-02', 5, 4),
('Dilani Perera', 49, 71.8, 'Female', '2024-01-15', 6, 5),
('Sajith Wickramasinghe', 50, 77.6, 'Male', '2024-02-25', 7, 5),
('Preethi Rajapaksha', 51, 81.0, 'Female', '2024-03-12', 8, 6),
('Vajira De Silva', 52, 88.2, 'Male', '2024-04-05', 9, 6),
('Chaminda Fernando', 53, 92.6, 'Male', '2024-05-18', 10, 7),
('Shobitha Wijesuriya', 54, 95.4, 'Female', '2024-06-13', 1, 7),
('Indika Perera', 55, 101.1, 'Male', '2024-07-01', 2, 8),
('Kumara Wickramasinghe', 56, 108.0, 'Male', '2024-08-10', 3, 8),
('Rajini Karunaratne', 57, 112.2, 'Female', '2024-09-04', 4, 9),
('Pradeep Silva', 58, 115.5, 'Male', '2024-10-11', 5, 9),
('Nimali Rajapaksha', 59, 120.7, 'Female', '2024-11-03', 6, 10),
('Jagath De Silva', 60, 125.4, 'Male', '2024-12-22', 7, 10),
('Chandika Perera', 61, 53.0, 'Female', '2024-01-02', 8, 3),
('Tharindu Rajapaksha', 62, 57.5, 'Male', '2024-02-15', 9, 3),
('Sunil Jayasinghe', 63, 63.8, 'Male', '2024-03-07', 10, 4),
('Ayesha Silva', 64, 68.3, 'Female', '2024-04-12', 1, 4),
('Dinesh Perera', 65, 70.0, 'Male', '2024-05-21', 2, 5),
('Ravindran Karunaratne', 45, 82.1, 'Male', '2024-06-10', 3, 6),
('Ravindra De Silva', 46, 87.0, 'Male', '2024-07-05', 4, 6),
('Chamari Wijesinghe', 47, 92.5, 'Female', '2024-08-14', 5, 7),
('Madhuri Silva', 48, 94.3, 'Female', '2024-09-19', 6, 7),
('Niroshan Wickramasinghe', 49, 101.4, 'Male', '2024-10-22', 7, 8),
('Kusum Rajapaksha', 50, 106.5, 'Female', '2024-11-28', 8, 8),
('Sanjaya Perera', 51, 112.0, 'Male', '2024-12-09', 9, 9),
('Shashika Karunaratne', 52, 118.2, 'Female', '2024-01-18', 10, 9),
('Ajith Fernando', 53, 124.7, 'Male', '2024-02-27', 1, 10),
('Thushara Rajapaksha', 54, 130.0, 'Male', '2024-03-20', 2, 10),
('Samanthi Wijesinghe', 55, 60.4, 'Female', '2024-04-30', 3, 4),
('Lahiru Perera', 56, 65.2, 'Male', '2024-05-12', 4, 4),
('Anjani Karunaratne', 57, 69.6, 'Female', '2024-06-01', 5, 5),
('Chandini Silva', 58, 72.0, 'Female', '2024-07-15', 6, 5),
('Wimal Wickramasinghe', 59, 76.3, 'Male', '2024-08-19', 7, 6),
('Ruchi Rajapaksha', 60, 80.2, 'Female', '2024-09-23', 8, 6),
('Samitha De Silva', 61, 85.5, 'Female', '2024-10-13', 9, 7),
('Madhavi Fernando', 62, 90.0, 'Female', '2024-11-03', 10, 7),
('Sujeewa Perera', 63, 95.4, 'Male', '2024-12-01', 1, 8),
('Roshan Karunaratne', 64, 101.7, 'Male', '2024-01-11', 2, 8),
('Lalitha Silva', 65, 107.5, 'Female', '2024-02-25', 3, 9),
('Suresh Wijesuriya', 45, 50.3, 'Male', '2024-01-01', 1, 3),
('Sumathi Perera', 46, 59.2, 'Female', '2024-02-17', 2, 4),
('Ravi Karunaratne', 47, 60.4, 'Male', '2024-03-03', 3, 4),
('Nadeesha Silva', 48, 67.1, 'Female', '2024-04-25', 4, 5),
('Harshini Wickramasinghe', 49, 71.8, 'Female', '2024-05-16', 5, 5),
('Chandana Perera', 50, 76.3, 'Male', '2024-06-22', 6, 6),
('Yasitha Rajapaksha', 51, 82.5, 'Male', '2024-07-14', 7, 6),
('Vishaka De Silva', 52, 85.2, 'Female', '2024-08-08', 8, 6),
('Ruwani Rajapaksha', 53, 91.7, 'Female', '2024-09-12', 9, 7),
('Kumari Fernando', 54, 94.3, 'Female', '2024-10-03', 10, 7),
('Malith Wijesuriya', 55, 100.6, 'Male', '2024-11-19', 1, 8),
('Kasun Karunaratne', 56, 105.7, 'Male', '2024-12-05', 2, 8),
('Sarala Perera', 57, 111.4, 'Female', '2024-01-17', 3, 9),
('Samantha Rajapaksha', 58, 115.8, 'Male', '2024-02-22', 4, 9),
('Dilani Wickramasinghe', 59, 118.3, 'Female', '2024-03-06', 5, 9),
('Ajith Rajapaksha', 60, 122.5, 'Male', '2024-04-16', 6, 10),
('Radhika Perera', 61, 127.4, 'Female', '2024-05-02', 7, 10),
('Sudhir Karunaratne', 62, 130.6, 'Male', '2024-06-04', 8, 10),
('Nandini De Silva', 63, 64.3, 'Female', '2024-07-21', 9, 4),
('Ruwan Rajapaksha', 64, 70.5, 'Male', '2024-08-01', 10, 5),
('Tharini Silva', 65, 72.7, 'Female', '2024-09-14', 1, 5),
('Kalum Perera', 45, 47.3, 'Male', '2024-10-30', 2, 2),
('Madhavi Karunaratne', 46, 51.0, 'Female', '2024-11-10', 3, 3),
('Sajith Wijesuriya', 47, 55.4, 'Male', '2024-12-06', 4, 3),
('Lahiru Karunaratne', 48, 60.2, 'Male', '2024-01-12', 5, 4),
('Nihara Perera', 49, 64.8, 'Female', '2024-02-18', 6, 4),
('Ravindra Silva', 50, 68.1, 'Male', '2024-03-25', 7, 5),
('Shashi Wickramasinghe', 51, 74.9, 'Female', '2024-04-12', 8, 5),
('Kalpana De Silva', 52, 78.3, 'Female', '2024-05-16', 9, 5),
('Buddhi Rajapaksha', 53, 82.2, 'Male', '2024-06-28', 10, 6),
('Tharindu Perera', 54, 88.6, 'Male', '2024-07-11', 1, 6),
('Pavithra Rajapaksha', 55, 93.5, 'Female', '2024-08-01', 2, 7),
('Chamari De Silva', 56, 98.4, 'Female', '2024-09-03', 3, 7),
('Rashika Perera', 57, 104.1, 'Female', '2024-10-18', 4, 8),
('Heshan Karunaratne', 58, 108.7, 'Male', '2024-11-05', 5, 8),
('Jeevan Rajapaksha', 59, 112.9, 'Male', '2024-12-02', 6, 9),
('Samanthi Fernando', 60, 118.4, 'Female', '2024-01-24', 7, 9),
('Ruwani Wickramasinghe', 61, 124.5, 'Female', '2024-02-07', 8, 10),
('Buddhi Perera', 62, 128.9, 'Male', '2024-03-20', 9, 10),
('Kumari Rajapaksha', 63, 132.6, 'Female', '2024-04-13', 10, 10),
('Ravindra De Silva', 64, 46.9, 'Male', '2024-05-28', 1, 2),
('Sujitha Perera', 65, 50.2, 'Female', '2024-06-09', 2, 3),
('Madhuranga Karunaratne', 45, 54.7, 'Male', '2024-07-18', 3, 3),
('Jayanthi Wickramasinghe', 46, 57.3, 'Female', '2024-08-21', 4, 4),
('Hiran Perera', 47, 63.6, 'Male', '2024-09-01', 5, 4),
('Mahesh Rajapaksha', 48, 68.9, 'Male', '2024-10-10', 6, 5),
('Sangeetha Silva', 49, 72.4, 'Female', '2024-11-02', 7, 5),
('Vishaka Karunaratne', 50, 79.3, 'Female', '2024-12-14', 8, 6),
('Nipuni Perera', 51, 84.5, 'Female', '2024-01-29', 9, 6),
('Sajini Rajapaksha', 52, 89.0, 'Female', '2024-02-10', 10, 7),
('Ishara Perera', 53, 94.8, 'Female', '2024-03-22', 1, 7),
('Lahiru Silva', 54, 99.5, 'Male', '2024-04-17', 2, 8),
('Madhura Rajapaksha', 55, 104.2, 'Female', '2024-05-11', 3, 8),
('Yohani Perera', 56, 108.9, 'Female', '2024-06-02', 4, 9),
('Jagath Rajapaksha', 57, 113.3, 'Male', '2024-07-19', 5, 9),
('Shubani Karunaratne', 58, 118.0, 'Female', '2024-08-15', 6, 9),
('Ajith Fernando', 59, 121.5, 'Male', '2024-09-04', 7, 10),
('Roshan Perera', 60, 127.4, 'Male', '2024-10-29', 8, 10),
('Nirosha Karunaratne', 61, 133.6, 'Female', '2024-11-19', 9, 10),
('Sujitha Perera', 62, 52.0, 'Female', '2024-12-06', 10, 3),
('Tharindu Rajapaksha', 63, 55.2, 'Male', '2024-01-18', 1, 3),
('Gihan Silva', 64, 60.5, 'Male', '2024-02-11', 2, 4),
('Preethi Perera', 65, 64.8, 'Female', '2024-03-02', 3, 4),
('Kusal Perera', 45, 42.3, 'Male', '2024-01-01', 1, 2),
('Nimali Fernando', 46, 53.7, 'Female', '2024-01-15', 2, 3),
('Rukshan Silva', 47, 68.2, 'Male', '2024-02-05', 3, 4),
('Ishani De Silva', 48, 72.9, 'Female', '2024-02-18', 4, 5),
('Amal Karunaratne', 49, 81.3, 'Male', '2024-03-10', 5, 6),
('Dilumi Perera', 50, 89.5, 'Female', '2024-03-25', 6, 7),
('Sachintha Rajapaksha', 51, 98.2, 'Male', '2024-04-05', 7, 8),
('Sandeepa Wickramasinghe', 52, 104.6, 'Female', '2024-04-19', 8, 8),
('Nadeesha Perera', 53, 112.4, 'Female', '2024-05-05', 9, 9),
('Ramesh Karunaratne', 54, 126.7, 'Male', '2024-05-20', 10, 10),
('Thilina Rajapaksha', 55, 58.1, 'Male', '2024-06-01', 1, 3),
('Shehani Silva', 56, 66.3, 'Female', '2024-06-15', 2, 4),
('Mihira De Silva', 57, 74.5, 'Male', '2024-07-02', 3, 5),
('Chathuni Fernando', 58, 82.0, 'Female', '2024-07-20', 4, 6),
('Dilan Wickramasinghe', 59, 93.4, 'Male', '2024-08-05', 5, 7),
('Kavindi Perera', 60, 102.3, 'Female', '2024-08-18', 6, 8),
('Sandun Rajapaksha', 61, 115.2, 'Male', '2024-09-05', 7, 9),
('Anushka Silva', 62, 129.4, 'Female', '2024-09-18', 8, 10),
('Charitha De Silva', 63, 52.5, 'Male', '2024-10-02', 9, 3),
('Bhanuka Fernando', 64, 60.9, 'Male', '2024-10-15', 10, 4),
('Dilini Karunaratne', 65, 69.2, 'Female', '2024-11-05', 1, 4),
('Lasitha Wickramasinghe', 45, 75.8, 'Male', '2024-11-20', 2, 5),
('Himali Perera', 46, 85.4, 'Female', '2024-12-01', 3, 6),
('Dineth Rajapaksha', 47, 91.8, 'Male', '2024-12-12', 4, 7),
('Chamara Silva', 48, 105.9, 'Male', '2024-12-25', 5, 8),
('Amaya De Silva', 49, 118.5, 'Female', '2024-12-15', 6, 9),
('Tharindu Fernando', 50, 134.2, 'Male', '2024-12-14', 7, 10),
('Nishan Karunaratne', 51, 42.9, 'Male', '2024-12-13', 8, 2),
('Hiruni Wickramasinghe', 52, 48.1, 'Female', '2024-12-12', 9, 3),
('Kasun De Silva', 53, 54.6, 'Male', '2024-12-11', 10, 3),
('Piyumi Perera', 54, 63.8, 'Female', '2024-12-10', 1, 4),
('Sachin Rajapaksha', 55, 71.5, 'Male', '2024-12-09', 2, 5),
('Nethmi Silva', 56, 78.9, 'Female', '2024-12-08', 3, 5),
('Samith Wickramasinghe', 57, 87.6, 'Male', '2024-12-07', 4, 6),
('Praveen De Silva', 58, 96.4, 'Male', '2024-12-06', 5, 7),
('Mahesh Fernando', 59, 109.7, 'Male', '2024-12-05', 6, 8),
('Pasan Karunaratne', 60, 120.4, 'Male', '2024-12-04', 7, 9),
('Sajani Perera', 61, 136.0, 'Female', '2024-12-03', 8, 10),
('Lihini Wickramasinghe', 62, 47.5, 'Female', '2024-12-02', 9, 3),
('Kavindu De Silva', 63, 55.9, 'Male', '2024-12-01', 10, 3),
('Thilini Karunaratne', 64, 62.8, 'Female', '2024-11-30', 1, 4),
('Suren Fernando', 65, 69.4, 'Male', '2024-11-29', 2, 4),
('Tharushi Silva', 45, 76.3, 'Female', '2024-11-28', 3, 5),
('Dulani Wickramasinghe', 46, 83.9, 'Female', '2024-11-27', 4, 6),
('Amila Perera', 47, 91.3, 'Male', '2024-11-26', 5, 7),
('Kushan De Silva', 48, 105.5, 'Male', '2024-11-25', 6, 8),
('Heshani Karunaratne', 49, 119.2, 'Female', '2024-11-24', 7, 9),
('Nuwan Rajapaksha', 50, 134.1, 'Male', '2024-11-23', 8, 10),
('Shalani Fernando', 51, 43.0, 'Female', '2024-11-22', 9, 2),
('Dinuka Wickramasinghe', 52, 49.5, 'Male', '2024-11-21', 10, 3),
('Shanika Silva', 53, 57.3, 'Female', '2024-11-20', 1, 3),
('Pathum Perera', 54, 64.7, 'Male', '2024-11-19', 2, 4),
('Chamith Karunaratne', 55, 71.9, 'Male', '2024-11-18', 3, 5),
('Dileepa De Silva', 56, 79.3, 'Male', '2024-11-17', 4, 5),
('Nimesha Rajapaksha', 57, 85.9, 'Female', '2024-11-16', 5, 6),
('Shanil Fernando', 58, 98.6, 'Male', '2024-11-15', 6, 7),
('Piyumi Wickramasinghe', 59, 110.8, 'Female', '2024-11-14', 7, 8),
('Chathura Silva', 60, 123.5, 'Male', '2024-11-13', 8, 9),
('Dulshan Perera', 61, 138.4, 'Male', '2024-11-12', 9, 10),
('Janith Rajapaksha', 62, 47.2, 'Male', '2024-11-11', 10, 2),
('Kaushalya De Silva', 63, 54.3, 'Female', '2024-11-10', 1, 3),
('Lahiru Karunaratne', 64, 60.8, 'Male', '2024-11-09', 2, 4),
('Dinara Wickramasinghe', 65, 66.7, 'Female', '2024-11-08', 3, 4),
('Manoj Karunarathna', 25, 45.2, 'Male', '2024-11-07', 1, 2),
('Samanthi Perera', 26, 52.8, 'Female', '2024-11-06', 2, 3),
('Ravindu Fernando', 27, 68.5, 'Male', '2024-11-05', 3, 4),
('Chandana Silva', 28, 72.3, 'Male', '2024-11-04', 4, 5),
('Ruvini Wickramasinghe', 29, 80.2, 'Female', '2024-11-03', 5, 6),
('Ramesh Perera', 30, 89.9, 'Male', '2024-11-02', 6, 7),
('Hashini De Silva', 31, 96.8, 'Female', '2024-11-01', 7, 8),
('Suren Karunarathna', 52, 110.3, 'Male', '2024-10-31', 8, 9),
('Amali Rajapaksha', 53, 125.7, 'Female', '2024-10-30', 9, 10),
('Iresha Fernando', 54, 58.0, 'Female', '2024-10-29', 10, 3),
('Dinuka Perera', 55, 65.4, 'Male', '2024-10-28', 1, 4),
('Sasindu Silva', 56, 73.2, 'Male', '2024-10-27', 2, 5),
('Chathuni Wickramasinghe', 57, 79.5, 'Female', '2024-10-26', 3, 5),
('Janaka De Silva', 58, 90.4, 'Male', '2024-10-25', 4, 7),
('Pathum Karunarathna', 59, 103.6, 'Male', '2024-10-24', 5, 8),
('Anjali Perera', 60, 118.9, 'Female', '2024-10-23', 6, 9),
('Charith Fernando', 61, 133.2, 'Male', '2024-10-22', 7, 10),
('Malsha Silva', 62, 41.7, 'Female', '2024-10-21', 8, 2),
('Nisal Rajapaksha', 63, 50.1, 'Male', '2024-10-20', 9, 3),
('Ravini Wickramasinghe', 64, 62.6, 'Female', '2024-10-19', 10, 4),
('Dilshan Perera', 65, 70.9, 'Male', '2024-10-18', 1, 4),
('Kasuni Silva', 45, 76.4, 'Female', '2024-10-17', 2, 5),
('Kushan Fernando', 46, 85.7, 'Male', '2024-10-16', 3, 6),
('Nimasha De Silva', 47, 92.8, 'Female', '2024-10-15', 4, 7),
('Ruwan Wickramasinghe', 48, 108.2, 'Male', '2024-10-14', 5, 8),
('Dulani Rajapaksha', 49, 121.5, 'Female', '2024-10-13', 6, 9),
('Praveen Karunarathna', 50, 135.0, 'Male', '2024-10-12', 7, 10),
('Shehani Perera', 51, 44.2, 'Female', '2024-10-11', 8, 2),
('Amal De Silva', 52, 49.3, 'Male', '2024-10-10', 9, 3),
('Heshani Fernando', 53, 56.1, 'Female', '2024-10-09', 10, 3),
('Lasith Wickramasinghe', 54, 61.7, 'Male', '2024-10-08', 1, 4),
('Nadeesha Perera', 55, 68.5, 'Female', '2024-10-07', 2, 4),
('Lihini Silva', 56, 74.9, 'Female', '2024-10-06', 3, 5),
('Tharindu Rajapaksha', 57, 83.6, 'Male', '2024-10-05', 4, 6),
('Rasika Fernando', 58, 94.3, 'Male', '2024-10-04', 5, 7),
('Damith Perera', 59, 104.7, 'Male', '2024-10-03', 6, 8),
('Anushka Karunarathna', 60, 120.9, 'Male', '2024-10-02', 7, 9),
('Piumi Wickramasinghe', 61, 128.4, 'Female', '2024-10-01', 8, 10),
('Kasun De Silva', 62, 43.1, 'Male', '2024-09-30', 9, 2),
('Hiruni Rajapaksha', 63, 52.0, 'Female', '2024-09-29', 10, 3),
('Nuwan Perera', 64, 60.2, 'Male', '2024-09-28', 1, 4),
('Madushi Fernando', 65, 67.3, 'Female', '2024-09-27', 2, 4),
('Shanika Karunarathna', 45, 74.4, 'Female', '2024-09-26', 3, 5),
('Bimal Silva', 46, 83.7, 'Male', '2024-09-25', 4, 6),
('Heshan De Silva', 47, 92.0, 'Male', '2024-09-24', 5, 7),
('Amaya Wickramasinghe', 48, 109.5, 'Female', '2024-09-23', 6, 8),
('Thilini Rajapaksha', 49, 126.8, 'Female', '2024-09-22', 7, 10),
('Janith Perera', 50, 43.5, 'Male', '2024-09-21', 8, 2),
('Pathum Silva', 51, 50.9, 'Male', '2024-09-20', 9, 3);




INSERT INTO Foods (name, calories, WeightCategory_id) VALUES
('Grilled Chicken Salad', 350, 1),
('Vegetable Stir Fry', 280, 2),
('Chicken and Rice', 400, 3),
('Grilled Salmon with Vegetables', 450, 4),
('Tofu Stir Fry', 300, 5),
('Beef Stew', 500, 6),
('Grilled Turkey Sandwich', 350, 7),
('Roast Pork with Mashed Potatoes', 600, 8),
('Eggplant Parmesan', 450, 9),
('Cheese Omelette', 350, 10),
('Chicken Caesar Salad', 400, 1),
('Sweet Potato and Black Bean Tacos', 350, 2),
('Quinoa and Veggie Bowl', 380, 3),
('Chicken Fajitas', 500, 4),
('Vegetable Soup', 200, 5),
('Baked Salmon with Quinoa', 500, 6),
('Pasta Primavera', 450, 7),
('Lamb Curry', 700, 8),
('Grilled Shrimp Salad', 350, 9),
('Beef Stir Fry', 550, 10),
('Chicken and Broccoli', 300, 1),
('Vegetable and Chickpea Stew', 250, 2),
('Egg Salad Sandwich', 400, 3),
('Grilled Fish Tacos', 350, 4),
('Cauliflower Rice and Veggies', 250, 5),
('Turkey Burger with Sweet Potato Fries', 600, 6),
('Tofu Scramble with Spinach', 280, 7),
('Steak and Potatoes', 750, 8),
('Avocado Toast with Poached Egg', 450, 9),
('Spaghetti Bolognese', 650, 10),
('Mushroom Risotto', 400, 1),
('Zucchini Noodles with Pesto', 350, 2),
('Pulled Pork Sandwich', 500, 3),
('Grilled Chicken Wrap', 450, 4),
('Beef Burritos', 600, 5),
('Vegetable Curry', 400, 6),
('Lentil Soup', 300, 7),
('Chicken Parmesan', 700, 8),
('Quinoa and Avocado Salad', 400, 9),
('Fish and Chips', 650, 10),
('Grilled Veggie and Hummus Wrap', 350, 1),
('Beef and Bean Chili', 500, 2),
('Chicken Noodle Soup', 350, 3),
('Pork Schnitzel with Sauerkraut', 600, 4),
('Vegetable Quesadilla', 400, 5),
('Steak Salad', 700, 6),
('Crispy Tofu Bites', 350, 7),
('Chicken Stir Fry with Rice', 600, 8),
('Vegetable Samosas', 350, 9),
('Lasagna', 750, 10),
('Falafel Wrap', 400, 1),
('Chicken Tenders with Fries', 550, 2),
('Shrimp Scampi', 500, 3),
('Lamb Kebab', 600, 4),
('Beef Tacos', 500, 5),
('Vegetable Lo Mein', 400, 6),
('Fried Chicken with Collard Greens', 750, 7),
('Salmon Sushi', 300, 8),
('Stuffed Bell Peppers', 450, 9),
('Pasta Alfredo', 800, 10),
('Greek Salad with Chicken', 350, 1),
('Pork Belly with Rice', 700, 2),
('Grilled Tuna with Asparagus', 400, 3),
('Meatball Sub', 600, 4),
('Vegetable and Tofu Stir Fry', 350, 5),
('Baked Chicken Wings', 550, 6),
('Lamb Chop with Couscous', 750, 7),
('Shrimp Tacos', 400, 8),
('Spinach and Cheese Stuffed Chicken', 500, 9),
('Pulled Chicken Nachos', 650, 10),
('Eggplant Stir Fry', 250, 1),
('Pork Roast with Roasted Veggies', 700, 2),
('Beef Burrito Bowl', 600, 3),
('Chicken and Vegetable Skewers', 450, 4),
('Chickpea Salad with Feta', 350, 5),
('Grilled Chicken with Roasted Potatoes', 600, 6),
('Beef and Vegetable Kabobs', 550, 7),
('Baked Salmon with Sweet Potato', 600, 8),
('Avocado and Bean Tacos', 400, 9),
('Steak with Roasted Carrots', 750, 10),
('Vegetarian Chili', 400, 1),
('Chicken Shawarma', 500, 2),
('BBQ Pork Ribs', 700, 3),
('Eggplant and Chickpea Curry', 400, 4),
('Roast Beef Sandwich', 600, 5),
('Vegetable and Bean Burrito', 500, 6),
('Grilled Steak with Spinach', 650, 7),
('Fish Tacos with Mango Salsa', 450, 8),
('Roast Duck with Sweet Potato Mash', 800, 9),
('Shrimp and Vegetable Stir Fry', 500, 10),
('Black Bean Burgers', 400, 1),
('Lentil Soup with Vegetables', 280, 2),
('Chicken Pot Pie', 500, 3),
('Salmon with Quinoa and Roasted Brussels Sprouts', 480, 4),
('Tofu Scramble with Tomatoes and Avocado', 320, 5),
('Beef Brisket with Mashed Potatoes and Green Beans', 700, 6),
('Turkey Club Sandwich', 450, 7),
('Pork Carnitas Tacos', 550, 8),
('Lentil Shepherd''s Pie', 400, 9),
('Frittata with Vegetables and Cheese', 400, 10),
('Chicken Caesar Wrap', 420, 1),
('Black Bean and Corn Salad', 200, 2),
('Beef Lasagna', 600, 3),
('Shrimp Scampi with Zucchini Noodles', 450, 4),
('Tofu and Vegetable Curry', 380, 5),
('Pot Roast with Vegetables', 650, 6),
('Tuna Salad Sandwich on Whole Wheat Bread', 400, 7),
('Chicken Fajita Bowl with Brown Rice and Beans', 500, 8),
('Vegetable Pad Thai', 400, 9),
('Mushroom and Spinach Frittata', 350, 10),
('Greek Yogurt Parfait with Granola and Berries', 300, 1),
('Minestrone Soup', 350, 2),
('Shepherds Pie', 600, 3),
('Baked Cod with Lemon and Herbs', 420, 4),
('Tempeh Stir Fry with Vegetables', 350, 5),
('Short Ribs with Roasted Vegetables', 700, 6),
('Club Sandwich', 550, 7),
('Carnitas Bowl with Guacamole and Pico de Gallo', 600, 8),
('Lentil and Vegetable Stew', 300, 9),
('Chicken and Vegetable Curry', 450, 10),
('Grilled Cheese Sandwich', 400, 1),
('Tomato Soup', 200, 2),
('Spaghetti Carbonara', 650, 3),
('Grilled Salmon with Asparagus', 450, 4),
('Tofu Stir-Fry with Broccoli', 300, 5),
('Beef Stew with Carrots and Potatoes', 550, 6),
('Turkey Sandwich on Rye Bread', 350, 7),
('Pork Chops with Applesauce', 500, 8),
('Eggplant Parmesan', 450, 9),
('Omelet with Cheese and Vegetables', 350, 10),
('Chicken Salad Sandwich', 400, 1),
('Corn Chowder', 300, 2),
('Chicken Alfredo', 600, 3),
('Grilled Shrimp Skewers', 400, 4),
('Vegetable Stir-Fry with Rice', 350, 5),
('Beef Bourguignon', 700, 6),
('Turkey Chili', 400, 7),
('Pork Loin Roast', 550, 8),
('Lasagna', 650, 9),
('Scrambled Eggs with Toast', 400, 10),
('Greek Salad', 300, 1),
('Split Pea Soup', 250, 2),
('Chicken Parmigiana', 700, 3),
('Grilled Fish Tacos', 400, 4),
('Cauliflower Rice and Vegetable Stir-Fry', 300, 5),
('Meatloaf with Mashed Potatoes', 600, 6),
('Tofu Scramble with Spinach', 280, 7),
('Steak and Potatoes', 750, 8),
('Avocado Toast', 450, 9),
('Spaghetti and Meatballs', 650, 10),
('Mushroom Risotto', 400, 1),
('Zucchini Noodles with Pesto', 350, 2),
('Pulled Pork Sandwich', 500, 3),
('Grilled Chicken Wrap', 450, 4),
('Beef Burritos', 600, 5),
('Vegetable Curry', 400, 6),
('Lentil Soup', 300, 7),
('Chicken Parmesan', 700, 8),
('Quinoa and Avocado Salad', 400, 9),
('Fish and Chips', 650, 10),
('Grilled Veggie and Hummus Wrap', 350, 1),
('Beef and Bean Chili', 500, 2),
('Chicken Noodle Soup', 350, 3),
('Pork Schnitzel with Sauerkraut', 600, 4),
('Vegetable Quesadilla', 400, 5),
('Steak Salad', 700, 6),
('Crispy Tofu Bites', 350, 7),
('Chicken Stir-Fry with Rice', 600, 8),
('Vegetable Samosas', 350, 9),
('Lasagna', 750, 10),
('Shrimp Pad Thai', 450, 1),
('Chicken Tikka Masala', 500, 2),
('Beef Stroganoff', 600, 3),
('Salmon with Roasted Vegetables', 420, 4),
('Tofu Stir-Fry with Snow Peas', 350, 5),
('Pot Roast with Carrots and Potatoes', 650, 6),
('Turkey Sandwich on Whole Wheat Bread', 350, 7),
('Pork Chops with Applesauce', 500, 8),
('Eggplant Parmesan', 450, 9),
('Omelet with Cheese and Vegetables', 350, 10),
('Chicken Salad Sandwich', 400, 1),
('Corn Chowder', 300, 2),
('Chicken Alfredo', 600, 3),
('Grilled Shrimp Skewers', 400, 4),
('Vegetable Stir-Fry with Rice', 350, 5),
('Beef Bourguignon', 700, 6),
('Turkey Chili', 400, 7),
('Pork Loin Roast', 550, 8),
('Lasagna', 650, 9),
('Scrambled Eggs with Toast', 400, 10),
('Greek Salad', 300, 1),
('Split Pea Soup', 250, 2),
('Chicken Parmigiana', 700, 3),
('Grilled Fish Tacos', 400, 4),
('Cauliflower Rice and Vegetable Stir-Fry', 300, 5),
('Meatloaf with Mashed Potatoes', 600, 6),
('Tofu Scramble with Spinach', 280, 7),
('Steak and Potatoes', 750, 8),
('Avocado Toast', 450, 9),
('Spaghetti and Meatballs', 650, 10),
('Mushroom Risotto', 400, 1),
('Zucchini Noodles with Pesto', 350, 2),
('Pulled Pork Sandwich', 500, 3),
('Grilled Chicken Wrap', 450, 4),
('Beef Burritos', 600, 5),
('Vegetable Curry', 400, 6),
('Lentil Soup', 300, 7),
('Chicken Parmesan', 700, 8),
('Quinoa and Avocado Salad', 400, 9),
('Fish and Chips', 650, 10),
('Grilled Veggie and Hummus Wrap', 350, 1),
('Beef and Bean Chili', 500, 2),
('Chicken Noodle Soup', 350, 3),
('Pork Schnitzel with Sauerkraut', 600, 4),
('Vegetable Quesadilla', 400, 5),
('Steak Salad', 700, 6),
('Crispy Tofu Bites', 350, 7),
('Chicken Stir-Fry with Rice', 600, 8),
('Vegetable Samosas', 350, 9),
('Lasagna', 750, 10),
('Falafel Wrap', 400, 1),
('Chicken Tenders with Fries', 550, 2),
('Shrimp Scampi', 500, 3),
('Lamb Kebab', 600, 4),
('Beef Tacos', 500, 5),
('Vegetable Lo Mein', 400, 6),
('Fried Chicken with Collard Greens', 750, 7),
('Salmon Sushi', 300, 8),
('Stuffed Bell Peppers', 450, 9),
('Pasta Alfredo', 800, 10),
('Greek Salad with Chicken', 350, 1),
('Pork Belly with Rice', 700, 2),
('Grilled Tuna with Asparagus', 400, 3),
('Meatball Sub', 600, 4),
('Vegetable and Tofu Stir Fry', 350, 5),
('Baked Chicken Wings', 550, 6),
('Lamb Chop with Couscous', 750, 7),
('Shrimp Tacos', 400, 8),
('Spinach and Cheese Stuffed Chicken', 500, 9),
('Pulled Chicken Nachos', 650, 10),
('Eggplant Stir Fry', 250, 1),
('Pork Roast with Roasted Veggies', 700, 2),
('Beef Burrito Bowl', 600, 3),
('Chicken and Vegetable Skewers', 450, 4),
('Chickpea Salad with Feta', 350, 5),
('Grilled Chicken with Roasted Potatoes', 600, 6),
('Beef and Vegetable Kabobs', 550, 7),
('Baked Salmon with Sweet Potato', 600, 8),
('Avocado and Bean Tacos', 400, 9),
('Steak with Roasted Carrots', 750, 10),
('Vegetarian Chili', 400, 1),
('Chicken Shawarma', 500, 2),
('BBQ Pork Ribs', 700, 3),
('Eggplant and Chickpea Curry', 400, 4),
('Roast Beef Sandwich', 600, 5),
('Vegetable and Bean Burrito', 500, 6),
('Grilled Steak with Spinach', 650, 7),
('Fish Tacos with Mango Salsa', 450, 8),
('Roast Duck with Sweet Potato Mash', 800, 9),
('Shrimp and Vegetable Stir Fry', 500, 10),
('Black Bean Burgers', 400, 1),
('Lentil Soup with Vegetables', 280, 2),
('Chicken Pot Pie', 500, 3),
('Salmon with Quinoa and Roasted Brussels Sprouts', 480, 4),
('Tofu Scramble with Tomatoes and Avocado', 320, 5),
('Beef Brisket with Mashed Potatoes and Green Beans', 700, 6),
('Turkey Club Sandwich', 450, 7),
('Pork Carnitas Tacos', 550, 8),
('Lentil Shepherd''s Pie', 400, 9),
('Frittata with Vegetables and Cheese', 400, 10),
('Chicken Caesar Wrap', 420, 1),
('Black Bean and Corn Salad', 200, 2),
('Beef Lasagna', 600, 3),
('Shrimp Scampi with Zucchini Noodles', 450, 4),
('Tofu and Vegetable Curry', 380, 5),
('Pot Roast with Vegetables', 650, 6),
('Tuna Salad Sandwich on Whole Wheat Bread', 400, 7),
('Chicken Fajita Bowl with Brown Rice and Beans', 500, 8),
('Vegetable Pad Thai', 400, 9),
('Mushroom and Spinach Frittata', 350, 10),
('Greek Yogurt Parfait with Granola and Berries', 300, 1),
('Minestrone Soup', 350, 2),
('Shepherds Pie', 600, 3),
('Baked Cod with Lemon and Herbs', 420, 4),
('Tempeh Stir Fry with Vegetables', 350, 5),
('Short Ribs with Roasted Vegetables', 700, 6),
('Club Sandwich', 550, 7),
('Carnitas Bowl with Guacamole and Pico de Gallo', 600, 8),
('Lentil and Vegetable Stew', 300, 9),
('Chicken and Vegetable Curry', 450, 10),
('Grilled Cheese Sandwich', 400, 1),
('Tomato Soup', 200, 2),
('Spaghetti Carbonara', 650, 3),
('Grilled Salmon with Asparagus', 450, 4),
('Tofu Stir-Fry with Broccoli', 300, 5),
('Beef Stew with Carrots and Potatoes', 550, 6),
('Turkey Sandwich on Rye Bread', 350, 7),
('Pork Chops with Applesauce', 500, 8),
('Eggplant Parmesan', 450, 9),
('Omelet with Cheese and Vegetables', 350, 10),
('Chicken Salad Sandwich', 400, 1),
('Corn Chowder', 300, 2),
('Chicken Alfredo', 600, 3),
('Grilled Shrimp Skewers', 400, 4),
('Vegetable Stir-Fry with Rice', 350, 5),
('Beef Bourguignon', 700, 6),
('Turkey Chili', 400, 7),
('Pork Loin Roast', 550, 8),
('Lasagna', 650, 9),
('Scrambled Eggs with Toast', 400, 10),
('Greek Salad', 300, 1),
('Split Pea Soup', 250, 2),
('Chicken Parmigiana', 700, 3),
('Grilled Fish Tacos', 400, 4),
('Cauliflower Rice and Vegetable Stir-Fry', 300, 5),
('Meatloaf with Mashed Potatoes', 600, 6),
('Tofu Scramble with Spinach', 280, 7),
('Steak and Potatoes', 750, 8),
('Avocado Toast', 450, 9),
('Spaghetti and Meatballs', 650, 10),
('Mushroom Risotto', 400, 1),
('Zucchini Noodles with Pesto', 350, 2),
('Pulled Pork Sandwich', 500, 3),
('Grilled Chicken Wrap', 450, 4),
('Beef Burritos', 600, 5),
('Vegetable Curry', 400, 6),
('Lentil Soup', 300, 7),
('Chicken Parmesan', 700, 8),
('Quinoa and Avocado Salad', 400, 9),
('Fish and Chips', 650, 10),
('Grilled Veggie and Hummus Wrap', 350, 1),
('Beef and Bean Chili', 500, 2),
('Chicken Noodle Soup', 350, 3),
('Pork Schnitzel with Sauerkraut', 600, 4),
('Vegetable Quesadilla', 400, 5),
('Steak Salad', 700, 6),
('Crispy Tofu Bites', 350, 7),
('Chicken Stir-Fry with Rice', 600, 8),
('Vegetable Samosas', 350, 9),
('Lasagna', 750, 10),
('Falafel Wrap', 400, 1),
('Chicken Tenders with Fries', 550, 2),
('Shrimp Scampi', 500, 3),
('Lamb Kebab', 600, 4),
('Beef Tacos', 500, 5),
('Vegetable Lo Mein', 400, 6),
('Fried Chicken with Collard Greens', 750, 7),
('Salmon Sushi', 300, 8),
('Stuffed Bell Peppers', 450, 9),
('Pasta Alfredo', 800, 10),
('Greek Salad with Chicken', 350, 1),
('Pork Belly with Rice', 700, 2),
('Grilled Tuna with Asparagus', 400, 3),
('Meatball Sub', 600, 4),
('Vegetable and Tofu Stir Fry', 350, 5),
('Baked Chicken Wings', 550, 6),
('Lamb Chop with Couscous', 750, 7),
('Shrimp Tacos', 400, 8),
('Spinach and Cheese Stuffed Chicken', 500, 9),
('Pulled Chicken Nachos', 650, 10),
('Eggplant Stir Fry', 250, 1),
('Pork Roast with Roasted Veggies', 700, 2),
('Beef Burrito Bowl', 600, 3),
('Chicken and Vegetable Skewers', 450, 4),
('Chickpea Salad with Feta', 350, 5),
('Grilled Chicken with Roasted Potatoes', 600, 6),
('Beef and Vegetable Kabobs', 550, 7),
('Baked Salmon with Sweet Potato', 600, 8),
('Avocado and Bean Tacos', 400, 9),
('Steak with Roasted Carrots', 750, 10),
('Vegetarian Chili', 400, 1),
('Chicken Shawarma', 500, 2),
('BBQ Pork Ribs', 700, 3),
('Eggplant and Chickpea Curry', 400, 4),
('Roast Beef Sandwich', 600, 5),
('Vegetable and Bean Burrito', 500, 6),
('Grilled Steak with Spinach', 650, 7),
('Fish Tacos with Mango Salsa', 450, 8),
('Roast Duck with Sweet Potato Mash', 800, 9),
('Shrimp and Vegetable Stir Fry', 500, 10),
('Black Bean Burgers', 400, 1),
('Lentil Soup with Vegetables', 280, 2),
('Chicken Pot Pie', 500, 3),
('Salmon with Quinoa and Roasted Brussels Sprouts', 480, 4),
('Tofu Scramble with Tomatoes and Avocado', 320, 5),
('Beef Brisket with Mashed Potatoes and Green Beans', 700, 6),
('Turkey Club Sandwich', 450, 7),
('Pork Carnitas Tacos', 550, 8),
('Lentil Shepherd''s Pie', 400, 9),
('Frittata with Vegetables and Cheese', 400, 10),
('Chicken Caesar Wrap', 420, 1),
('Black Bean and Corn Salad', 200, 2),
('Beef Lasagna', 600, 3),
('Shrimp Scampi with Zucchini Noodles', 450, 4),
('Tofu and Vegetable Curry', 380, 5),
('Pot Roast with Vegetables', 650, 6),
('Tuna Salad Sandwich on Whole Wheat Bread', 400, 7),
('Chicken Fajita Bowl with Brown Rice and Beans', 500, 8),
('Vegetable Pad Thai', 400, 9),
('Mushroom and Spinach Frittata', 350, 10),
('Greek Yogurt Parfait with Granola and Berries', 300, 1),
('Minestrone Soup', 350, 2),
('Shepherds Pie', 600, 3),
('Baked Cod with Lemon and Herbs', 420, 4),
('Tempeh Stir Fry with Vegetables', 350, 5),
('Short Ribs with Roasted Vegetables', 700, 6),
('Club Sandwich', 550, 7),
('Carnitas Bowl with Guacamole and Pico de Gallo', 600, 8),
('Lentil and Vegetable Stew', 300, 9),
('Chicken and Vegetable Curry', 450, 10),
('Grilled Cheese Sandwich', 400, 1),
('Tomato Soup', 200, 2),
('Spaghetti Carbonara', 650, 3),
('Grilled Salmon with Asparagus', 450, 4),
('Tofu Stir-Fry with Broccoli', 300, 5),
('Beef Stew with Carrots and Potatoes', 550, 6),
('Turkey Sandwich on Rye Bread', 350, 7),
('Pork Chops with Applesauce', 500, 8),
('Eggplant Parmesan', 450, 9),
('Omelet with Cheese and Vegetables', 350, 10),
('Chicken Salad Sandwich', 400, 1),
('Corn Chowder', 300, 2),
('Chicken Alfredo', 600, 3),
('Grilled Shrimp Skewers', 400, 4),
('Vegetable Stir-Fry with Rice', 350, 5),
('Beef Bourguignon', 700, 6),
('Turkey Chili', 400, 7),
('Pork Loin Roast', 550, 8),
('Lasagna', 650, 9),
('Scrambled Eggs with Toast', 400, 10),
('Greek Salad', 300, 1),
('Split Pea Soup', 250, 2),
('Chicken Parmigiana', 700, 3),
('Grilled Fish Tacos', 400, 4),
('Cauliflower Rice and Vegetable Stir-Fry', 300, 5),
('Meatloaf with Mashed Potatoes', 600, 6),
('Tofu Scramble with Spinach', 280, 7),
('Steak and Potatoes', 750, 8),
('Avocado Toast', 450, 9),
('Spaghetti and Meatballs', 650, 10),
('Mushroom Risotto', 400, 1),
('Zucchini Noodles with Pesto', 350, 2),
('Pulled Pork Sandwich', 500, 3),
('Grilled Chicken Wrap', 450, 4),
('Beef Burritos', 600, 5),
('Vegetable Curry', 400, 6),
('Lentil Soup', 300, 7),
('Chicken Parmesan', 700, 8),
('Quinoa and Avocado Salad', 400, 9),
('Fish and Chips', 650, 10),
('Grilled Veggie and Hummus Wrap', 350, 1),
('Beef and Bean Chili', 500, 2),
('Chicken Noodle Soup', 350, 3),
('Pork Schnitzel with Sauerkraut', 600, 4),
('Vegetable Quesadilla', 400, 5),
('Steak Salad', 700, 6),
('Crispy Tofu Bites', 350, 7),
('Chicken Stir-Fry with Rice', 600, 8),
('Vegetable Samosas', 350, 9),
('Lasagna', 750, 10),
('Falafel Wrap', 400, 1),
('Chicken Tenders with Fries', 550, 2),
('Shrimp Scampi', 500, 3),
('Lamb Kebab', 600, 4),
('Beef Tacos', 500, 5),
('Vegetable Lo Mein', 400, 6),
('Fried Chicken with Collard Greens', 750, 7),
('Salmon Sushi', 300, 8),
('Stuffed Bell Peppers', 450, 9),
('Pasta Alfredo', 800, 10),
('Greek Salad with Chicken', 350, 1),
('Pork Belly with Rice', 700, 2),
('Grilled Tuna with Asparagus', 400, 3),
('Meatball Sub', 600, 4),
('Vegetable and Tofu Stir Fry', 350, 5),
('Baked Chicken Wings', 550, 6),
('Lamb Chop with Couscous', 750, 7),
('Shrimp Tacos', 400, 8),
('Spinach and Cheese Stuffed Chicken', 500, 9),
('Pulled Chicken Nachos', 650, 10),
('Eggplant Stir Fry', 250, 1),
('Pork Roast with Roasted Veggies', 700, 2),
('Beef Burrito Bowl', 600, 3),
('Chicken and Vegetable Skewers', 450, 4),
('Chickpea Salad with Feta', 350, 5),
('Grilled Chicken with Roasted Potatoes', 600, 6),
('Beef and Vegetable Kabobs', 550, 7),
('Baked Salmon with Sweet Potato', 600, 8),
('Avocado and Bean Tacos', 400, 9),
('Steak with Roasted Carrots', 750, 10);

SELECT COUNT(*) AS total_users FROM Users;


INSERT INTO Exercise (name, duration, WeightCategory_id) VALUES
('Running', 30, 1),
('Cycling', 40, 2),
('Swimming', 45, 3),
('Walking', 30, 4),
('Yoga', 60, 5),
('Jogging', 30, 6),
('Weightlifting', 45, 7),
('HIIT', 20, 8),
('Pilates', 60, 9),
('Jump Rope', 15, 10),
('Push-ups', 10, 1),
('Plank', 15, 2),
('Squats', 20, 3),
('Burpees', 15, 4),
('Mountain Climbers', 20, 5),
('Lunges', 25, 6),
('Kettlebell Swings', 30, 7),
('Zumba', 45, 8),
('Boxing', 30, 9),
('Dance Aerobics', 40, 10),
('Stair Climbing', 25, 1),
('Rowing', 40, 2),
('Resistance Band Training', 30, 3),
('Walking Lunges', 15, 4),
('Tai Chi', 60, 5),
('Circuit Training', 45, 6),
('Bodyweight Exercises', 30, 7),
('Step Aerobics', 35, 8),
('Kickboxing', 25, 9),
('Stretching', 15, 10),
('Squat Jumps', 15, 1),
('Lateral Raises', 20, 2),
('Push-up Variations', 25, 3),
('Deadlifts', 40, 4),
('Triceps Dips', 30, 5),
('Bicep Curls', 35, 6),
('Chest Press', 45, 7),
('Leg Press', 50, 8),
('Burpee Push-ups', 20, 9),
('Jumping Jacks', 15, 10),
('Jump Squats', 20, 1),
('Walking Lunges with Dumbbells', 30, 2),
('Boxing Shadow', 20, 3),
('Jumping Lunges', 25, 4),
('Sprinting Intervals', 15, 5),
('Powerlifting', 45, 6),
('Mountain Climbers with Push-ups', 20, 7),
('Sprints on Treadmill', 30, 8),
('Interval Walking', 45, 9),
('Barbell Rows', 40, 10),
('Cycling Sprints', 20, 1),
('Speed Workouts', 25, 2),
('Strength Training', 30, 3),
('Resistance Training', 35, 4),
('Superman Exercise', 15, 5),
('Leg Raises', 10, 6),
('Ab Crunches', 20, 7),
('Hip Thrusts', 25, 8),
('Side Planks', 15, 9),
('Triceps Kickbacks', 20, 10),
('Lateral Band Walks', 25, 1),
('Mountain Climber Variations', 30, 2),
('Front Squats', 40, 3),
('Chest Flys', 30, 4),
('Glute Bridges', 25, 5),
('Medicine Ball Slams', 35, 6),
('Jumping Pull-ups', 30, 7),
('Bicycle Crunches', 20, 8),
('Seated Rows', 30, 9),
('Dumbbell Rows', 40, 10),
('Lunge Walks', 15, 1),
('Treadmill Sprints', 30, 2),
('Russian Twists', 25, 3),
('Jumping Lunges with Dumbbells', 35, 4),
('Bodyweight Squats', 30, 5),
('Hamstring Curls', 25, 6),
('Plank to Push-up', 15, 7),
('Pull-up Bar Hold', 10, 8),
('Weighted Step-ups', 30, 9),
('Barbell Clean and Press', 40, 10),
('Squat Hold', 20, 1),
('Step-up Jumps', 30, 2),
('Plyometric Push-ups', 20, 3),
('Leg Extensions', 25, 4),
('Knee Push-ups', 15, 5),
('Inverted Rows', 25, 6),
('Wall Sit', 30, 7),
('Sumo Squats', 30, 8),
('Climbing Stairs with Weights', 35, 9),
('High Knees', 15, 10);

CREATE INDEX idx_users_weightcategory ON Users(WeightCategory_id);

Explain select * from users where WeightCategory_id= 2;

-- --index 01

-- EXPLAIN SELECT U.name, W.name AS WeightCategoryName
-- FROM Users U
-- JOIN WeightCategory W ON U.WeightCategory_id = W.id;

--index 02

CREATE INDEX idx_foods_calories ON Foods(calories);
Explain SELECT * FROM Foods ORDER BY calories DESC;

--function 01

CREATE OR REPLACE FUNCTION create_payment(
    _user_id INT,
    _package_id INT,
    _months INT
)
RETURNS VOID AS $$
DECLARE
    _package_price DECIMAL(10, 2);
    _monthly_payment DECIMAL(10, 2);
    _current_date DATE := CURRENT_DATE;
BEGIN
    -- Get the price of the selected package
    SELECT price INTO _package_price
    FROM Packages
    WHERE id = _package_id;

    -- Calculate the monthly payment
    IF _months > 0 THEN
        _monthly_payment := _package_price / _months;
    ELSE
        RAISE EXCEPTION 'Number of months must be greater than zero.';
    END IF;

    -- Insert the monthly payment into the Payment table
    INSERT INTO Payment (date, payment, user_id)
    VALUES (_current_date, _monthly_payment, _user_id);

END;
$$ LANGUAGE plpgsql;


SELECT create_payment(_user_id, _package_id, _months);-- Insert into vaues for Payment table
SELECT create_payment(432, 2, 6);


SELECT * FROM Payment;

--function 02

CREATE OR REPLACE FUNCTION add_user_and_assign_category(
    user_name VARCHAR(100),
    user_age INT,
    user_body_weight DECIMAL(5, 2),
    user_gender VARCHAR(10),
    user_register_date DATE,
    user_package_id INT
)
RETURNS VOID AS $$
DECLARE
    weight_category_id INT;
BEGIN
    -- Determine the appropriate WeightCategory based on body weight
    SELECT id INTO weight_category_id
    FROM WeightCategory
    WHERE user_body_weight BETWEEN min_weight AND max_weight;

    IF weight_category_id IS NULL THEN
        RAISE EXCEPTION 'No suitable weight category found for weight %', user_body_weight;
    END IF;

    -- Insert the user into the Users table with the assigned WeightCategory
    INSERT INTO Users (name, age, body_weight, gender, register_date, package_id, WeightCategory_id)
    VALUES (user_name, user_age, user_body_weight, user_gender, user_register_date, user_package_id, weight_category_id);

    RAISE NOTICE 'User % has been added with WeightCategory ID %', user_name, weight_category_id;
END;
$$ LANGUAGE plpgsql;

SELECT add_user_and_assign_category('Hasangi Sachindya', 25, 45.03, 'Female', '2024-09-07', 8, 2);

SELECT * FROM Users;

--Trigger 01

CREATE OR REPLACE FUNCTION prevent_duplicate_exercises()
RETURNS TRIGGER AS $$
BEGIN
    -- Prevent duplicate exercises
    IF EXISTS (
        SELECT 1 FROM Exercise
        WHERE name = NEW.name AND WeightCategory_id = NEW.WeightCategory_id
    ) THEN
        RAISE EXCEPTION 'Duplicate exercise detected!';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_prevent_duplicate_exercises
BEFORE INSERT OR UPDATE ON Exercise
FOR EACH ROW
EXECUTE FUNCTION prevent_duplicate_exercises();

INSERT INTO Exercise (name, duration, WeightCategory_id)
VALUES ('Push', 35, 3); -- Replace with your actual data

-- UPDATE Exercise
-- SET name = 'Push-up'
-- WHERE id = 1;

SELECT * FROM Exercise;

--Trigger 02

-- Trigger for Users table to remove links to WeightCategory
CREATE OR REPLACE FUNCTION delete_user_weightcategory()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM WeightCategory WHERE id = OLD.WeightCategory_id;
    RAISE NOTICE 'Deleted WeightCategory for user ID: %', OLD.id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_user_weightcategory
AFTER DELETE ON Users
FOR EACH ROW
EXECUTE FUNCTION delete_user_weightcategory();

CALL delete_user_weightcategory;

--see after result
DELETE FROM Users WHERE id = 1;
SELECT * FROM WeightCategory;


--Procedure 01
CREATE OR REPLACE PROCEDURE GetTotalUsersByPackage()
AS $$
DECLARE
    package_name VARCHAR(100);
    total_users INT;
BEGIN
    FOR package_name, total_users IN
        SELECT P.name AS Package_Name,COUNT(U.id) AS Total_Users 
        FROM Packages P
        LEFT JOIN Users U ON P.id = U.package_id
        GROUP BY  P.name
        ORDER BY Total_Users DESC
    LOOP
        -- Display each package name and total users
        RAISE NOTICE 'Package: % --> Total Users: %', package_name, total_users;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

CALL GetTotalUsersByPackage();


--Procedure 02

CREATE OR REPLACE PROCEDURE GetExercisesByWeightCategory(p_weight_category_id INT)
AS $$
DECLARE
    exercise_name VARCHAR(100);
    exercise_duration INT;
    category_name VARCHAR(50);
BEGIN
    -- Fetch the name of the weight category
    SELECT name INTO category_name
    FROM WeightCategory
    WHERE id = p_weight_category_id;

    -- Check if the weight category exists
    IF NOT FOUND THEN
        RAISE NOTICE 'Weight category with ID % does not exist.', p_weight_category_id;
        RETURN;
    END IF;

    -- Iterate through exercises for the given weight category
    FOR exercise_name, exercise_duration IN
        SELECT E.name, E.duration
        FROM Exercise E
        WHERE E.WeightCategory_id = p_weight_category_id
    LOOP
        RAISE NOTICE 'Weight Category: % --> Exercise: % --> Duration: % minutes', category_name, exercise_name, 
		exercise_duration;
    END LOOP;

    -- Notify if no exercises are found
    IF NOT FOUND THEN
        RAISE NOTICE 'No exercises found for weight category %.', category_name;
    END IF;
END;
$$ LANGUAGE plpgsql;

CALL GetExercisesByWeightCategory(2);


--Transaction 01

CREATE OR REPLACE PROCEDURE process_user_payment(p_user_id INT)
LANGUAGE plpgsql
AS $$
DECLARE
    total_payment DECIMAL(10, 2);
BEGIN
    -- Start Transaction
    BEGIN
        -- Fetch total payment for the specified user
        SELECT payment
        INTO total_payment
        FROM Payment
        WHERE user_id = p_user_id;

        -- Check if a payment record exists
        IF NOT FOUND THEN
            RAISE NOTICE 'No payment record found for user ID: %', p_user_id;
            RETURN;
        END IF;

        -- Display the total payment amount for the user
        RAISE NOTICE 'Total payment for user ID %: %', p_user_id, total_payment;

        -- Insert payment details into a PaidRecords table (create if necessary)
        INSERT INTO PaidRecords (user_id, total_paid, paid_date)
        VALUES (p_user_id, total_payment, NOW());

        -- Delete the payment record from the Payment table
        DELETE FROM Payment WHERE user_id = p_user_id;

        -- Display completion notice
        RAISE NOTICE 'Payment transaction completed successfully for user ID: %', p_user_id;

    -- Commit or Rollback the transaction
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Transaction failed. Error: %', SQLERRM;
        ROLLBACK;
    END;
END;
$$;


CREATE TABLE PaidRecords (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    total_paid DECIMAL(10, 2) NOT NULL,
    paid_date TIMESTAMP NOT NULL
);


CALL process_user_payment(432);


SELECT * FROM PaidRecords;

SELECT * FROM Payment;


-- Transaction 02

CREATE OR REPLACE PROCEDURE update_user_weight_and_category(p_user_id INT, new_weight DECIMAL(5, 2))
LANGUAGE plpgsql
AS $$
DECLARE
    new_weight_category_id INT;
BEGIN
    -- Start Transaction
    BEGIN
        -- Update the user's weight
        UPDATE Users
        SET body_weight = new_weight
        WHERE id = p_user_id;

        -- Determine the new weight category
        SELECT id
        INTO new_weight_category_id
        FROM WeightCategory
        WHERE new_weight BETWEEN min_weight AND max_weight;

        -- Check if a matching weight category was found
        IF NOT FOUND THEN
            RAISE EXCEPTION 'No matching weight category found for weight: %', new_weight;
        END IF;

        -- Update the user's weight category
        UPDATE Users
        SET WeightCategory_id = new_weight_category_id
        WHERE id = p_user_id;

        -- Display success message
        RAISE NOTICE 'User ID % weight updated to % and category adjusted to ID %', 
                     p_user_id, new_weight, new_weight_category_id;

    -- Commit or Rollback the transaction
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Transaction failed. Error: %', SQLERRM;
        ROLLBACK;
    END;
END;
$$;

CALL update_user_weight_and_category(436, 75.50);








CREATE OR REPLACE FUNCTION recommend_foods()
RETURNS TRIGGER AS $$
BEGIN
    -- Assign recommended foods based on WeightCategory
    DELETE FROM Foods WHERE WeightCategory_id = OLD.WeightCategory_id;

    INSERT INTO Foods (name, calories, WeightCategory_id)
    SELECT name, calories, NEW.WeightCategory_id
    FROM Foods
    WHERE WeightCategory_id = NEW.WeightCategory_id;

    -- Display a message after recommending foods
    RAISE NOTICE 'Foods have been automatically recommended for WeightCategory ID %', NEW.WeightCategory_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_recommend_foods
AFTER UPDATE ON Users
FOR EACH ROW
WHEN (OLD.WeightCategory_id IS DISTINCT FROM NEW.WeightCategory_id)
EXECUTE FUNCTION recommend_foods();

UPDATE Users
SET WeightCategory_id = 3
WHERE user_id = 433;



CREATE INDEX idx_users_weightcategoryid ON Users (WeightCategory_id);

CREATE INDEX idx_exercise_duration ON Exercise (duration);

Explain SELECT * 
FROM Exercise 
WHERE duration = 30;  -- This query uses the index on the `duration` column.

SELECT user_name, body_weight FROM Users
WHERE weight_cat_id = (SELECT weight_cat_id FROM WeightCategory WHERE category_name = 'Normal');


SELECT food_name, calories FROM Foods
WHERE weight_cat_id = (SELECT weight_cat_id FROM WeightCategory WHERE category_name = 'Obese Class 1');

SELECT exercise_name, duration FROM Exercise
WHERE weight_cat_id = (SELECT weight_cat_id FROM WeightCategory WHERE category_name = 'Overweight');


SELECT wc.category_name, AVG(u.body_weight) AS average_weight
FROM Users u
JOIN WeightCategory wc ON u.weight_cat_id = wc.weight_cat_id
GROUP BY wc.category_name;

SELECT food_name, calories FROM Foods
WHERE calories > 500;

SELECT user_name, body_weight FROM Users
WHERE weight_cat_id IN (
    SELECT weight_cat_id FROM WeightCategory
    WHERE category_name IN ('Underweight', 'Moderately Underweight')
);


SELECT exercise_name FROM Exercise
WHERE weight_cat_id = (SELECT weight_cat_id FROM WeightCategory WHERE category_name = 'Obese Class 2');


SELECT wc.category_name, COUNT(u.user_id) AS total_users
FROM Users u
JOIN WeightCategory wc ON u.weight_cat_id = wc.weight_cat_id
GROUP BY wc.category_name;

SELECT user_name, age, wc.category_name
FROM Users u
JOIN WeightCategory wc ON u.weight_cat_id = wc.weight_cat_id
WHERE u.age > 40;


SELECT food_name, calories FROM Foods
WHERE weight_cat_id IN (
    SELECT weight_cat_id FROM WeightCategory
    WHERE min_weight BETWEEN 80 AND 100
);


SELECT user_name FROM Users
WHERE body_weight > 120;

SELECT food_name, calories FROM Foods
WHERE weight_cat_id = (SELECT weight_cat_id FROM WeightCategory WHERE category_name = 'Normal')
ORDER BY calories DESC
LIMIT 5;

SELECT exercise_name, duration FROM Exercise
WHERE weight_cat_id = (SELECT weight_cat_id FROM WeightCategory WHERE category_name = 'Slightly Overweight')
ORDER BY duration DESC
LIMIT 3;

SELECT AVG(calories) AS average_calories FROM Foods
WHERE weight_cat_id = (SELECT weight_cat_id FROM WeightCategory WHERE category_name = 'Severely Underweight');


SELECT exercise_name, duration FROM Exercise
WHERE duration > 30;

SELECT count(*) FROM foods;



SELECT * FROM Users;
WHERE gender = 'Male';


SELECT checking FROM Users
WHERE gender = 'Female';








CREATE OR REPLACE FUNCTION update_weight_category()
RETURNS TRIGGER AS $$
BEGIN
    -- Only update if the weight category needs to change
    IF NEW.WeightCategory_id IS DISTINCT FROM (
        SELECT id
        FROM WeightCategory
        WHERE NEW.body_weight BETWEEN min_weight AND max_weight
    ) THEN
        NEW.WeightCategory_id := (
            SELECT id
            FROM WeightCategory
            WHERE NEW.body_weight BETWEEN min_weight AND max_weight
        );
    END IF;

    -- Display a message about the update
    RAISE NOTICE 'User ID %: Weight category updated to %', NEW.id, NEW.WeightCategory_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_update_weight_category
BEFORE INSERT OR UPDATE ON Users
FOR EACH ROW
EXECUTE FUNCTION update_weight_category();

INSERT INTO Users (name, age, body_weight, gender, register_date, package_id)
VALUES ('Indrani Abewardhana', 58, 67, 'Female', '2024-10-03', 6);

SELECT * FROM Users;

DROP TRIGGER IF EXISTS trg_update_weight_category ON Users;



-- Trigger for Users table to delete Payments
CREATE OR REPLACE FUNCTION delete_user_payments()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM Payment WHERE user_id = OLD.id;
    RAISE NOTICE 'Deleted payments for user ID: %', OLD.id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_user_payments
AFTER DELETE ON Users
FOR EACH ROW
EXECUTE FUNCTION delete_user_payments();

DELETE FROM Users WHERE id = 1;
SELECT * FROM Payment WHERE user_id = 1;



-- Trigger for WeightCategory to delete Foods and Exercises
CREATE OR REPLACE FUNCTION delete_weightcategory_dependents()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM Foods WHERE WeightCategory_id = OLD.id;
    RAISE NOTICE 'Deleted foods for WeightCategory ID: %', OLD.id;
    DELETE FROM Exercise WHERE WeightCategory_id = OLD.id;
    RAISE NOTICE 'Deleted exercises for WeightCategory ID: %', OLD.id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_weightcategory_dependents
AFTER DELETE ON WeightCategory
FOR EACH ROW
EXECUTE FUNCTION delete_weightcategory_dependents();

DELETE FROM WeightCategory WHERE id = 1;
SELECT * FROM Foods WHERE WeightCategory_id = 1;



-- Trigger for Packages table to delete Users
CREATE OR REPLACE FUNCTION delete_package_users()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM Users WHERE package_id = OLD.id;
    RAISE NOTICE 'Deleted users for package ID: %', OLD.id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_package_users
AFTER DELETE ON Packages
FOR EACH ROW
EXECUTE FUNCTION delete_package_users();

DELETE FROM Packages WHERE id = 1;

SELECT * FROM Users WHERE package_id = 1;




CREATE OR REPLACE PROCEDURE DeleteUser(
    p_id INT
)
AS $$
BEGIN
    -- Check if the user exists before deleting
    IF EXISTS (SELECT 1 FROM Users WHERE id = p_id) THEN
        DELETE FROM Users WHERE id = p_id;
        RAISE NOTICE 'User with ID % deleted successfully.', p_id;
    ELSE
        RAISE EXCEPTION 'User with ID % does not exist.', p_id;
    END IF;
END;
$$ LANGUAGE plpgsql;

CALL DeleteUser(431);











