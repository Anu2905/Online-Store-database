create database onlinestoresdatabase
use onlinestoresdatabase
select *from Customers
select * from products
select * from Categories
select * from Suppliers
select * from orders
select * from orderdetails
select * from payments
select * from reviews
select * from InventoryTransactions
select * from ShippingMethods

/*truncate table Customers

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

ALTER TABLE Products
ADD SupplierID INT;
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Suppliers
FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID);

ALTER TABLE products
DROP COLUMN SupplierID;


ALTER TABLE Orders
DROP CONSTRAINT FK__Orders__Shipping__5AEE82B9;
ALTER TABLE Orders
DROP COLUMN ShippingMethodID;*/

--table 1 customers
CREATE TABLE Customers (CustomerID INT PRIMARY KEY,FirstName VARCHAR(50) NOT NULL,LastName VARCHAR(50) NOT NULL,Email VARCHAR(100) UNIQUE NOT NULL,Phone VARCHAR(20),Addr VARCHAR(100), City VARCHAR(50),States VARCHAR(50),PostalCode VARCHAR(20),Country VARCHAR(50),DateRegistered DATE DEFAULT GETDATE());
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Addr, City, States, PostalCode, Country, DateRegistered)
VALUES 
(1, 'Aarav', 'Sharma', 'aarav.sharma@example.com', '9876543210', '12 MG Road', 'Mumbai', 'Maharashtra', '400001', 'India', GETDATE()),
(2, 'Diya', 'Verma', 'diya.verma@example.com', '8765432109', '45 Nehru Street', 'Delhi', 'Delhi', '110001', 'India', GETDATE()),
(3, 'Kabir', 'Reddy', 'kabir.reddy@example.com', '7654321098', '78 Banjara Hills', 'Hyderabad', 'Telangana', '500001', 'India', GETDATE()),
(4, 'Meera', 'Nair', 'meera.nair@example.com', '9876501234', '56 MG Road', 'Bengaluru', 'Karnataka', '560001', 'India', GETDATE()),
(5, 'Rohan', 'Mishra', 'rohan.mishra@example.com', '9988776655', '90 Fraser Town', 'Chennai', 'Tamil Nadu', '600001', 'India', GETDATE()),
(6, 'Simran', 'Kaur', 'simran.kaur@example.com', '9876123450', '18 Chandigarh Sector 17', 'Chandigarh', 'Chandigarh', '160017', 'India', GETDATE()),
(7, 'Yash', 'Patel', 'yash.patel@example.com', '9123456789', '27 SG Road', 'Ahmedabad', 'Gujarat', '380001', 'India', GETDATE()),
(8, 'Sneha', 'Das', 'sneha.das@example.com', '9234567890', '34 Gariahat Road', 'Kolkata', 'West Bengal', '700001', 'India', GETDATE()),
(9, 'Ishaan', 'Thakur', 'ishaan.thakur@example.com', '9345678901', '11 Dehradun Lane', 'Dehradun', 'Uttarakhand', '248001', 'India', GETDATE()),
(10, 'Anika', 'Joshi', 'anika.joshi@example.com', '9456789012', '67 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001', 'India', GETDATE());
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Addr, City, States, PostalCode, Country, DateRegistered)
VALUES 
(11, 'Neha', 'Kapoor', 'neha.kapoor@example.com', '9567890123', '44 Rajendra Nagar', 'Indore', 'Madhya Pradesh', '452001', 'India', GETDATE()),
(12, 'Raj', 'Singh', 'raj.singh@example.com', '9678901234', '78 Tilak Road', 'Jaipur', 'Rajasthan', '302001', 'India', GETDATE()),
(13, 'Pooja', 'Gupta', 'pooja.gupta@example.com', '9789012345', '10 Civil Lines', 'Kanpur', 'Uttar Pradesh', '208001', 'India', GETDATE()),
(14, 'Aditya', 'Mehta', 'aditya.mehta@example.com', '9890123456', '33 Race Course Road', 'Coimbatore', 'Tamil Nadu', '641001', 'India', GETDATE()),
(15, 'Tanvi', 'Jain', 'tanvi.jain@example.com', '9901234567', '21 Shivaji Nagar', 'Pune', 'Maharashtra', '411001', 'India', GETDATE()),
(16, 'Vikram', 'Bose', 'vikram.bose@example.com', '9012345678', '54 Lake Town', 'Kolkata', 'West Bengal', '700089', 'India', GETDATE()),
(17, 'Divya', 'Iyer', 'divya.iyer@example.com', '9123456789', '76 Gandhipuram', 'Madurai', 'Tamil Nadu', '625001', 'India', GETDATE()),
(18, 'Amit', 'Choudhary', 'amit.choudhary@example.com', '9234567890', '39 MI Road', 'Bikaner', 'Rajasthan', '334001', 'India', GETDATE()),
(19, 'Kiran', 'Pillai', 'kiran.pillai@example.com', '9345678901', '14 Marine Drive', 'Kochi', 'Kerala', '682001', 'India', GETDATE()),
(20, 'Nikita', 'Desai', 'nikita.desai@example.com', '9456789012', '5 CG Road', 'Surat', 'Gujarat', '395003', 'India', GETDATE()),
(21, 'Sahil', 'Rana', 'sahil.rana@example.com', '9567890123', '102 Ranjit Avenue', 'Amritsar', 'Punjab', '143001', 'India', GETDATE()),
(22, 'Lavanya', 'Yadav', 'lavanya.yadav@example.com', '9678901234', '23 Lajpat Nagar', 'Agra', 'Uttar Pradesh', '282001', 'India', GETDATE()),
(23, 'Tushar', 'Malik', 'tushar.malik@example.com', '9789012345', '88 Old City', 'Varanasi', 'Uttar Pradesh', '221001', 'India', GETDATE()),
(24, 'Riya', 'Saxena', 'riya.saxena@example.com', '9890123456', '19 Residency Road', 'Bhopal', 'Madhya Pradesh', '462001', 'India', GETDATE()),
(25, 'Harshit', 'Garg', 'harshit.garg@example.com', '9901234567', '67 University Road', 'Gwalior', 'Madhya Pradesh', '474001', 'India', GETDATE());
--table 2 products
CREATE TABLE Products (ProductID INT PRIMARY KEY,ProductName VARCHAR(100) NOT NULL,CategoryID INT, Price DECIMAL(10,2),Stock INT, Descriptions VARCHAR(255), Brand VARCHAR(50),Size VARCHAR(10),Color VARCHAR(30),AddedDate DATE DEFAULT GETDATE());
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, Stock, Descriptions, Brand, Size, Color, AddedDate)
VALUES
(1, 'Men Cotton Shirt', 1, 899.00, 50, 'Slim fit casual shirt for men', 'Arrow', 'M', 'Blue', GETDATE()),
(2, 'Women Anarkali Kurti', 2, 1299.00, 30, 'Embroidered Anarkali with dupatta', 'Biba', 'L', 'Maroon', GETDATE()),
(3, 'Girls Party Frock', 3, 799.00, 20, 'Floral party frock for girls aged 5-7', 'Max Kids', 'S', 'Pink', GETDATE()),
(4, 'Men Formal Trousers', 1, 1199.00, 40, 'Slim-fit trousers for office wear', 'Van Heusen', 'L', 'Black', GETDATE()),
(5, 'Women Denim Jeans', 2, 999.00, 60, 'High-rise stretch jeans', 'Levis', 'M', 'Dark Blue', GETDATE()),
(6, 'Boys Ethnic Kurta Set', 3, 1099.00, 25, 'Cotton kurta with pajama set', 'Pantaloons Junior', 'M', 'Yellow', GETDATE()),
(7, 'Saree with Blouse Piece', 2, 1999.00, 15, 'Silk saree with golden border', 'Kalpavriksha', 'Free', 'Green', GETDATE()),
(8, 'Men Hoodie Jacket', 1, 1499.00, 35, 'Winter hoodie with front zipper', 'Roadster', 'XL', 'Grey', GETDATE()),
(9, 'Women Office Blazer', 2, 1899.00, 18, 'Single-breasted formal blazer', 'Allen Solly', 'M', 'Black', GETDATE()),
(10, 'Boys Denim Shorts', 3, 499.00, 50, 'Stretchable cotton denim shorts', 'UCB Kids', 'S', 'Blue', GETDATE()),
(11, 'Unisex Cotton T-Shirt', 4, 499.00, 70, 'Basic round neck t-shirt', 'Jockey', 'L', 'White', GETDATE()),
(12, 'Women Palazzo Pants', 2, 799.00, 40, 'Flared palazzo for casual wear', 'W for Woman', 'M', 'Beige', GETDATE()),
(13, 'Men Kurta Pyjama Set', 1, 1599.00, 28, 'Ethnic wear with embroidered collar', 'Manyavar', 'L', 'Off White', GETDATE()),
(14, 'Girls Leggings (Pack of 2)', 3, 599.00, 45, 'Stretchable cotton leggings', 'Babyhug', 'M', 'Multi-color', GETDATE()),
(15, 'Dupatta with Mirror Work', 4, 299.00, 30, 'Ethnic dupatta for women', 'Aurelia', 'Free', 'Red', GETDATE());
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, Stock, Descriptions, Brand, Size, Color, AddedDate)
VALUES
(16, 'Women Cotton Kurta', 2, 899.00, 35, 'Straight-cut kurta with printed design', 'Global Desi', 'M', 'Teal', GETDATE()),
(17, 'Men Casual Polo T-Shirt', 1, 699.00, 50, 'Cotton polo t-shirt for casual wear', 'US Polo', 'L', 'Navy Blue', GETDATE()),
(18, 'Girls Skirt and Top Set', 3, 999.00, 20, 'Festive wear set for girls aged 7–9', 'Hopscotch', 'S', 'Purple', GETDATE()),
(19, 'Men Denim Jeans', 1, 1299.00, 40, 'Slim-fit stretchable jeans', 'Pepe Jeans', '32', 'Dark Blue', GETDATE()),
(20, 'Women Chiffon Saree', 2, 1799.00, 12, 'Lightweight partywear saree with border', 'FabIndia', 'Free', 'Peach', GETDATE()),
(21, 'Kids Printed T-Shirts (Pack of 3)', 3, 899.00, 25, 'Cartoon-printed cotton t-shirts', 'Mothercare', 'XS', 'Multi-color', GETDATE()),
(22, 'Men Sleeveless Nehru Jacket', 1, 1199.00, 15, 'Ethnic jacket for festive occasions', 'Manyavar', 'M', 'Beige', GETDATE()),
(23, 'Women Maxi Dress', 2, 1499.00, 18, 'Printed floral maxi dress', 'Zara', 'L', 'Blue', GETDATE()),
(24, 'Unisex Woolen Sweater', 4, 999.00, 30, 'Warm woolen sweater for winter', 'H&M', 'XL', 'Maroon', GETDATE()),
(25, 'Women Embroidered Dupatta', 4, 349.00, 40, 'Net dupatta with lace border', 'Soch', 'Free', 'Cream', GETDATE());
--table 3 categories
CREATE TABLE Categories (CategoryID INT PRIMARY KEY,CategoryName VARCHAR(50) NOT NULL,Descriptions VARCHAR(255));
INSERT INTO Categories (CategoryID, CategoryName, Descriptions)
VALUES
(1, 'Men Clothing', 'Shirts, Trousers, Jeans, Jackets, Kurta Sets for men'),
(2, 'Women Clothing', 'Kurtis, Sarees, Dresses, Palazzos, Blazers for women'),
(3, 'Kids Clothing', 'Frocks, T-Shirts, Skirts, Shorts, Ethnic wear for kids'),
(4, 'Accessories', 'Dupattas, Scarves, Jackets, Sweaters, and other accessories');
INSERT INTO Categories (CategoryID, CategoryName, Descriptions)
VALUES
(5, 'Footwear', 'Shoes, Sandals, Sneakers for men, women, and kids'),
(6, 'Ethnic Wear', 'Traditional Indian clothing like sarees, kurtas, lehengas'),
(7, 'Western Wear', 'Casual and formal western dresses, tops, and bottoms'),
(8, 'Sportswear', 'Activewear, gym clothes, tracksuits'),
(9, 'Innerwear', 'Undergarments and sleepwear for all'),
(10, 'Jewellery', 'Fashion and traditional jewellery pieces'),
(11, 'Bags & Wallets', 'Handbags, backpacks, wallets, clutches'),
(12, 'Watches & Accessories', 'Watches, belts, hats, scarves'),
(13, 'Kids Footwear', 'Shoes, sandals, and sneakers for kids'),
(14, 'Winter Wear', 'Jackets, coats, sweaters, gloves'),
(15, 'Lingerie', 'Women’s lingerie and sleepwear'),
(16, 'Maternity Wear', 'Clothes designed for pregnant women'),
(17, 'Plus Size Clothing', 'Clothing designed for plus-size men and women'),
(18, 'Swimwear', 'Swimsuits, bikinis, trunks'),
(19, 'Formal Wear', 'Suits, blazers, formal shirts and trousers'),
(20, 'Casual Wear', 'T-shirts, jeans, casual tops'),
(21, 'Sunglasses & Eyewear', 'Fashion sunglasses and prescription eyewear');
--table 4 Suppliers
CREATE TABLE Suppliers(SupplierID INT PRIMARY KEY,SupplierName VARCHAR(100) NOT NULL,ContactPerson VARCHAR(100),Phone VARCHAR(20),Email VARCHAR(100),Addr VARCHAR(255),City VARCHAR(50),States VARCHAR(50),Country VARCHAR(50),PostalCode VARCHAR(10),RegisteredDate DATE DEFAULT GETDATE());
INSERT INTO Suppliers (SupplierID, SupplierName, ContactPerson, Phone, Email, Addr,City, States, Country, PostalCode)
VALUES
(1, 'FabTex Industries', 'Ravi Kumar', '9876543210', 'contact@fabtex.com', '23 Textile Street', 'Mumbai', 'Maharashtra', 'India', '400001'),
(2, 'EthniQ Apparel', 'Sneha Reddy', '9123456789', 'sales@ethniq.in', '15 Fashion Road', 'Hyderabad', 'Telangana', 'India', '500001'),
(3, 'Urban Stitch Co.', 'Rahul Mehta', '8899001122', 'rahul@urbanstitch.com', '88 Style Lane', 'Bangalore', 'Karnataka', 'India', '560001'),
(4, 'KidsKraft Garments', 'Neha Sharma', '9988776655', 'support@kidskraft.in', '102 Baby Plaza', 'Delhi', 'Delhi', 'India', '110001'),
(5, 'Footwear Bazaar', 'Amit Sinha', '9876012345', 'info@footbazaar.com', '56 Shoe Market', 'Agra', 'Uttar Pradesh', 'India', '282001'),
(6, 'Woven World', 'Divya Pillai', '9823456789', 'orders@wovenworld.in', '21 Cotton Mill Road', 'Coimbatore', 'Tamil Nadu', 'India', '641001'),
(7, 'Jewels & More', 'Pooja Mehra', '9812345678', 'contact@jewelsnmore.com', '19 Gold Street', 'Jaipur', 'Rajasthan', 'India', '302001'),
(8, 'FitWear Pvt Ltd', 'Arjun Das', '9001122334', 'arjun@fitwear.in', '78 Activewear Park', 'Pune', 'Maharashtra', 'India', '411001'),
(9, 'WinterWoolens', 'Manoj Shetty', '9090909090', 'support@winterwoolens.com', '12 Hill View', 'Shimla', 'Himachal Pradesh', 'India', '171001'),
(10, 'Glitz Bags', 'Kiran Rao', '9887766554', 'sales@glitzbags.com', '101 Style Hub', 'Kolkata', 'West Bengal', 'India', '700001');
INSERT INTO Suppliers (SupplierID, SupplierName, ContactPerson, Phone, Email, Addr, City, States, Country, PostalCode)
VALUES
(11, 'SilkRoute Creations', 'Rekha Iyer', '9876001100', 'rekha@silkroute.com', '201 Heritage Plaza', 'Chennai', 'Tamil Nadu', 'India', '600001'),
(12, 'Desi Threads', 'Varun Kapoor', '9823007890', 'sales@desithreads.in', '33 Weaver Street', 'Surat', 'Gujarat', 'India', '395001'),
(13, 'Global Trends Garments', 'Alok Jain', '9812233445', 'contact@globaltrends.com', '88 Market Yard', 'Indore', 'Madhya Pradesh', 'India', '452001'),
(14, 'StylePoint Apparels', 'Nikita Bansal', '9900112233', 'nikita@stylepoint.in', '45 Fashion Plaza', 'Lucknow', 'Uttar Pradesh', 'India', '226001'),
(15, 'Elegant Drapes', 'Swati Kulkarni', '9988771122', 'support@elegantdrapes.com', '60 Saree Street', 'Nagpur', 'Maharashtra', 'India', '440001'),
(16, 'TrendZone India', 'Vikram Solanki', '9811098765', 'info@trendzone.in', '99 Style Avenue', 'Ahmedabad', 'Gujarat', 'India', '380001'),
(17, 'Modern Kurti House', 'Riya Sharma', '9000111122', 'riya@modkurti.com', '120 Boutique Lane', 'Bhopal', 'Madhya Pradesh', 'India', '462001'),
(18, 'NextGen Fashion', 'Ajay Khanna', '9845098450', 'orders@nextgenfashion.in', '23 Trendy Towers', 'Thane', 'Maharashtra', 'India', '400601'),
(19, 'Ethnic Vogue', 'Bhavna Desai', '9876549988', 'support@ethnicvogue.com', '85 Couture Complex', 'Vadodara', 'Gujarat', 'India', '390001'),
(20, 'Crafted Wearables', 'Sahil Taneja', '9933445566', 'contact@craftedwearables.in', '101 Artisan Road', 'Amritsar', 'Punjab', 'India', '143001');

--table 5 orders
CREATE TABLE Orders (OrderID INT PRIMARY KEY,CustomerID INT,OrderDate DATE,ShippingAddress VARCHAR(255),TotalAmount DECIMAL(10,2),Statuss VARCHAR(20),FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ShippingAddress, TotalAmount, Statuss)
VALUES
(1, 5, '2024-12-01', 'Mumbai, Maharashtra', 1599.00, 'Delivered'),
(2, 12, '2024-12-02', 'Chennai, Tamil Nadu', 2299.00, 'Shipped'),
(3, 8, '2024-12-03', 'Bangalore, Karnataka', 1099.00, 'Processing'),
(4, 19, '2024-12-04', 'Delhi, Delhi', 3099.00, 'Delivered'),
(5, 3, '2024-12-05', 'Kolkata, West Bengal', 799.00, 'Cancelled'),
(6, 14, '2024-12-06', 'Pune, Maharashtra', 1299.00, 'Delivered'),
(7, 21, '2024-12-07', 'Jaipur, Rajasthan', 1749.00, 'Shipped'),
(8, 10, '2024-12-08', 'Lucknow, Uttar Pradesh', 950.00, 'Processing'),
(9, 25, '2024-12-09', 'Hyderabad, Telangana', 1999.00, 'Delivered'),
(10, 7, '2024-12-10', 'Ahmedabad, Gujarat', 850.00, 'Delivered');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ShippingAddress, TotalAmount, Statuss)
VALUES
(11, 4, '2024-12-11', 'Chandigarh, Chandigarh', 1850.00, 'Shipped'),
(12, 7, '2024-12-12', 'Patna, Bihar', 2650.00, 'Delivered'),
(13, 9, '2024-12-13', 'Bhopal, Madhya Pradesh', 1199.00, 'Delivered'),
(14, 6, '2024-12-14', 'Nagpur, Maharashtra', 1449.00, 'Processing'),
(15, 13, '2024-12-15', 'Indore, Madhya Pradesh', 2050.00, 'Delivered'),
(16, 1, '2024-12-16', 'Raipur, Chhattisgarh', 2999.00, 'Shipped'),
(17, 10, '2024-12-17', 'Coimbatore, Tamil Nadu', 850.00, 'Delivered'),
(18, 15, '2024-12-18', 'Amritsar, Punjab', 1350.00, 'Cancelled'),
(19, 3, '2024-12-19', 'Jodhpur, Rajasthan', 1650.00, 'Shipped'),
(20, 19, '2024-12-20', 'Vijayawada, Andhra Pradesh', 1899.00, 'Delivered');

-- table 6 orderdetails
CREATE TABLE OrderDetails (OrderDetailID INT PRIMARY KEY,OrderID INT,ProductID INT,Quantity INT,UnitPrice DECIMAL(10,2),TotalPrice AS (Quantity * UnitPrice) PERSISTED,FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 2, 1, 1599.00),
(2, 2, 5, 1, 2299.00),
(3, 3, 3, 1, 1099.00),
(4, 4, 7, 1, 3099.00),
(5, 5, 1, 1, 799.00),
(6, 6, 9, 1, 1299.00),
(7, 7, 4, 1, 1749.00),
(8, 8, 6, 1, 950.00),
(9, 9, 8, 1, 1999.00),
(10, 10, 11, 1, 850.00),
(11, 1, 12, 1, 499.00),
(12, 2, 13, 1, 1499.00),
(13, 3, 14, 1, 999.00),
(14, 4, 15, 2, 799.00),
(15, 5, 16, 1, 1200.00);
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(16, 16, 5, 1, 2999.00),     -- OrderID 16, ProductID 5
(17, 17, 9, 2, 425.00),      -- OrderID 17, ProductID 9
(18, 18, 3, 1, 1350.00),     -- OrderID 18, ProductID 3
(19, 19, 12, 2, 825.00),     -- OrderID 19, ProductID 12
(20, 20, 6, 1, 1899.00);     -- OrderID 20, ProductID 6

--table 7 payments
CREATE TABLE Payments (PaymentID INT PRIMARY KEY,OrderID INT,CustomerID INT,PaymentDate DATE,Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),  -- e.g., Credit Card, UPI, Cash
    PaymentStatus VARCHAR(20),  -- e.g., Paid, Failed, Pending
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
-- Payments
INSERT INTO Payments (PaymentID, OrderID, CustomerID, PaymentDate, Amount, PaymentMethod, PaymentStatus) VALUES
(1, 4, 19, '2024-03-19', 3453.39, 'Debit Card', 'Pending'),
(2, 9, 11, '2024-03-31', 1324.76, 'UPI', 'Paid'),
(3, 14, 11, '2024-02-16', 3110.82, 'Debit Card', 'Pending'),
(4, 13, 8, '2024-08-08', 3126.01, 'Debit Card', 'Pending'),
(5, 13, 9, '2024-07-24', 1395.74, 'Debit Card', 'Pending'),
(6, 18, 16, '2024-12-08', 2292.66, 'Credit Card', 'Failed'),
(7, 20, 9, '2024-04-19', 2083.99, 'UPI', 'Failed'),
(8, 1, 9, '2024-11-29', 3605.93, 'Credit Card', 'Failed'),
(9, 5, 17, '2024-03-30', 3573.94, 'Credit Card', 'Failed'),
(10, 13, 17, '2024-11-25', 918.19, 'Debit Card', 'Paid'),
(11, 3, 10, '2024-02-02', 2729.41, 'UPI', 'Pending'),
(12, 15, 3, '2024-12-19', 2934.35, 'UPI', 'Paid'),
(13, 5, 14, '2024-12-26', 2212.66, 'Debit Card', 'Pending'),
(14, 7, 20, '2024-04-26', 3779.98, 'Cash on Delivery', 'Paid'),
(15, 2, 2, '2024-08-03', 866.47, 'Debit Card', 'Failed'),
(16, 3, 20, '2024-02-03', 1815.95, 'UPI', 'Failed'),
(17, 13, 11, '2024-08-22', 1846.04, 'UPI', 'Pending'),
(18, 14, 1, '2024-11-21', 2544.12, 'UPI', 'Failed'),
(19, 17, 8, '2024-03-04', 4443.30, 'Cash on Delivery', 'Paid'),
(20, 7, 6, '2024-02-09', 4513.70, 'Cash on Delivery', 'Failed');

--table 8 reviwes
CREATE TABLE Reviews (ReviewID INT PRIMARY KEY,CustomerID INT,ProductID INT,Rating INT CHECK (Rating BETWEEN 1 AND 5),ReviewText TEXT,ReviewDate DATE,FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
-- Reviews
INSERT INTO Reviews (ReviewID, CustomerID, ProductID, Rating, ReviewText, ReviewDate) VALUES
(1, 13, 4, 3, 'Very satisfied', '2024-01-29'),
(2, 4, 11, 4, 'Not bad', '2024-01-11'),
(3, 1, 6, 3, 'Very satisfied', '2024-09-22'),
(4, 5, 14, 5, 'Not bad', '2024-07-10'),
(5, 16, 8, 5, 'Great product!', '2024-10-15'),
(6, 7, 18, 3, 'Could be better', '2024-01-25'),
(7, 2, 13, 1, 'Great product!', '2024-10-31'),
(8, 3, 15, 2, 'Could be better', '2024-01-06'),
(9, 7, 13, 3, 'Very satisfied', '2024-10-01'),
(10, 10, 19, 3, 'Very satisfied', '2024-05-02'),
(11, 19, 8, 3, 'Terrible experience', '2024-10-03'),
(12, 6, 9, 2, 'Terrible experience', '2024-11-04'),
(13, 4, 15, 4, 'Terrible experience', '2024-11-22'),
(14, 10, 8, 3, 'Terrible experience', '2024-05-20'),
(15, 10, 8, 4, 'Very satisfied', '2024-12-25'),
(16, 20, 9, 2, 'Terrible experience', '2024-06-29'),
(17, 6, 16, 1, 'Not bad', '2024-05-03'),
(18, 17, 8, 2, 'Great product!', '2024-04-26'),
(19, 17, 16, 1, 'Could be better', '2024-12-17'),
(20, 8, 4, 1, 'Terrible experience', '2024-01-01');

--table 9 inventory transactions
CREATE TABLE InventoryTransactions (TransactionID INT PRIMARY KEY,ProductID INT,
    TransactionType VARCHAR(50),  -- Sale, Restock, Return
    Quantity INT,TransactionDate DATE,
    OrderID INT NULL,             -- Only for Sale/Return
    SupplierID INT NULL,          -- Only for Restock
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID));
-- InventoryTransactions
INSERT INTO InventoryTransactions (TransactionID, ProductID, TransactionType, Quantity, TransactionDate, OrderID, SupplierID) VALUES
(1, 11, 'Restock', 10, '2024-09-09', NULL, 9),
(2, 16, 'Restock', 8, '2024-12-07', NULL, 1),
(3, 7, 'Return', 2, '2024-09-16', 4, NULL),
(4, 7, 'Return', 5, '2024-06-02', 7, NULL),
(5, 4, 'Restock', 6, '2024-06-13', NULL, 10),
(6, 11, 'Return', 3, '2024-10-20', 2, NULL),
(7, 19, 'Return', 1, '2024-12-29', 15, NULL),
(8, 7, 'Return', 6, '2024-09-30', 12, NULL),
(9, 9, 'Sale', 1, '2024-06-03', 16, NULL),
(10, 3, 'Return', 7, '2024-04-27', 14, NULL),
(11, 10, 'Return', 8, '2024-02-06', 3, NULL),
(12, 7, 'Restock', 7, '2024-05-02', NULL, 7),
(13, 19, 'Restock', 7, '2024-03-13', NULL, 6),
(14, 17, 'Return', 10, '2024-05-23', 11, NULL),
(15, 12, 'Restock', 10, '2024-09-11', NULL, 4),
(16, 10, 'Restock', 7, '2024-07-11', NULL, 6),
(17, 6, 'Return', 8, '2024-08-10', 10, NULL),
(18, 18, 'Sale', 8, '2024-02-29', 7, NULL),
(19, 2, 'Return', 1, '2024-06-28', 16, NULL),
(20, 18, 'Sale', 4, '2024-06-02', 3, NULL);

--table 10 shipping method 
CREATE TABLE ShippingMethods (ShippingMethodID INT PRIMARY KEY,
    MethodName VARCHAR(100),        -- e.g., Standard, Express, Same-Day
    EstimatedDays INT,ShippingCost DECIMAL(10, 2));
-- ShippingMethods
INSERT INTO ShippingMethods (ShippingMethodID, MethodName, EstimatedDays, ShippingCost) VALUES
(1, 'Express Delivery', 7, 181.95),
(2, 'Same-Day Delivery', 7, 121.07),
(3, 'Pickup', 2, 243.03),
(4, 'Standard Shipping', 6, 261.43),
(5, 'Express Delivery', 2, 81.57),
(6, 'Same-Day Delivery', 2, 122.70),
(7, 'Pickup', 6, 98.04),
(8, 'Standard Shipping', 2, 147.32),
(9, 'Express Delivery', 7, 106.11),
(10, 'Same-Day Delivery', 7, 270.29),
(11, 'Pickup', 4, 204.58),
(12, 'Standard Shipping', 4, 56.12),
(13, 'Express Delivery', 2, 222.38),
(14, 'Same-Day Delivery', 6, 64.93),
(15, 'Pickup', 5, 56.13),
(16, 'Standard Shipping', 4, 115.85),
(17, 'Express Delivery', 3, 177.76),
(18, 'Same-Day Delivery', 5, 191.17),
(19, 'Pickup', 1, 228.75),
(20, 'Standard Shipping', 4, 270.09);


--1.List suppliers whose names start with ‘F’.
select * from suppliers where suppliername like 'F%'

--2.Get all customers whose names ends with ‘M’
select * from customers where lastname like 'M%'
                 --operators--
--3.Find all customers who live in either 'Mumbai', 'Delhi', or 'Bangalore'.
select* from customers where city in('mumbai','delhi','bangalore');
	
--4.Find the supplier located in the state 'Karnataka'.
select * from Suppliers where states='karnataka'

--5.Retrieve the first 10 records from the orders table.
select top 10*from orders

--6.Find orders where the status contains the letter ‘s’.
select* from orders where statuss like '%s%'

--7.Find all products that cost more than 1000 AND belong to CategoryID 2.
select * from products where price>1000 and CategoryId= 2

--8.Get customers who live in 'Chennai' OR 'Bangalore'.
SELECT * FROM Customers
WHERE City = 'Chennai' OR City = 'Bangalore'

--9.Find all orders where the status is NOT 'Cancelled'.
SELECT * FROM Orders
WHERE Statuss NOT IN ('Cancelled')

--10.Find the average rating of products based on customer reviews.
SELECT ProductID, AVG(Rating) AS AverageRating
FROM Reviews
GROUP BY ProductID;

--11.Show customers who have never placed an order.
SELECT * FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

--12.Retrieve all orders that are still in “Processing” status.
SELECT * FROM Orders
WHERE Statuss = 'Processing';

--13.Find the total quantity of each product sold.
select ProductID,sum(quantity) as totalquantity from OrderDetails group by ProductID

--14.  Show customers from 'Maharashtra' or 'Gujarat', but not those who live in 'Pune'.
SELECT * FROM Customers
WHERE States IN ('Maharashtra', 'Gujarat') AND City <> 'Pune';


--15.Get all products where the price is between ₹500 and ₹1500 and the CategoryID is 2.
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 1500 AND CategoryID = 2;



--16.List all customers along with the total amount they have spent.
SELECT 
    c.CustomerID, 
    c.FirstName, 
    c.LastName, 
    SUM(o.TotalAmount) AS TotalSpent
FROM Customers AS c
LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName;

--17.Find products that are not in CategoryID 4 and have a price less than ₹1000.
SELECT * FROM Products
WHERE CategoryID <> 4 AND Price < 1000;

--18.Retrieve all orders that were either 'Shipped' or 'Processing' and have a total amount over ₹1500.
SELECT * FROM Orders
WHERE (Statuss = 'Shipped' OR Statuss = 'Processing') AND TotalAmount > 1500;

--19.Find the orders that were cancelled and their customer details.
SELECT o.OrderID, c.FirstName, c.LastName, o.Statuss
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.Statuss = 'Cancelled';

--20.Find all customers who live in 'Delhi' and have registered after '2024-01-01'.
SELECT * FROM Customers
WHERE City = 'Delhi' AND DateRegistered > '2024-01-01';


--21.Find customers who registered after January 1, 2024.
SELECT * FROM Customers
WHERE DateRegistered > '2024-01-01';

--22.Show the top 5 products by sales quantity.
SELECT TOP 5 p.ProductID, p.ProductName, SUM(od.Quantity) AS TotalSold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY TotalSold DESC;

--23.Find the total number of reviews for each product.
SELECT ProductID, COUNT(ReviewID) AS ReviewCount
FROM Reviews
GROUP BY ProductID;

--24.List orders and include payment status for each order.
SELECT o.OrderID, o.Statuss AS OrderStatus, p.PaymentStatus
FROM Orders o
LEFT JOIN Payments p ON o.OrderID = p.OrderID;

--25.Retrieve inventory transaction history for a specific product.
SELECT * FROM InventoryTransactions
WHERE ProductID = 7
ORDER BY TransactionDate DESC;







