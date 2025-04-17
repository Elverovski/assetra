CREATE TABLE IF NOT EXISTS stock (
	id_stock INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	symbol VARCHAR(15),
	name VARCHAR(100),
	price DOUBLE,
	sector VARCHAR(100),
	volume DOUBLE,
	marketcap DOUBLE
);
 
CREATE TABLE IF NOT EXISTS customer (
	id_customer INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	date_of_birth DATE,
	email VARCHAR(250),
	phone VARCHAR(50) NULL,
	username VARCHAR(150) NULL,
	password VARCHAR(150) NOT NULL,
	balance DOUBLE
);

CREATE TABLE IF NOT EXISTS portfolio (
   id_portfolio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   shares_owned DOUBLE,
   total_value DOUBLE,          
   total_profit DOUBLE      
);

CREATE TABLE IF NOT EXISTS transaction (
   transaction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   shares DOUBLE,
   price_per_share DOUBLE,
   transaction_fee DOUBLE,
   net_amount DOUBLE,
   order_type VARCHAR(150),
   transaction_date DATE,
   transaction_status VARCHAR(150)
);

INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('AAPL', 'Apple Inc.', 175.32, 'Technology', 80520000, 2743000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('MSFT', 'Microsoft Corp.', 345.76, 'Technology', 56340000, 2580000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('GOOGL', 'Alphabet Inc.', 135.24, 'Technology', 37450000, 1800000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('AMZN', 'Amazon.com Inc.', 145.67, 'Consumer Discretionary', 47200000, 1500000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('TSLA', 'Tesla Inc.', 220.98, 'Consumer Discretionary', 89200000, 700000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('META', 'Meta Platforms Inc.', 310.15, 'Technology', 30230000, 790000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('NVDA', 'NVIDIA Corp.', 465.80, 'Technology', 41240000, 1160000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('JPM', 'JPMorgan Chase & Co.', 155.32, 'Financials', 12800000, 450000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('V', 'Visa Inc.', 234.50, 'Financials', 13420000, 520000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('PG', 'Procter & Gamble Co.', 147.25, 'Consumer Staples', 9520000, 350000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('JNJ', 'Johnson & Johnson', 163.40, 'Healthcare', 11200000, 420000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('DIS', 'Walt Disney Co.', 89.65, 'Communication Services', 14800000, 160000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('KO', 'Coca-Cola Co.', 58.92, 'Consumer Staples', 13200000, 250000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('PEP', 'PepsiCo Inc.', 170.45, 'Consumer Staples', 11000000, 235000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('NFLX', 'Netflix Inc.', 390.22, 'Communication Services', 9500000, 175000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('XOM', 'Exxon Mobil Corp.', 110.75, 'Energy', 15800000, 440000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('CVX', 'Chevron Corp.', 161.50, 'Energy', 14500000, 300000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('BA', 'Boeing Co.', 197.65, 'Industrials', 11000000, 120000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('IBM', 'International Business Machines', 144.30, 'Technology', 8900000, 130000000000);
INSERT INTO stock (symbol, name, price, sector, volume, marketcap) VALUES ('ORCL', 'Oracle Corp.', 108.20, 'Technology', 7400000, 190000000000);

INSERT INTO customer (first_name, last_name, date_of_birth, email, phone, username, password, balance) VALUES ('John', 'Doe', '1990-05-15', 'john.doe@example.com', '+1-555-1234567', 'johndoe90', 'Password123', 1500.50);
INSERT INTO customer (first_name, last_name, date_of_birth, email, phone, username, password, balance) VALUES ('Jane', 'Smith', '1985-07-23', 'jane.smith@example.com', '+1-555-2345678', 'janesmith85', 'Password456', 250.75);
INSERT INTO customer (first_name, last_name, date_of_birth, email, phone, username, password, balance)VALUES ('Emily', 'Johnson', '2000-11-10', 'emily.johnson@example.com', '+1-555-3456789' , 'emilyjohnson00', 'Password789', 500.00);
INSERT INTO customer (first_name, last_name, date_of_birth, email, phone, username, password, balance) VALUES ('Michael', 'Brown', '1995-02-28', 'michael.brown@example.com', '+1-555-4567890' , 'michaelbrown95', 'Password101', 800.30);
INSERT INTO customer (first_name, last_name, date_of_birth, email, phone, username, password, balance) VALUES ('Sophia', 'Miller', '1988-08-14', 'sophia.miller@example.com', '+1-555-5678901' , 'sophiamiller88', 'Password102', 1200.40);


INSERT INTO portfolio (shares_owned, total_value, total_profit)VALUES (150.50, 25000.75, 5000.25);
INSERT INTO portfolio (shares_owned, total_value, total_profit) VALUES (320.00, 48000.40, 8000.60);
INSERT INTO portfolio (shares_owned, total_value, total_profit) VALUES (450.75, 67000.00, 12000.90);
INSERT INTO portfolio (shares_owned, total_value, total_profit) VALUES (123.25, 18300.50, 3200.10);
INSERT INTO portfolio (shares_owned, total_value, total_profit) VALUES (89.50, 13500.75, 2500.45);

INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (100.00, 150.25, 2.50, 15022.50, 'BUY', '2025-03-21 10:30:00', 'Completed');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (50.00, 350.75, 1.80, 17378.70, 'SELL', '2025-03-20 14:15:00', 'Pending');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (200.00, 45.60, 3.00, 9120.00, 'BUY', '2025-03-19 09:00:00', 'Completed');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (75.00, 120.40, 2.00, 9025.00, 'SELL', '2025-03-18 11:45:00', 'Failed');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (150.00, 88.25, 1.50, 13162.50, 'BUY', '2025-03-17 15:30:00', 'Completed');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (120.00, 210.30, 3.50, 25257.50, 'BUY', '2025-03-21 13:00:00', 'Completed');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (80.00, 95.00, 2.00, 7580.00, 'SELL', '2025-03-20 16:45:00', 'Completed');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (50.00, 275.00, 1.50, 13623.50, 'BUY', '2025-03-19 10:30:00', 'Pending');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (200.00, 80.00, 5.00, 15995.00, 'SELL', '2025-03-18 08:00:00', 'Failed');
INSERT INTO transaction (shares, price_per_share, transaction_fee, net_amount, order_type, transaction_date, transaction_status) VALUES (60.00, 135.50, 2.00, 8113.00, 'BUY', '2025-03-17 14:20:00', 'Completed');