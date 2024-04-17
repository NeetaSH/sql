CREATE DATABASE PRACTICE;
USE PRACTICE;
CREATE TABLE MOBILE(
STYLE_NAME VARCHAR(49),
BRAND VARCHAR(90),
MODEL_NAME	VARCHAR(88),
NETWORK_SERVICE_PROVIDER TEXT(677),	
OPERATING_SYATEM VARCHAR(90),	
CELLUR_TECHNOLOGY VARCHAR(68),
CUSTOMER_RATING DECIMAL,
BATTERY_LIFE DECIMAL,
PRICE INT ,
DISPLAY_TYPE VARCHAR(76),
DISPLAY_SIZE VARCHAR(45),
MEMORY_CAPACITY VARCHAR(43),
CUSTOMER_RATINGS DECIMAL,
ASIN varchar(55),
RAM VARCHAR(34)
);
SHOW TABLES;
SELECT  * FROM MOBILE;
INSERT INTO MOBILE (STYLE_NAME, BRAND, MODEL_NAME, NETWORK_SERVICE_PROVIDER, OPERATING_SYATEM, CELLUR_TECHNOLOGY, CUSTOMER_RATING, BATTERY_LIFE, PRICE, DISPLAY_TYPE, DISPLAY_SIZE, MEMORY_CAPACITY, CUSTOMER_RATINGS, ASIN, RAM)
VALUES 
('iPhone 13 Pro', 'Apple', 'iPhone 13 Pro', 'AT&T', 'iOS 15', '5G', 4.5, 12.5, 1099, 'OLED', '6.1 inches', '256GB', 4.6, 'B096ZQ65HN', '6GB'),
('Galaxy S21 Ultra', 'Samsung', 'Galaxy S21 Ultra', 'Verizon', 'Android 12', '5G', 4.7, 14.2, 1199, 'Dynamic AMOLED', '6.8 inches', '512GB', 4.8, 'B08N2MSSXL', '12GB'),
('Pixel 6 Pro', 'Google', 'Pixel 6 Pro', 'T-Mobile', 'Android 12', '5G', 4.6, 13.5, 899, 'OLED', '6.7 inches', '128GB', 4.5, 'B09G9NDVK1', '12GB'),
('Xperia 1 III', 'Sony', 'Xperia 1 III', 'AT&T', 'Android 11', '5G', 4.4, 11.8, 1299, 'OLED', '6.5 inches', '256GB', 4.4, 'B092MZ33WV', '12GB'),
('Mi 11 Ultra', 'Xiaomi', 'Mi 11 Ultra', 'T-Mobile', 'MIUI 12.5', '5G', 4.6, 13.0, 1199, 'AMOLED', '6.81 inches', '512GB', 4.7, 'B08BFLY3Y6', '12GB'),
('OnePlus 9 Pro', 'OnePlus', 'OnePlus 9 Pro', 'Verizon', 'OxygenOS 11', '5G', 4.5, 12.5, 1069, 'Fluid AMOLED', '6.7 inches', '256GB', 4.6, 'B08V54D1RK', '12GB'),
('Mi 11T Pro', 'Xiaomi', 'Mi 11T Pro', 'AT&T', 'MIUI 12.5', '5G', 4.4, 12.8, 799, 'AMOLED', '6.67 inches', '256GB', 4.3, 'B09GPYQKF8', '8GB'),
('Galaxy Z Fold 3', 'Samsung', 'Galaxy Z Fold 3', 'T-Mobile', 'Android 11', '5G', 4.7, 11.0, 1799, 'Dynamic AMOLED', '7.6 inches', '256GB', 4.8, 'B09BCJDP7Q', '12GB'),
('iPhone 12', 'Apple', 'iPhone 12', 'Verizon', 'iOS 14', '5G', 4.6, 11.8, 799, 'OLED', '6.1 inches', '128GB', 4.5, 'B08L5TNJHG', '4GB'),
('Find X3 Pro', 'OPPO', 'Find X3 Pro', 'AT&T', 'ColorOS 11.2', '5G', 4.5, 12.3, 1099, 'AMOLED', '6.7 inches', '256GB', 4.4, 'B08ZJMS79P', '12GB'),
('Redmi Note 11 Pro', 'Xiaomi', 'Redmi Note 11 Pro', 'T-Mobile', 'MIUI 13', '5G', 4.3, 13.7, 399, 'IPS LCD', '6.67 inches', '128GB', 4.2, 'B09T6GGNKT', '8GB'),
('ZenFone 8 Flip', 'ASUS', 'ZenFone 8 Flip', 'Verizon', 'ZenUI 8', '5G', 4.4, 10.5, 999, 'AMOLED', '6.67 inches', '256GB', 4.3, 'B08ZDC6P44', '8GB'),
('Moto G Power', 'Motorola', 'Moto G Power', 'T-Mobile', 'Android 11', '4G', 4.3, 18.0, 249, 'IPS LCD', '6.6 inches', '128GB', 4.0, 'B08KYYPT1H', '4GB'),
('Galaxy A52', 'Samsung', 'Galaxy A52', 'AT&T', 'Android 11', '4G', 4.4, 18.0, 399, 'Super AMOLED', '6.5 inches', '128GB', 4.3, 'B08ZK88VV9', '6GB'),
('Realme 8 Pro', 'Realme', 'Realme 8 Pro', 'Verizon', 'Realme UI 2.0', '4G', 4.3, 16.0, 299, 'Super AMOLED', '6.4 inches', '128GB', 4.2, 'B08XQF9RWS', '8GB');
ALTER TABLE MOBILE RENAME COLUMN MODEL_NAME TO NAME_OF_MOBILE;
ALTER TABLE MOBILE DROP COLUMN RAM;
ALTER TABLE MOBILE ADD COLUMN OS VARCHAR(56);
ALTER TABLE MOBILE MODIFY COLUMN MEMORY_CAPACITY varchar(100);
ALTER TABLE MOBILE MODIFY COLUMN PRICE BIGINT;
SET SQL_SAFE_UPDATES = 0;
UPDATE  MOBILE SET PRICE = 250000 WHERE  ASIN  ='B08N2MSSXL';
UPDATE MOBILE SET OS = 'OxygenOS';
UPDATE  MOBILE SET PRICE = 100000 , BRAND = 'IPHONE' WHERE MEMORY_CAPACITY = '512GB';
UPDATE MOBILE SET BATTERY_LIFE = 899 WHERE BRAND = 'Samsung' AND NETWORK_SERVICE_PROVIDER = 'Verizon';
UPDATE  MOBILE SET STYLE_NAME = 'REDMI NOTE 8 PRO' WHERE  ASIN  ='B096ZQ65HN';
UPDATE MOBILE SET CUSTOMER_RATINGS = 5.5 ;
UPDATE  MOBILE SET CELLUR_TECHNOLOGY = '4G' , BRAND = 'REALME' WHERE MEMORY_CAPACITY = '512GB';
UPDATE MOBILE SET OPERATING_SYATEM = 'Android 12' WHERE BRAND = 'Samsung' AND STYLE_NAME = 'Galaxy A52';
UPDATE MOBILE SET NETWORK_SERVICE_PROVIDER = 'T-Mobile' WHERE STYLE_NAME = 'Realme 8 Pro';
UPDATE MOBILE SET DISPLAY_SIZE = '6.8 inches' WHERE STYLE_NAME = 'Find X3 Pro';
UPDATE MOBILE SET MEMORY_CAPACITY = '64GB' WHERE STYLE_NAME = 'Moto G Power';
UPDATE MOBILE SET CUSTOMER_RATINGS = 4.3 WHERE STYLE_NAME = 'Redmi Note 11 Pro';
UPDATE MOBILE SET BATTERY_LIFE = 11.0 WHERE STYLE_NAME = 'ZenFone 8 Flip';
UPDATE MOBILE SET MEMORY_CAPACITY = '64GB' WHERE STYLE_NAME = 'Moto G Power';
UPDATE MOBILE SET OPERATING_SYATEM = 'Android 12' WHERE STYLE_NAME = 'Galaxy A52';
DELETE FROM MOBILE WHERE NAME_OF_MOBILE = 'Redmi Note 11 Pro';



CREATE TABLE REFRIGERATOR(
BRAND VARCHAR(55),
MODEL VARCHAR(20),
ENERGY_EFFICIENCY VARCHAR(43),	
IMPORTER TEXT(1000),
PACKER TEXT(225),
MANUFACTURER  TEXT(500),
DATE_OF_AVAILABLE DATE,
BATTERY_REQUIRED BOOL,
VOLUME_CAPACITY_NAME  INT,
VOLTAGE_VOLTS SMALLINT,
WATTAGE_WATT TINYINT,
AVAILABLE BOOLEAN,
BATTERIES_INCLUDED BOOL,
SELLER_RANK TINYINT,
YEAR_OF_RELEASE YEAR
);
INSERT INTO REFRIGERATOR (BRAND, MODEL, ENERGY_EFFICIENCY, IMPORTER, PACKER, MANUFACTURER, DATE_OF_AVAILABLE, BATTERY_REQUIRED, VOLUME_CAPACITY_NAME, VOLTAGE_VOLTS, WATTAGE_WATT, AVAILABLE, BATTERIES_INCLUDED, SELLER_RANK, YEAR_OF_RELEASE)
VALUES 
('Samsung', 'RF28R7201SR', 'Energy Star Certified', 'Samsung Electronics America, Inc.', 'Samsung Electronics Co., Ltd.', 'Samsung Electronics', '2023-05-15', FALSE, 28, 120, 700, TRUE, FALSE, 9, 2023),
('LG', 'LMXS28626S', 'Energy Star Certified', 'LG Electronics USA, Inc.', 'LG Electronics Co., Ltd.', 'LG Electronics', '2023-04-20', FALSE, 27, 115, 680, TRUE, FALSE, 8, 2023),
('Whirlpool', 'WRX986SIHZ', 'Energy Star Certified', 'Whirlpool Corporation', 'Whirlpool Corporation', 'Whirlpool Corporation', '2023-03-10', FALSE, 26, 110, 670, TRUE, FALSE, 7, 2023),
('GE Appliances', 'GFE26JYMFS', 'Energy Star Certified', 'GE Appliances', 'GE Appliances', 'GE Appliances', '2023-02-05', FALSE, 25, 105, 660, TRUE, FALSE, 6, 2023),
('KitchenAid', 'KRFF507HPS', 'Energy Star Certified', 'Whirlpool Corporation', 'Whirlpool Corporation', 'Whirlpool Corporation', '2023-01-10', FALSE, 24, 100, 650, TRUE, FALSE, 5, 2023),
('Frigidaire', 'FFSS2615TP', 'Energy Star Certified', 'Frigidaire', 'Frigidaire', 'Frigidaire', '2022-12-25', FALSE, 23, 95, 640, TRUE, FALSE, 4, 2022),
('Bosch', 'B36CL81ENG', 'Energy Star Certified', 'Bosch', 'Bosch', 'Bosch', '2022-11-18', FALSE, 22, 90, 630, TRUE, FALSE, 3, 2022),
('Haier', 'HRQ16N3BGS', 'Energy Star Certified', 'Haier America Trading, LLC', 'Haier Group Corporation', 'Haier Group Corporation', '2022-10-30', FALSE, 21, 85, 620, TRUE, FALSE, 2, 2022),
('Electrolux', 'EI23BC82SS', 'Energy Star Certified', 'Electrolux North America, Inc.', 'Electrolux AB', 'Electrolux AB', '2022-09-15', FALSE, 20, 80, 610, TRUE, FALSE, 1, 2022),
('Sub-Zero', 'BI-42SID/O', 'Energy Star Certified', 'Sub-Zero, Inc.', 'Sub-Zero, Inc.', 'Sub-Zero, Inc.', '2022-08-28', FALSE, 19, 75, 600, TRUE, FALSE, 9, 2022),
('Viking', 'VCBB5363EL', 'Energy Star Certified', 'Viking Range, LLC', 'Viking Range, LLC', 'Viking Range, LLC', '2022-07-10', FALSE, 18, 70, 590, TRUE, FALSE, 8, 2022),
('Jenn-Air', 'JFFCC72EHL', 'Energy Star Certified', 'Jenn-Air', 'Jenn-Air', 'Jenn-Air', '2022-06-20', FALSE, 17, 65, 580, TRUE, FALSE, 7, 2022),
('Maytag', 'MFI2570FEZ', 'Energy Star Certified', 'Whirlpool Corporation', 'Whirlpool Corporation', 'Whirlpool Corporation', '2022-05-05', FALSE, 16, 60, 570, TRUE, FALSE, 6, 2022),
('Danby', 'DFF101B1BSLDB', 'Energy Star Certified', 'Danby Products Inc.', 'Danby Products Inc.', 'Danby Products Inc.', '2022-04-15', FALSE, 15, 55, 560, TRUE, FALSE, 5, 2022),
('Kenmore', '111.7303', 'Energy Star Certified', 'Kenmore', 'Kenmore', 'Kenmore', '2022-03-30', FALSE, 14, 50, 550, TRUE, FALSE, 4, 2022);

SELECT * FROM REFRIGERATOR;

ALTER TABLE REFRIGERATOR RENAME COLUMN MODEL TO MODEL_NAME;
ALTER TABLE REFRIGERATOR DROP COLUMN AVAILABLE;
ALTER TABLE REFRIGERATOR ADD COLUMN ASIN VARCHAR(56);
ALTER TABLE REFRIGERATOR MODIFY COLUMN MANUFACTURER  TEXT(1000);
ALTER TABLE REFRIGERATOR MODIFY COLUMN PACKER LONGTEXT;
UPDATE  REFRIGERATOR SET WATTAGE_WATT = 24 WHERE MODEL = 'B36CL81ENG';
UPDATE  REFRIGERATOR SET ENERGY_EFFICIENCY = 'Energy Star Certified Plus' WHERE BRAND = 'Samsung';
UPDATE REFRIGERATOR SET OS = 'OxygenOS';
UPDATE  REFRIGERATOR SET  VOLUME_CAPACITY_NAME = 29 , BRAND = 'LG' WHERE ENERGY_EFFICIENCY = 'Energy Star Certified Plus' ;
UPDATE REFRIGERATOR SET WATTAGE_WATT = 655 WHERE BRAND = 'GE Appliances' AND YEAR_OF_RELEASE = 2023 ;
UPDATE  REFRIGERATOR SET VOLTAGE_VOLTS = 112 WHERE BRAND = 'Whirlpool';
UPDATE REFRIGERATOR SET SELLER_RANK = 5 ;
UPDATE  REFRIGERATOR SET BATTERY_REQUIRED = TRUE WHERE BRAND = 'Danby';
UPDATE REFRIGERATOR SET VOLTAGE_VOLTS = 60  WHERE BRAND = 'Kenmore' AND WATTAGE_WATT = 550;
UPDATE REFRIGERATOR SET BATTERIES_INCLUDED = TRUE WHERE BRAND = 'KitchenAid';
UPDATE REFRIGERATOR SET BATTERIES_INCLUDED = TRUE WHERE BRAND = 'Frigidaire';
UPDATE REFRIGERATOR SET SELLER_RANK = 2 WHERE BRAND = 'Bosch';
UPDATE REFRIGERATOR SET DATE_OF_AVAILABLE = '2022-11-05' WHERE BRAND = 'Haier';
UPDATE REFRIGERATOR SET PACKER = 'Electrolux Home Appliances' WHERE BRAND = 'Electrolux';
UPDATE REFRIGERATOR SET MANUFACTURER = 'Sub-Zero Refrigeration Inc.' WHERE BRAND = 'Sub-Zero';
UPDATE REFRIGERATOR SET VOLUME_CAPACITY_NAME = 17 WHERE BRAND = 'Maytag';
DELETE FROM REFRIGERATOR WHERE  BRAND = 'Danby';

CREATE TABLE MICROWAVE (
    ID INT,
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MANUFACTURED_DATE DATE,
    POWER_WATTS INT,
    COLOR VARCHAR(20),
    WEIGHT_KG DECIMAL(5, 2),
    HAS_TURNTABLE BOOLEAN,
    WARRANTY_DURATION YEAR,
    PRICE DOUBLE,
    RATING FLOAT,
    FEATURES VARCHAR(300),
    USER_NAME VARCHAR(400),
    LAST_USED DATE,
    IS_AVAILABLE BIT
);

INSERT INTO MICROWAVE (ID , BRAND, MODEL_NAME, MANUFACTURED_DATE, POWER_WATTS, COLOR, WEIGHT_KG, HAS_TURNTABLE, WARRANTY_DURATION, PRICE, RATING, FEATURES, USER_NAME, LAST_USED, IS_AVAILABLE)
VALUES (2 ,'Samsung', 'SMW1001', '2023-01-05', 800, 'Black', 12.3, TRUE,  '1' , 129.99, 4.2, '{"defrost": true, "timer": true}', 'ANVIT', '2015-12-22', 1),
(3 ,'LG', 'LMW2002', '2023-02-15', 900, 'White', 13.5, FALSE ,'2-6', 99.50, 4.0, '{"defrost": true, "timer": false}', 'NEETA', '2016-11-21', 1),
(4 ,'Panasonic', 'PMW3003', '2023-03-25', 1000, 'Silver', 14.7, TRUE,  '1-6' , 179.75, 4.5, '{"defrost": true, "timer": true}', 'SPOO', '2017-10-20', 1),
(5 ,'Whirlpool', 'WMW4004', '2023-04-10', 1100, 'Black', 15.9, TRUE,  '2', 239.99, 4.8, '{"defrost": true, "timer": true}', 'NAVEEN', '2018-09-19', 1),
(6 ,'GE Appliances', 'GEMW5005', '2023-05-20', 1200, 'White', 16.2, FALSE,  '3-6', 199.50, 4.3, '{"defrost": true, "timer": false}', 'SIA', '2019-08-18', 1),
(7 ,'Sharp', 'SMW6006', '2023-06-30', 1300, 'Silver', 17.4, TRUE,  '1' , 289.75, 4.7, '{"defrost": true, "timer": true}', 'ANUP', '2020-09-17', 1),
(8 ,'Bosch', 'BMW7007', '2023-07-12', 1400, 'Black', 18.6, TRUE,  '1-6', 349.99, 4.6, '{"defrost": true, "timer": true}', 'ANU', '2021-07-17', 1),
(9 ,'Haier', 'HMW8008', '2023-08-18', 1500, 'White', 19.8, FALSE,  '2' , 279.50, 4.1, '{"defrost": true, "timer": false}', 'SUMITRA', '2022-06-16', 1),
(1 ,'Toshiba', 'TMW9009', '2023-09-25', 1600, 'Silver', 20.1, TRUE,  '2-6' , 419.75, 4.9, '{"defrost": true, "timer": true}', 'SUSHILA', '2023-05-15', 1),
(10 ,'Midea', 'MMW10010', '2023-10-04', 1700, 'Black', 21.3, TRUE,  '1' , 499.99, 4.4, '{"defrost": true, "timer": true}', 'MINI', '2024-04-14', 1),
(15 ,'Electrolux', 'EMW11011', '2023-11-14', 1800, 'White', 22.5, FALSE,  '3-6' , 389.50, 4.2, '{"defrost": true, "timer": false}', 'MANU', '2014-03-13', 1),
(13 ,'Sanyo', 'SMW12012', '2023-12-20', 1900, 'Silver', 23.7, TRUE,  '1-6' , 299.75, 4.6, '{"defrost": true, "timer": true}', 'PAJJU', '2013-02-12', 1),
(17 ,'Hitachi', 'HMW13013', '2024-01-02', 2000, 'Black', 24.9, TRUE, '2' , 569.99, 4.8, '{"defrost": true, "timer": true}', 'VENKU', '2012-01-11', 1),
(19 ,'Viking', 'VMW14014', '2024-02-15', 2100, 'White', 26.2, FALSE, '2-6' , 449.50, 4.5, '{"defrost": true, "timer": false}', 'DIA', '2010-12-10', 1),
(20 ,'KitchenAid', 'KMW15015', '2024-03-30', 2200, 'Silver', 27.4, TRUE,  '1' , 629.75, 4.7, '{"defrost": true, "timer": true}', 'ARU', '2009-11-09', 1);

SELECT * FROM MICROWAVE ;

ALTER TABLE MICROWAVE RENAME COLUMN MODEL_NAME TO NAME_OF_MICROWAVE;
ALTER TABLE MICROWAVE DROP COLUMN WARRANTY_DURATION;
ALTER TABLE MICROWAVE ADD COLUMN USAGE_MICROWAVE VARCHAR(56);
ALTER TABLE MICROWAVE MODIFY COLUMN MODEL_NAME varchar(200);
ALTER TABLE MICROWAVE MODIFY COLUMN WARRANTY_DURATION varchar(200);
SET SQL_SAFE_UPDATES = 0;

UPDATE MICROWAVE SET COLOR = 'BLACK' WHERE PRICE = 449.5;
UPDATE MICROWAVE SET BRAND = 'UpdatedBrand' WHERE ID = 2;
UPDATE MICROWAVE SET COLOR = 'Blue' WHERE POWER_WATTS = 1100;
UPDATE MICROWAVE SET WEIGHT_KG = 14.8 WHERE MODEL_NAME = 'LMW2002';
UPDATE MICROWAVE SET HAS_TURNTABLE = FALSE WHERE WARRANTY_DURATION = '2';
UPDATE MICROWAVE SET PRICE = 199.99 WHERE RATING = 4.5;
UPDATE MICROWAVE SET FEATURES = '{"defrost": false, "timer": true}' WHERE COLOR = 'Black';
UPDATE MICROWAVE SET USER_NAME = 'UpdatedUser' WHERE LAST_USED < '2020-01-01';
UPDATE MICROWAVE SET IS_AVAILABLE = 0 WHERE WEIGHT_KG = 4.7;
UPDATE MICROWAVE SET MODEL_NAME = 'UpdatedModel' WHERE PRICE = 629.75;
UPDATE MICROWAVE SET LAST_USED = '2022-01-01' WHERE ID = 10;


CREATE TABLE AC (
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MANUFACTURED_DATE DATE,
    COOLING_CAPACITY_BTU INT,
    COLOR VARCHAR(20),
    WEIGHT_KG DECIMAL(5, 2),
    HAS_REMOTE TINYINT(1),
    ENERGY_EFFICIENCY VARCHAR(10),
    WARRANTY_DURATION VARCHAR(20),
    PRICE DECIMAL(10, 2),
    RATING FLOAT,
    FEATURES TEXT,
    MANUAL TEXT,
    LAST_SERVICE TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    IS_AVAILABLE TINYINT(1)
);
SHOW TABLES;
INSERT INTO AC (BRAND, MODEL_NAME, MANUFACTURED_DATE, COOLING_CAPACITY_BTU, COLOR, WEIGHT_KG, HAS_REMOTE, ENERGY_EFFICIENCY, WARRANTY_DURATION, PRICE, RATING, FEATURES, MANUAL, LAST_SERVICE, IS_AVAILABLE)
VALUES 
('LG', 'LMAC1001', '2023-01-05', 12000, 'White', 30.5, 1, 'A++', '2 years', 799.99, 4.5, 'Wifi control , Sleep_mode', 'Included', CURRENT_TIMESTAMP, 1),
('Samsung', 'SMAC2002', '2023-02-15', 15000, 'Black', 35.2, 1, 'A+++', '3-6 months', 899.50, 4.8, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Panasonic', 'PMAC3003', '2023-03-25', 18000, 'Silver', 40.7, 1, 'A++', '1 year', 999.75, 4.6, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Haier', 'HAC4004', '2023-04-10', 20000, 'White', 45.9, 1, 'A++', '2 years', 1099.99, 4.7, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Whirlpool', 'WMAC5005', '2023-05-20', 22000, 'Black', 50.3, 1, 'A+', '3-6 months', 1199.50, 4.4, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('GE Appliances', 'GEAC6006', '2023-06-30', 24000, 'Silver', 55.6, 1, 'A+', '1-6 months', 1299.75, 4.9, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Sharp', 'SMAC7007', '2023-07-12', 26000, 'White', 60.8, 1, 'A++', '1 year', 1399.99, 4.5, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Bosch', 'BAC8008', '2023-08-18', 28000, 'Black', 65.2, 1, 'A+++', '2-6 months', 1499.50, 4.8, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Toshiba', 'TAC9009', '2023-09-25', 30000, 'Silver', 70.5, 1, 'A+', '1 year', 1599.75, 4.6, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Midea', 'MAC10010', '2023-10-04', 32000, 'White', 75.9, 1, 'A++', '2 years', 1699.99, 4.7, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Electrolux', 'EMAC11011', '2023-11-14', 34000, 'Black', 80.3, 1, 'A++', '3-6 months', 1799.50, 4.4, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Sanyo', 'SMAC12012', '2023-12-20', 36000, 'Silver', 85.6, 1, 'A+', '1-6 months', 1899.75, 4.9, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Hitachi', 'HAC13013', '2024-01-02', 38000, 'White', 90.8, 1, 'A++', '2 years', 1999.99, 4.5, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('Viking', 'VAC14014', '2024-02-15', 40000, 'Black', 95.2, 1, 'A+++', '3-6 months', 2099.50, 4.8, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1),
('KitchenAid', 'KAC15015', '2024-03-30', 42000, 'Silver', 100.5, 1, 'A++', '1 year', 2199.75, 4.6, 'Wifi control, Sleep mode', 'Included', CURRENT_TIMESTAMP, 1);

SELECT * FROM AC;

ALTER TABLE AC RENAME COLUMN HAS_REMOTE TO REMOTE;
ALTER TABLE AC DROP COLUMN MANUAL;
ALTER TABLE AC ADD COLUMN COUNTRY_OF_ORIGIN VARCHAR(56);
ALTER TABLE AC MODIFY COLUMN ENERGY_EFFICIENCY varchar(100);
ALTER TABLE AC MODIFY COLUMN COLOR CHAR(20);

UPDATE AC SET PRICE = 759.99 WHERE BRAND = 'LG';
UPDATE AC SET COOLING_CAPACITY_BTU = 15500 WHERE BRAND = 'Samsung';
UPDATE AC SET WARRANTY_DURATION = '18 months' WHERE COLOR = 'SILVER';
UPDATE AC SET ENERGY_EFFICIENCY = 'A+++' WHERE RATING = 4.9 ;
UPDATE AC SET FEATURES = 'SLEEP MODE ON';
UPDATE AC SET WEIGHT_KG = 57.6 WHERE BRAND = 'GE Appliances' AND PRICE = 1299.75;
UPDATE AC SET HAS_REMOTE = 0 WHERE WEIGHT_KG = 100.5;
UPDATE AC SET RATING = 4.9 WHERE MODEL_NAME = 'KAC15015';
UPDATE AC SET FEATURES = 'Wifi control, Sleep mode, Timer' WHERE COLOR = 'SILVER';
UPDATE AC SET COLOR = 'BLACK' WHERE WARRANTY_DURATION = '1 YEAR';
UPDATE AC SET IS_AVAILABLE = 0 WHERE ENERGY_EFFICIENCY = 'A++';
UPDATE AC SET ENERGY_EFFICIENCY = 'A+++' WHERE PRICE = 2099.50 ;
UPDATE AC SET WARRANTY_DURATION = '2-5 years' WHERE BRAND = 'Hitachi';
UPDATE AC SET LAST_SERVICE = CURRENT_TIMESTAMP WHERE BRAND = 'Viking';
UPDATE AC SET COLOR = 'Black' WHERE BRAND = 'KitchenAid';

CREATE TABLE FACE_WASH (
    BRAND VARCHAR(50),
    PRODUCT_NAME VARCHAR(100),
    MANUFACTURED_DATE DATE,
    VOLUME_ML DECIMAL(7, 2),
    SCENT VARCHAR(50),
    SKIN_TYPE VARCHAR(50),
    FOAMING TINYINT(1),
    EXFOLIATING TINYINT(1),
    INGREDIENTS TEXT,
    USAGE_INSTRUCTIONS TEXT,
    PRICE DECIMAL(10, 2),
    RATING FLOAT,
    PACKAGING_TYPE VARCHAR(50),
    LAST_PURCHASED_DATE DATE,
    IS_AVAILABLE TINYINT(1)
);
SHOW TABLES;
INSERT INTO FACE_WASH (BRAND, PRODUCT_NAME, MANUFACTURED_DATE, VOLUME_ML, SCENT, SKIN_TYPE, FOAMING, EXFOLIATING, INGREDIENTS, USAGE_INSTRUCTIONS, PRICE, RATING, PACKAGING_TYPE, LAST_PURCHASED_DATE, IS_AVAILABLE)
VALUES 
('Neutrogena', 'Deep Clean Facial Cleanser', '2023-01-05', 150, 'Fresh', 'Normal to Oily', 1, 0, 'Water, Sodium Laureth Sulfate, Glycerin, Cocamidopropyl Betaine, Lauryl Glucoside', 'Wet face, apply cleanser, massage gently, rinse thoroughly', 9.99, 4.5, 'Tube', '2024-02-15', 1),
('Cetaphil', 'Daily Facial Cleanser', '2023-02-15', 236, 'Unscented', 'All Skin Types', 1, 0, 'Water, Glycerin, Sodium Lauroyl Sarcosinate, Acrylates/Steareth-20 Methacrylate Copolymer', 'Apply to wet skin, massage gently, rinse', 8.50, 4.8, 'Bottle', '2024-03-20', 1),
('La Roche-Posay', 'Effaclar Medicated Gel Cleanser', '2023-03-25', 200, 'None', 'Acne-Prone Skin', 1, 1, 'Water, Sodium Laureth Sulfate, Propylene Glycol, Cocamidopropyl Betaine, Glycerin', 'Apply to wet face, massage gently, rinse thoroughly', 14.99, 4.2, 'Tube', '2024-04-10', 1),
('Simple', 'Micellar Facial Gel Wash', '2023-04-10', 150, 'None', 'Sensitive Skin', 1, 0, 'Water, Cocamidopropyl Betaine, Propylene Glycol, Hydrogenated Palm Glycerides, Sodium Chloride', 'Apply a small amount to wet skin, massage gently, rinse', 6.49, 4.6, 'Bottle', '2024-05-18', 1),
('Garnier', 'SkinActive Micellar Foaming Cleanser', '2023-05-20', 200, 'Rose Water', 'All Skin Types', 1, 0, 'Aqua/Water, Glycerin, Disodium Cocoamphodiacetate, Disodium EDTA, Poloxamer 184', 'Apply to wet skin, massage, rinse', 7.99, 4.4, 'Bottle', '2024-06-25', 1),
('Aveeno', 'Positively Radiant Cleanser', '2023-06-30', 180, 'None', 'Dry Skin', 1, 0, 'Water, Glycerin, Cocamidopropyl Betaine, Sodium Laureth Sulfate, Decyl Glucoside', 'Moisten face, work cleanser into lather, rinse', 9.99, 4.7, 'Bottle', '2024-07-05', 1),
('Bioré', 'Deep Pore Charcoal Cleanser', '2023-07-12', 200, 'None', 'Oily Skin', 1, 1, 'Water, Glycerin, Sodium Laureth Sulfate, Sodium Cocoyl Isethionate, Sorbitol', 'Wet face, massage cleanser, rinse', 6.99, 4.3, 'Tube', '2024-08-10', 1),
('Olay', 'Regenerist Regenerating Cream Cleanser', '2023-08-18', 150, 'None', 'Mature Skin', 1, 0, 'Water, PPG-15 Stearyl Ether, Glycerin, Stearyl Alcohol, Cetyl Betaine', 'Wet face, apply cleanser, massage, rinse', 10.49, 4.9, 'Tube', '2024-09-15', 1),
('Clinique', 'Liquid Facial Soap', '2023-09-25', 200, 'Mild', 'Combination Skin', 1, 0, 'Water, Sodium Laureth Sulfate, Lauramidopropyl Betaine, Sodium Chloride, Glycerin', 'Lather between palms, massage over face, rinse', 17.50, 4.1, 'Bottle', '2024-10-20', 1),
('CeraVe', 'Hydrating Facial Cleanser', '2023-10-04', 355, 'None', 'Normal to Dry', 1, 0, 'Water, Glycerin, Cetearyl Alcohol, Caprylic/Capric Triglycerides, Potassium Phosphate', 'Wet skin, lather cleanser, rinse', 14.99, 4.6, 'Bottle', '2024-11-30', 1),
('Hada Labo Tokyo', 'Hydrating Facial Cleanser', '2023-11-14', 160, 'None', 'All Skin Types', 1, 0, 'Water, Glycerin, Sodium Cocoyl Glycinate, Butylene Glycol, Hydroxypropyl Starch Phosphate', 'Wet face, apply cleanser, massage, rinse', 11.99, 4.2, 'Tube', '2024-12-05', 1),
('BurtS Bees', 'Orange Essence Facial Cleanser', '2023-12-20', 120, 'Orange', 'Normal to Oily', 1, 0, 'Water, Olea Europaea (Olive) Fruit Oil, Vitis Vinifera (Grape) Seed Oil, Cocos Nucifera (Coconut) Oil, Citrus Aurantium Dulcis (Orange) Peel Oil', 'Wet face, apply cleanser, rinse thoroughly', 8.99, 4.7, 'Bottle', '2025-01-10', 1),
('The Body Shop', 'Tea Tree Skin Clearing Facial Wash', '2024-01-02', 250, 'Tea Tree', 'Acne-Prone Skin', 1, 1, 'Water, Sodium Laureth Sulfate, Cocamidopropyl Betaine, PEG-120 Methyl Glucose Dioleate, PEG-40 Hydrogenated Castor Oil', 'Wet face, massage cleanser, rinse', 12.00, 4.5, 'Bottle', '2025-02-20', 1),
('Mario Badescu', 'Enzyme Cleansing Gel', '2024-02-15', 177, 'None', 'Combination to Oily', 1, 0, 'Aqua (Water, Eau), Glycerin, Propylene Glycol, PEG-8 Stearate, PPG-2 Hydroxyethyl Cocamide', 'Massage in circular motions on wet skin, rinse thoroughly', 14.00, 4.8, 'Bottle', '2025-03-30', 1),
('LOréal Paris', 'Revitalift Bright Reveal Brightening Scrub Cleanser', '2024-03-30', 150, 'None', 'Dull Skin', 1, 1, 'Water, Sodium Laureth Sulfate, Glycerin, Acrylates Copolymer, Cocamidopropyl Betaine', 'Wet face, apply scrub, massage gently, rinse', 7.95, 4.4, 'Tube', '2025-04-25', 1);
SELECT * FROM FACE_WASH;
ALTER TABLE LAPTOP RENAME COLUMN PRODUCT_NAME TO ITEM_NAME;
ALTER TABLE LAPTOP DROP COLUMN FOAMING;
ALTER TABLE LAPTOP ADD COLUMN FOAMING INT;
ALTER TABLE LAPTOP MODIFY COLUMN BRAND VARCHAR(100);
ALTER TABLE LAPTOP MODIFY COLUMN PRICE DOUBLE;

UPDATE FACE_WASH SET VOLUME_ML = 200 WHERE BRAND = 'Neutrogena';
UPDATE FACE_WASH SET PRICE = 8.99 WHERE PACKAGING_TYPE = 'Tube';
UPDATE FACE_WASH SET RATING = 4.6 WHERE SCENT = 'None';
UPDATE FACE_WASH SET PACKAGING_TYPE = 'Bottle' WHERE IS_AVAILABLE = 1;
UPDATE FACE_WASH SET SCENT = 'Lavender' WHERE RATING >= 4.5;
UPDATE FACE_WASH SET EXFOLIATING = 1 WHERE SKIN_TYPE = 'Acne-Prone Skin';
UPDATE FACE_WASH SET INGREDIENTS = 'Water, Sodium Lauryl Sulfate' WHERE BRAND = 'Cetaphil';
UPDATE FACE_WASH SET USAGE_INSTRUCTIONS = 'Apply, massage, rinse' WHERE PACKAGING_TYPE = 'Bottle';
UPDATE FACE_WASH SET SKIN_TYPE = 'Sensitive Skin' WHERE SCENT = 'None';
UPDATE FACE_WASH SET FOAMING = 0 WHERE RATING = 4.5;
UPDATE FACE_WASH SET PRICE = 11.99 WHERE MANUFACTURED_DATE = '2024-01-01';
UPDATE FACE_WASH SET LAST_PURCHASED_DATE = '2024-12-31' WHERE BRAND = 'Aveeno';
UPDATE FACE_WASH SET RATING = 4.8 WHERE FOAMING = 1;
UPDATE FACE_WASH SET PACKAGING_TYPE = 'Tube' WHERE VOLUME_ML = 200;
UPDATE FACE_WASH SET SCENT = 'Mint' WHERE BRAND = 'The Body Shop';


CREATE TABLE LAPTOP (
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MANUFACTURED_DATE DATE,
    SCREEN_SIZE_INCH DECIMAL(4, 2),
    PROCESSOR_TYPE VARCHAR(50),
    RAM_SIZE_GB TINYINT,
    STORAGE_CAPACITY_GB INT,
    GRAPHICS_CARD VARCHAR(100),
    OPERATING_SYSTEM VARCHAR(50),
    PRICE DECIMAL(10, 2),
    WARRANTY_DURATION_MONTHS SMALLINT,
    IS_TOUCHSCREEN TINYINT(1),
    IS_BACKLIT_KEYBOARD TINYINT(1),
    IS_BLUETOOTH_ENABLED TINYINT(1)
);


INSERT INTO LAPTOP (BRAND, MODEL_NAME, MANUFACTURED_DATE, SCREEN_SIZE_INCH, PROCESSOR_TYPE, RAM_SIZE_GB, STORAGE_CAPACITY_GB, GRAPHICS_CARD, OPERATING_SYSTEM, PRICE, WARRANTY_DURATION_MONTHS, IS_TOUCHSCREEN, IS_BACKLIT_KEYBOARD, IS_BLUETOOTH_ENABLED)
VALUES 
('Dell', 'Inspiron 15 3000', '2023-01-05', 15.6, 'Intel Core i3', 8, 256, 'Intel UHD Graphics', 'Windows 11', 549.99, 12, 0, 1, 1),
('HP', 'Pavilion x360', '2023-02-15', 14, 'Intel Core i5', 12, 512, 'Intel Iris Xe Graphics', 'Windows 11', 799.50, 24, 1, 1, 1),
('Lenovo', 'IdeaPad 5i', '2023-03-25', 15.6, 'Intel Core i7', 16, 1, 'NVIDIA GeForce MX450', 'Windows 11', 1099.99, 36, 0, 1, 1),
('Asus', 'ROG Zephyrus G14', '2023-04-10', 14, 'AMD Ryzen 9', 16, 1, 'NVIDIA GeForce RTX 3060', 'Windows 11', 1499.50, 36, 0, 1, 1),
('Acer', 'Swift 3', '2023-05-20', 13.5, 'AMD Ryzen 5', 8, 512, 'AMD Radeon Graphics', 'Windows 11', 899.99, 24, 0, 1, 1),
('Apple', 'MacBook Pro 14', '2023-06-30', 14, 'Apple M1 Pro', 16, 512, 'Apple M1 Pro', 'macOS Monterey', 1999.75, 12, 0, 1, 1),
('Microsoft', 'Surface Laptop 4', '2023-07-12', 13.5, 'Intel Core i7', 16, 512, 'Intel Iris Xe Graphics', 'Windows 11', 1599.99, 24, 0, 1, 1),
('Samsung', 'Galaxy Book Pro 360', '2023-08-18', 15.6, 'Intel Core i7', 16, 1, 'Intel Iris Xe Graphics', 'Windows 11', 1299.75, 24, 1, 1, 1),
('MSI', 'GS66 Stealth', '2023-09-25', 15.6, 'Intel Core i9', 32, 1, 'NVIDIA GeForce RTX 3080', 'Windows 11', 2499.99, 36, 0, 1, 1),
('Razer', 'Blade 15', '2023-10-04', 15.6, 'Intel Core i7', 16, 1, 'NVIDIA GeForce RTX 3070', 'Windows 11', 1999.75, 24, 0, 1, 1),
('LG', 'Gram 16', '2023-11-14', 16, 'Intel Core i5', 16, 512, 'Intel Iris Xe Graphics', 'Windows 11', 1499.99, 24, 0, 1, 1),
('Huawei', 'MateBook X Pro', '2023-12-20', 13.9, 'Intel Core i7', 16, 512, 'NVIDIA GeForce MX250', 'Windows 11', 1799.50, 24, 0, 1, 1),
('Google', 'Pixelbook Go', '2024-01-02', 13.3, 'Intel Core i5', 8, 128, 'Intel UHD Graphics 615', 'Chrome OS', 649.99, 12, 0, 1, 1),
('Xiaomi', 'Mi Notebook Pro X', '2024-02-15', 15.6, 'Intel Core i7', 16, 1, 'NVIDIA GeForce RTX 3050 Ti', 'Windows 11', 1299.50, 24, 0, 1, 1),
('Toshiba', 'Dynabook Tecra A50', '2024-03-30', 15.6, 'Intel Core i5', 8, 256, 'Intel UHD Graphics', 'Windows 11', 899.99, 12, 0, 1, 1);

SELECT * FROM LAPTOP;
ALTER TABLE LAPTOP RENAME COLUMN MODEL_NAME TO LAPTOP_NAME;
ALTER TABLE LAPTOP DROP COLUMN IS_TOUCHSCREEN;
ALTER TABLE LAPTOP ADD COLUMN IS_TOUCHSCREEN INT;
ALTER TABLE LAPTOP MODIFY COLUMN BRAND VARCHAR(100);
ALTER TABLE LAPTOP MODIFY COLUMN PRICE DOUBLE;

UPDATE LAPTOP SET WARRANTY_DURATION_MONTHS = 13 WHERE BRAND = 'Dell';
UPDATE LAPTOP SET IS_TOUCHSCREEN = 0 WHERE SCREEN_SIZE_INCH = 14;
UPDATE LAPTOP SET WARRANTY_DURATION_MONTHS = 35 WHERE RAM_SIZE_GB = 32;
UPDATE LAPTOP SET IS_BACKLIT_KEYBOARD = 1 WHERE BRAND = 'Asus';
UPDATE LAPTOP SET WARRANTY_DURATION_MONTHS = 23 WHERE PRICE = 2000;
UPDATE LAPTOP SET PRICE = 1999.00 WHERE GRAPHICS_CARD = 'NVIDIA GeForce RTX 3060';
UPDATE LAPTOP SET IS_BLUETOOTH_ENABLED = 0 WHERE STORAGE_CAPACITY_GB = 256;
UPDATE LAPTOP SET STORAGE_CAPACITY_GB = 2 WHERE OPERATING_SYSTEM = 'Windows 11';
UPDATE LAPTOP SET RAM_SIZE_GB = 64 WHERE BRAND = 'MSI';
UPDATE LAPTOP SET GRAPHICS_CARD = 'NVIDIA GeForce GTX 3080' WHERE BRAND = 'Razer';
UPDATE LAPTOP SET OPERATING_SYSTEM = 'Windows 11 Pro' WHERE BRAND = 'LG';
UPDATE LAPTOP SET PROCESSOR_TYPE = 'AMD Ryzen 7' WHERE BRAND = 'Huawei';
UPDATE LAPTOP SET SCREEN_SIZE_INCH = 13.3 WHERE BRAND = 'Google';
UPDATE LAPTOP SET PRICE = 1199.50 WHERE BRAND = 'Xiaomi';
UPDATE LAPTOP SET STORAGE_CAPACITY_GB = 1 WHERE BRAND = 'Toshiba';


CREATE TABLE BAG (
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MATERIAL VARCHAR(50),
    COLOR VARCHAR(50),
    MANUFACTURED_DATE DATE,
    WEIGHT_KG DECIMAL(6, 2),
    LENGTH_CM DECIMAL(6, 2),
    WIDTH_CM DECIMAL(6, 2),
    HEIGHT_CM DECIMAL(6, 2),
    NUMBER_OF_COMPARTMENTS TINYINT,
    HAS_WHEELS BOOLEAN,
    STRAP_MATERIAL VARCHAR(50),
    IS_WATERPROOF TINYINT(1),
    PRICE DECIMAL(10, 2)
);

INSERT INTO BAG (BRAND, MODEL_NAME, MATERIAL, COLOR, MANUFACTURED_DATE, WEIGHT_KG, LENGTH_CM, WIDTH_CM, HEIGHT_CM, NUMBER_OF_COMPARTMENTS, HAS_WHEELS, STRAP_MATERIAL, IS_WATERPROOF, PRICE)
VALUES 
('Samsonite', 'Classic Laptop Backpack', 'Nylon', 'Black', '2023-01-05', 1.2, 45.0, 30.0, 15.0, 3, 0, 'Padded Shoulder Straps', 0, 49.99),
('The North Face', 'Jester Backpack', 'Polyester', 'Blue', '2023-02-15', 0.9, 52.0, 33.0, 22.0, 2, 0, 'Mesh Shoulder Straps', 0, 79.50),
('Herschel Supply Co.', 'Little America Backpack', 'Canvas', 'Grey', '2023-03-25', 1.4, 52.0, 30.0, 15.0, 3, 0, 'Adjustable Shoulder Straps', 0, 99.99),
('Nike', 'Brasilia Backpack', 'Polyester', 'Red', '2023-04-10', 0.7, 46.0, 32.0, 16.0, 2, 0, 'Padded Shoulder Straps', 1, 39.99),
('Adidas', 'Power 5 Backpack', 'Polyester', 'Black/White', '2023-05-20', 0.8, 50.0, 29.0, 16.0, 2, 0, 'Adjustable Padded Straps', 1, 59.99),
('Fjallraven', 'Kanken Backpack', 'Vinylon F', 'Pink', '2023-06-30', 0.3, 38.0, 27.0, 13.0, 1, 0, 'Webbing Shoulder Straps', 1, 89.99),
('Under Armour', 'Hustle 4.0 Backpack', 'Polyester', 'Grey', '2023-07-12', 0.6, 46.0, 33.0, 20.0, 2, 0, 'HeatGear Shoulder Straps', 0, 54.99),
('Osprey', 'Farpoint 40 Travel Backpack', 'Nylon', 'Green', '2023-08-18', 1.5, 55.0, 35.0, 20.0, 3, 0, 'Adjustable Shoulder Straps', 1, 159.50),
('JanSport', 'SuperBreak Backpack', 'Polyester', 'Purple', '2023-09-25', 0.5, 42.0, 33.0, 21.0, 1, 0, 'Straight-Cut Padded Straps', 0, 34.99),
('Timbuk2', 'Classic Messenger Bag', 'Canvas', 'Grey/Black', '2023-10-04', 0.8, 46.0, 34.0, 15.0, 2, 0, 'Adjustable Crossbody Strap', 0, 89.99),
('Patagonia', 'Black Hole Duffel Bag', 'Polyester', 'Yellow', '2023-11-14', 2.0, 63.0, 33.0, 30.0, 1, 0, 'Detachable Shoulder Straps', 1, 129.99),
('Eddie Bauer', 'Stowaway Packable Daypack', 'Polyester', 'Orange', '2023-12-20', 0.3, 45.0, 25.0, 15.0, 1, 0, 'Adjustable Shoulder Straps', 0, 24.99),
('Columbia', 'Silver Ridge Backpack', 'Nylon', 'Blue/Grey', '2024-01-02', 1.0, 50.0, 32.0, 20.0, 2, 0, 'Air Mesh Shoulder Straps', 1, 69.99),
('Vera Bradley', 'Iconic Weekender Travel Bag', 'Cotton', 'Floral', '2024-02-15', 1.8, 58.0, 38.0, 22.0, 2, 0, 'Padded Shoulder Straps', 0, 129.50),
('Kipling', 'Seoul Go Laptop Backpack', 'Nylon', 'Turquoise', '2024-03-30', 1.2, 48.0, 33.0, 20.0, 3, 0, 'Adjustable Padded Straps', 1, 89.99);
SELECT * FROM BAG;
ALTER TABLE BAG RENAME COLUMN MODEL_NAME TO BAG_NAME;
ALTER TABLE BAG DROP COLUMN COLOR;
ALTER TABLE BAG ADD COLUMN COLOR VARCHAR(56);
ALTER TABLE BAG MODIFY COLUMN IS_WATERPROOF INT(100);
ALTER TABLE BAG MODIFY COLUMN PRICE DOUBLE;

UPDATE BAG SET COLOR = 'Black' WHERE BRAND = 'Samsonite' ;
UPDATE BAG SET NUMBER_OF_COMPARTMENTS = 4 WHERE MATERIAL = 'Polyester';
UPDATE BAG SET HAS_WHEELS = 1 WHERE PRICE = 89.9;
UPDATE BAG SET STRAP_MATERIAL = 'Leather' WHERE BAG_ID = 1;
UPDATE BAG SET IS_WATERPROOF = 1 WHERE COLOR = 'Yellow';
UPDATE BAG SET NUMBER_OF_COMPARTMENTS = 5 WHERE BRAND = 'Fjallraven';
UPDATE BAG SET MATERIAL = 'Leather' WHERE BAG_ID = 3;
UPDATE BAG SET LENGTH_CM = 60.0 WHERE BRAND = 'Nike' AND PRICE = 89.99;
UPDATE BAG SET WIDTH_CM = 35.0 WHERE STRAP_MATERIAL  = 'Mesh Shoulder Straps';
UPDATE BAG SET HEIGHT_CM = 25.0 WHERE BAG_ID = 10;
UPDATE BAG SET PRICE = 109.99 WHERE BRAND = 'Patagonia' AND MATERIAL = 'Polyester';
UPDATE BAG SET COLOR = 'Green' WHERE MATERIAL = 'Nylon' AND WEIGHT_KG = 1;
UPDATE BAG SET WEIGHT_KG = 0.4 WHERE BAG_ID = 7;
UPDATE BAG SET NUMBER_OF_COMPARTMENTS = 6 WHERE BRAND = 'Adidas' AND HAS_WHEELS = 0;



CREATE TABLE SUNSCREEN (
    BRAND VARCHAR(50),
    PRODUCT_NAME VARCHAR(100),
    SPF SMALLINT,
    FORM VARCHAR(50),
    TYPE VARCHAR(50),
    SIZE_ML DECIMAL(6, 2),
    PRICE DECIMAL(8, 2),
    EXPIRY_DATE DATE,
    WATER_RESISTANT TINYINT(1),
    FRAGRANCE VARCHAR(50),
    INGREDIENTS TEXT,
    RECOMMENDED_FOR VARCHAR(100),
    USAGE_INSTRUCTIONS VARCHAR(500),
    IS_HYPOALLERGENIC TINYINT(1)
);

INSERT INTO SUNSCREEN (BRAND, PRODUCT_NAME, SPF, FORM, TYPE, SIZE_ML, PRICE, EXPIRY_DATE, WATER_RESISTANT, FRAGRANCE, INGREDIENTS, RECOMMENDED_FOR, USAGE_INSTRUCTIONS, IS_HYPOALLERGENIC)
VALUES 
('Neutrogena', 'Ultra Sheer Dry-Touch Sunscreen SPF 100', 100, 'Lotion', 'Chemical', 88.0, 12.99, '2024-05-30', 1, 'None', 'Active: Avobenzone 3%, Homosalate 15%, Octisalate 5%, Octocrylene 10%, Oxybenzone 6% Inactive: Water, Styrene/acrylates Copolymer, Silica, Diethylhexyl 2,6-naphthalate', 'All Skin Types', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('Coppertone', 'Sport Sunscreen Lotion SPF 50', 50, 'Lotion', 'Chemical', 237.0, 9.49, '2023-10-15', 1, 'Light Fragrance', 'Active: Avobenzone 3%, Homosalate 10%, Octisalate 5%, Octocrylene 4%, Oxybenzone 5% Inactive: Water, Aluminum Starch Octenylsuccinate, Beeswax, Behenyl Alcohol, BHT', 'Active Outdoor Activities', 'Apply generously and evenly to all areas 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 0),
('Banana Boat', 'Ultra Sport Sunscreen Spray SPF 100', 100, 'Spray', 'Chemical', 170.0, 8.99, '2023-08-20', 1, 'Fresh Scent', 'Active: Avobenzone 3%, Homosalate 15%, Octisalate 5%, Octocrylene 10%, Oxybenzone 6% Inactive: Alcohol Denat., Isobutane, Isododecane, Diisopropyl Adipate, VA/Butyl Maleate/Isobornyl Acrylate Copolymer', 'Active Individuals', 'Apply generously and evenly 15 minutes before sun exposure. Hold container 4 to 6 inches from the skin to apply. Do not spray directly into face. Spray on hands and then apply to face. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 0),
('Aveeno', 'Protect + Hydrate Sunscreen Lotion SPF 70', 70, 'Lotion', 'Chemical', 354.0, 11.99, '2024-03-10', 0, 'Light Fragrance', 'Active: Avobenzone 3%, Homosalate 10%, Octisalate 5%, Octocrylene 2.8% Inactive: Water, Glycerin, C12-15 Alkyl Benzoate, Styrene/acrylates Copolymer, Steareth-21', 'Sensitive Skin', 'Apply generously and evenly 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('La Roche-Posay', 'Anthelios Melt-In Milk Sunscreen SPF 60', 60, 'Cream', 'Chemical', 100.0, 35.00, '2023-11-30', 0, 'Fragrance-Free', 'Active: Avobenzone 3%, Homosalate 10.72%, Octisalate 3.21%, Octocrylene 6% Inactive: Water, Isononyl Isononanoate, Glycerin, Myristyl Myristate, Butyloctyl Salicylate', 'Sensitive Skin', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('CeraVe', 'Hydrating Mineral Sunscreen SPF 30', 30, 'Lotion', 'Physical', 89.0, 15.99, '2024-02-15', 0, 'Fragrance-Free', 'Active: Titanium Dioxide 4.7%, Zinc Oxide 4.7% Inactive: Water, Glycerin, C12-15 Alkyl Benzoate, Dimethicone, Isododecane', 'Dry Skin', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('EltaMD', 'UV Clear Facial Sunscreen SPF 46', 46, 'Lotion', 'Physical', 48.0, 36.00, '2023-07-25', 1, 'Fragrance-Free', 'Active: Zinc Oxide 9%, Octinoxate 7.5% Inactive: Water, Cyclopentasiloxane, Niacinamide, Octyldodecyl Neopentanoate, Hydroxyethyl Acrylate', 'Acne-Prone Skin', 'Apply generously and evenly 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('Supergoop!', 'Unseen Sunscreen SPF 40', 40, 'Gel', 'Chemical', 50.0, 34.00, '2024-01-05', 1, 'None', 'Active: Avobenzone 3%, Homosalate 8%, Octisalate 5%, Octocrylene 4% Inactive: Isododecane, Dimethicone Crosspolymer, Dimethicone/Bis-isobutyl PPG-20 Crosspolymer, Polymethylsilsesquioxane', 'All Skin Types', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('Paula''s Choice', 'Essential Glow Moisturizer SPF 30', 30, 'Lotion', 'Chemical', 60.0, 29.00, '2023-12-20', 0, 'Fragrance-Free', 'Active: Avobenzone 3%, Homosalate 8%, Octisalate 5%, Octocrylene 4% Inactive: Water, Glycerin, Silica, Dimethicone', 'Normal to Dry Skin', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('Drunk Elephant', 'Umbra Sheer Physical Daily Defense SPF 30', 30, 'Cream', 'Physical', 90.0, 34.00, '2024-04-15', 1, 'None', 'Active: Zinc Oxide 20% Inactive: Water, Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Pentylene Glycol', 'All Skin Types', 'Apply evenly as the last step in your morning routine. Reapply every 2 hours or after swimming, sweating, or towel drying.', 1),
('Alba Botanica', 'Sensitive Mineral Sunscreen SPF 30', 30, 'Lotion', 'Physical', 113.0, 9.99, '2023-09-10', 1, 'Fragrance-Free', 'Active: Titanium Dioxide 3.0%, Zinc Oxide 5.0% Inactive: Aqua (Water), Caprylic/capric Triglyceride, Dimethicone', 'Sensitive Skin', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('Australian Gold', 'Botanical Sunscreen SPF 50', 50, 'Lotion', 'Chemical', 147.0, 12.99, '2023-06-02', 1, 'Tropical Scent', 'Active: Avobenzone 3%, Homosalate 6%, Octisalate 5%, Octocrylene 10% Inactive: Water, Butyloctyl Salicylate, Cetearyl Alcohol, Isododecane', 'Outdoor Activities', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('Blue Lizard', 'Sensitive Mineral Sunscreen SPF 30+', 30, 'Lotion', 'Physical', 147.0, 14.99, '2024-01-20', 1, 'Fragrance-Free', 'Active: Titanium Dioxide 5%, Zinc Oxide 10% Inactive: Beeswax, C12-15 Alkyl Benzoate, Caprylyl Glycol, Cetyl Dimethicone', 'Sensitive Skin', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('Sun Bum', 'Original Sunscreen Lotion SPF 50', 50, 'Lotion', 'Chemical', 237.0, 15.99, '2023-04-30', 1, 'Tropical Scent', 'Active: Avobenzone 3%, Homosalate 10%, Octisalate 5%, Octocrylene 10% Inactive: Water, Butyloctyl Salicylate, Hydrated Silica, VP/hexadecene Copolymer', 'Outdoor Enthusiasts', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1),
('COOLA', 'Mineral Sunscreen Spray SPF 30', 30, 'Spray', 'Physical', 177.0, 25.00, '2023-03-15', 1, 'Tropical Coconut', 'Active: Titanium Dioxide 3.2%, Zinc Oxide 1.8% Inactive: Alcohol, Algae Extract, Aloe Barbadensis Leaf Juice', 'Sensitive Skin', 'Apply liberally 15 minutes before sun exposure. Reapply after 80 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.', 1);
SELECT * FROM SUNSCREEN;
ALTER TABLE SUNSCREEN RENAME COLUMN SIZE_ML TO QUANTITY_ML;
ALTER TABLE SUNSCREEN DROP COLUMN EXPIRY_DATE;
ALTER TABLE SUNSCREEN ADD COLUMN MANUFACTURED_DATE DATE;
ALTER TABLE SUNSCREEN MODIFY COLUMN USAGE_INSTRUCTIONS varchar(1000);
ALTER TABLE SUNSCREEN MODIFY COLUMN PRICE  DOUBLE ;

UPDATE SUNSCREEN SET PRICE = 14.50 WHERE BRAND = 'Neutrogena' AND SPF = 100;
UPDATE SUNSCREEN SET FRAGRANCE = 'No Fragrance' WHERE BRAND = 'Coppertone';
UPDATE SUNSCREEN SET WATER_RESISTANT = 0 WHERE QUANTITY_ML  = 88.0;
UPDATE SUNSCREEN SET TYPE = 'Mineral' WHERE PRICE = 25;
UPDATE SUNSCREEN SET IS_HYPOALLERGENIC = 1 WHERE BRAND = 'Aveeno';
UPDATE SUNSCREEN SET QUANTITY_ML = 200.0 WHERE SPF = 30 AND BRAND = 'La Roche-Posay';
UPDATE SUNSCREEN SET MANUFACTURED_DATE = '2024-05-01' WHERE BRAND = 'CeraVe';
UPDATE SUNSCREEN SET FORM = 'Gel' WHERE TYPE = 'Chemical' AND BRAND = 'Supergoop!';
UPDATE SUNSCREEN SET PRICE = 25.50 WHERE TYPE = 'Physical' AND WATER_RESISTANT = 1;
UPDATE SUNSCREEN SET INGREDIENTS = 'INGREDIENTS' WHERE BRAND = 'Paula''s Choice';
UPDATE SUNSCREEN SET RECOMMENDED_FOR = 'All Skin Types' WHERE BRAND = 'Drunk Elephant';
UPDATE SUNSCREEN SET USAGE_INSTRUCTIONS = 'Apply generously 20 minutes before sun exposure. Reapply after 90 minutes of swimming or sweating, immediately after towel drying, at least every 2 hours.' WHERE SPF = 50 AND BRAND = 'Alba Botanica';
UPDATE SUNSCREEN SET FRAGRANCE = 'Coconut' WHERE BRAND = 'COOLA';
UPDATE SUNSCREEN SET SPF = 45 WHERE BRAND = 'Blue Lizard';
UPDATE SUNSCREEN SET TYPE = 'Physical' WHERE FRAGRANCE = 'Fragrance-Free';


CREATE TABLE HANDBAGS (
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MATERIAL VARCHAR(50),
    COLOR VARCHAR(50),
    MANUFACTURED_DATE DATE,
    PRICE DECIMAL(10, 2),
    HEIGHT_CM DECIMAL(6, 2),
    WIDTH_CM DECIMAL(6, 2),
    DEPTH_CM DECIMAL(6, 2),
    STRAP_LENGTH_CM DECIMAL(6, 2),
    NUMBER_OF_COMPARTMENTS TINYINT,
    HAS_ZIPPER BOOLEAN,
    IS_CROSSBODY TINYINT(1),
    IS_WATERPROOF TINYINT(1)
);

INSERT INTO HANDBAGS (BRAND, MODEL_NAME, MATERIAL, COLOR, MANUFACTURED_DATE, PRICE, HEIGHT_CM, WIDTH_CM, DEPTH_CM, STRAP_LENGTH_CM, NUMBER_OF_COMPARTMENTS, HAS_ZIPPER, IS_CROSSBODY, IS_WATERPROOF)
VALUES 
('Michael Kors', 'Jet Set Travel Large Saffiano Leather Top-Zip Tote', 'Saffiano Leather', 'Black', '2023-01-05', 250.00, 28.0, 37.0, 15.0, 25.0, 3, 1, 0, 0),
('Coach', 'Signature Canvas Kitt Messenger Crossbody', 'Signature Canvas', 'Brown', '2023-02-15', 175.00, 22.0, 25.0, 7.0, 115.0, 2, 1, 1, 0),
('Kate Spade New York', 'Margaux Medium Convertible Crossbody Bag', 'Crosshatched Leather', 'Pink', '2023-03-25', 198.00, 17.0, 24.0, 9.0, 60.0, 2, 1, 1, 0),
('Louis Vuitton', 'Speedy 30', 'Monogram Canvas', 'Brown', '2023-04-10', 1200.00, 21.0, 30.0, 17.0, NULL, 1, 1, 0, 0),
('Gucci', 'Soho Disco Leather Bag', 'Grained Leather', 'Black', '2023-05-20', 1190.00, 16.0, 21.0, 7.0, 55.0, 2, 1, 1, 0),
('Prada', 'Saffiano Leather Tote Bag', 'Saffiano Leather', 'Blue', '2023-06-30', 2390.00, 28.0, 38.0, 18.0, 55.0, 3, 1, 0, 0),
('Chanel', 'Classic Flap Bag', 'Lambskin', 'Black', '2023-07-12', 6000.00, 17.0, 24.0, 7.0, 55.0, 2, 1, 0, 0),
('Hermès', 'Birkin Bag', 'Togo Leather', 'Orange', '2023-08-18', 15000.00, 25.0, 35.0, 18.0, NULL, 3, 1, 0, 0),
('Burberry', 'The Medium Banner in Leather and House Check', 'Calf Leather', 'Beige', '2023-09-25', 1990.00, 25.0, 34.0, 16.0, 120.0, 3, 1, 0, 0),
('Balenciaga', 'Classic City Small Leather Tote Bag', 'Lambskin', 'Black', '2023-10-04', 2150.00, 24.0, 38.0, 14.0, 55.0, 2, 1, 0, 0),
('Dior', 'Lady Dior Bag', 'Cannage Lambskin', 'Black', '2023-11-14', 4500.00, 20.0, 25.0, 11.0, NULL, 2, 1, 0, 0),
('Givenchy', 'Antigona Medium Sugar Goatskin Satchel Bag', 'Goatskin', 'Red', '2023-12-20', 2450.00, 26.0, 33.0, 19.0, 110.0, 3, 1, 0, 0),
('Valentino', 'Rockstud Medium Tote Bag', 'Calfskin Leather', 'Pink', '2024-01-02', 2795.00, 26.0, 38.0, 15.0, 120.0, 3, 1, 0, 0),
('Fendi', 'Peekaboo Medium Leather Tote Bag', 'Calf Leather', 'Brown', '2024-02-15', 4950.00, 27.0, 36.0, 16.0, NULL, 2, 1, 0, 0),
('Yves Saint Laurent', 'Lou Camera Bag', 'Grained Leather', 'Black', '2024-03-30', 995.00, 15.0, 22.0, 6.0, 60.0, 2, 1, 1, 0);
SELECT * FROM HANDBAGS;
ALTER TABLE HANDBAGS RENAME COLUMN MODEL_NAME TO HANDBAGS_NAME;
ALTER TABLE HANDBAGS DROP COLUMN COLOR;
ALTER TABLE HANDBAGS ADD COLUMN COLOR VARCHAR(56);
ALTER TABLE HANDBAGS MODIFY COLUMN MATERIAL varchar(100);
ALTER TABLE HANDBAGS MODIFY COLUMN PRICE DOUBLE;

UPDATE HANDBAGS SET PRICE = 260.00 WHERE BRAND = 'Michael Kors' AND MATERIAL = 'Saffiano Leather';
UPDATE HANDBAGS SET COLOR = 'Black/Gold' WHERE BRAND = 'Coach';
UPDATE HANDBAGS SET NUMBER_OF_COMPARTMENTS = 4 WHERE PRICE = 2795;
UPDATE HANDBAGS SET HAS_ZIPPER = 0 WHERE STRAP_LENGTH_CM IS NULL;
UPDATE HANDBAGS SET IS_CROSSBODY = 0 WHERE BRAND = 'Louis Vuitton';
UPDATE HANDBAGS SET HEIGHT_CM = 18.0 WHERE MATERIAL = 'Grained Leather';
UPDATE HANDBAGS SET DEPTH_CM = 20.0 WHERE BRAND = 'Chanel';
UPDATE HANDBAGS SET IS_WATERPROOF = 1 WHERE MATERIAL = 'Togo Leather';
UPDATE HANDBAGS SET STRAP_LENGTH_CM = 130.0 WHERE BRAND = 'Burberry';
UPDATE HANDBAGS SET PRICE = 2250.00 WHERE PRICE = 995.00 ;
UPDATE HANDBAGS SET COLOR = 'Silver' WHERE PRICE > 4000;
UPDATE HANDBAGS SET MATERIAL = 'Pebbled Leather' WHERE BRAND = 'Yves Saint Laurent';
UPDATE HANDBAGS SET PRICE = 5000.00 WHERE BRAND = 'Givenchy' ;
UPDATE HANDBAGS SET HAS_ZIPPER = 1 WHERE NUMBER_OF_COMPARTMENTS = 3;
UPDATE HANDBAGS SET WIDTH_CM = 35.0 WHERE BRAND = 'Dior' ;


CREATE TABLE SANDALS (
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MATERIAL VARCHAR(50),
    COLOR VARCHAR(50),
    MANUFACTURED_DATE DATE,
    PRICE DECIMAL(10, 2),
    SIZE_US VARCHAR(10),
    SIZE_EU VARCHAR(10),
    GENDER CHAR(1),
    WATER_RESISTANT BOOLEAN,
    STRAP_MATERIAL VARCHAR(50),
    IS_FLIPFLOP BOOLEAN,
    HAS_ANKLE_STRAP BOOLEAN,
    IS_VEGETARIAN_FRIENDLY BOOLEAN
);

INSERT INTO SANDALS (BRAND, MODEL_NAME, MATERIAL, COLOR, MANUFACTURED_DATE, PRICE, SIZE_US, SIZE_EU, GENDER, WATER_RESISTANT, STRAP_MATERIAL, IS_FLIPFLOP, HAS_ANKLE_STRAP, IS_VEGETARIAN_FRIENDLY)
VALUES 
('Nike', 'Benassi JDI', 'Synthetic', 'Black', '2023-01-05', 25.00, '9', '42', 'U', 1, 'Rubber', 1, 0, 1),
('Adidas', 'Adilette', 'Synthetic', 'White', '2023-02-15', 30.00, '8', '41', 'U', 1, 'Rubber', 1, 0, 1),
('Reef', 'Fanning', 'Synthetic', 'Brown', '2023-03-25', 55.00, '10', '43', 'M', 1, 'Rubber', 1, 1, 1),
('Crocs', 'Classic Clog', 'Croslite Foam', 'Blue', '2023-04-10', 49.99, '7', '40-41', 'U', 1, 'Croslite Foam', 0, 0, 1),
('Teva', 'Original Universal', 'Polyester', 'Red', '2023-05-20', 50.00, '6', '39', 'F', 1, 'Polyester', 0, 0, 1),
('Birkenstock', 'Arizona', 'Birko-Flor', 'Black', '2023-06-30', 135.00, '9', '42', 'M', 0, 'Birko-Flor', 0, 0, 1),
('Keen', 'Newport H2', 'Polyester', 'Green', '2023-07-12', 110.00, '8.5', '41', 'M', 1, 'Polyester', 0, 1, 1),
('Chaco', 'Z/Cloud', 'Polyester', 'Purple', '2023-08-18', 110.00, '7', '38', 'F', 1, 'Polyester', 0, 0, 1),
('Tory Burch', 'Miller', 'Leather', 'Gold', '2023-09-25', 198.00, '8', '39', 'F', 0, 'Leather', 0, 1, 0),
('Havaianas', 'Slim Flip Flop', 'Rubber', 'Pink', '2023-10-04', 26.00, '7', '37-38', 'F', 1, 'Rubber', 1, 0, 1),
('Skechers', 'On-The-Go 600', 'Synthetic', 'Navy', '2023-11-14', 35.00, '9.5', '42.5', 'M', 1, 'Synthetic', 1, 0, 1),
('Ecco', 'Yucatan', 'Nubuck Leather', 'Brown', '2023-12-20', 135.00, '8', '41', 'M', 1, 'Nubuck Leather', 0, 1, 1),
('Merrell', 'Terran Post II', 'Nubuck Leather', 'Taupe', '2024-01-02', 80.00, '7', '37', 'F', 1, 'Nubuck Leather', 1, 0, 1),
('OluKai', 'Ohana', 'Synthetic', 'Black', '2024-02-15', 65.00, '10', '43', 'M', 1, 'Synthetic', 1, 0, 1),
('Sanuk', 'Yoga Mat', 'Textile', 'Gray', '2024-03-30', 32.00, '8', '41', 'M', 1, 'Textile', 1, 0, 1);

SELECT * FROM SANDALS;
ALTER TABLE SANDALS RENAME COLUMN HAS_ANKLE_STRAP TO ANKLE_STRAP;
ALTER TABLE SANDALS DROP COLUMN GENDER;
ALTER TABLE SANDALS ADD COLUMN GENDER CHAR(1);
ALTER TABLE SANDALS MODIFY COLUMN NAME_OF_SANDALS varchar(100);
ALTER TABLE SANDALS MODIFY COLUMN PRICE DOUBLE;

UPDATE SANDALS SET PRICE = 28.00 WHERE BRAND = 'Nike';
UPDATE SANDALS SET COLOR = 'Black/Red' WHERE BRAND = 'Reef';
UPDATE SANDALS SET SIZE_US = '9.5' WHERE PRICE = 25;
UPDATE SANDALS SET WATER_RESISTANT = 0 WHERE STRAP_MATERIAL = 'Leather';
UPDATE SANDALS SET ANKLE_STRAP  = 1 WHERE BRAND = 'Teva';
UPDATE SANDALS SET GENDER = 'U' WHERE PRICE = 30;
UPDATE SANDALS SET STRAP_MATERIAL = 'Synthetic Leather' WHERE MATERIAL = 'Synthetic';
UPDATE SANDALS SET COLOR = 'Brown' WHERE BRAND = 'Crocs';
UPDATE SANDALS SET IS_FLIPFLOP = 0 WHERE BRAND = 'Adidas';
UPDATE SANDALS SET IS_VEGETARIAN_FRIENDLY = 0 WHERE STRAP_MATERIAL = 'Leather';
UPDATE SANDALS SET PRICE = 45.00 WHERE MATERIAL = 'Synthetic' ;
UPDATE SANDALS SET MATERIAL = 'Leather' WHERE BRAND = 'Skechers';
UPDATE SANDALS SET WATER_RESISTANT = 0 WHERE COLOR = 'Gold';
UPDATE SANDALS SET SIZE_EU = '40' WHERE MATERIAL = 'Textile' ;
UPDATE SANDALS SET ANKLE_STRAP = 0 WHERE  IS_FLIPFLOP = 1;


CREATE TABLE TONER (
    BRAND VARCHAR(50),
    PRODUCT_NAME VARCHAR(100),
    SKIN_TYPE VARCHAR(50),
    TARGET_AREA VARCHAR(50),
    MANUFACTURED_DATE DATE,
    PRICE DECIMAL(10, 2),
    VOLUME_ML DECIMAL(8, 2),
    ALCOHOL_FREE BOOLEAN,
    FRAGRANCE VARCHAR(50),
    INGREDIENTS TEXT,
    RECOMMENDED_USAGE VARCHAR(500),
    PACKAGING_MATERIAL VARCHAR(50),
    IS_HYPOALLERGENIC BOOLEAN,
    IS_CRUELTY_FREE BOOLEAN
);

INSERT INTO TONER (BRAND, PRODUCT_NAME, SKIN_TYPE, TARGET_AREA, MANUFACTURED_DATE, PRICE, VOLUME_ML, ALCOHOL_FREE, FRAGRANCE, INGREDIENTS, RECOMMENDED_USAGE, PACKAGING_MATERIAL, IS_HYPOALLERGENIC, IS_CRUELTY_FREE)
VALUES 
('Neutrogena', 'Oil-Free Acne Stress Control Triple-Action Toner', 'Acne-Prone', 'Face', '2023-01-05', 8.99, 237.0, 1, 'Fragrance-Free', 'Active: Salicylic Acid 2% Inactive: Water, Alcohol Denat., Butylene Glycol, PPG-5-Ceteth-20, C12-15 Alkyl Lactate, Fragrance, Sodium Citrate, Disodium EDTA, Cocamidopropyl PG-Dimonium Chloride Phosphate, PEG/PPG-20/6 Dimethicone, Sodium Hydroxide, Benzalkonium Chloride', 'Cleanse skin thoroughly before applying this product. Moisten a cotton ball and cover the entire affected area with a thin layer one to three times daily. Do not rinse.', 'Plastic', 1, 1),
('Thayers', 'Alcohol-Free Rose Petal Witch Hazel Facial Toner', 'All Skin Types', 'Face', '2023-02-15', 10.95, 355.0, 1, 'Rose Petal', 'Purified Water, Aloe Barbadensis Leaf Juice (Certified Organic Filet Of Aloe Vera), Glycerin (Vegetable), Fragrance (Natural Rose), Hamamelis Virginiana Extract (made from Certified Organic Witch Hazel), Rosa Centifolia (Rose) Flower Water, Citric Acid, Citrus Grandis (Grapefruit) Seed Extract', 'Apply with a cotton ball or soft pad to cleanse, soften, refresh and moisturize skin. Use anytime throughout the day as a softening refresher.', 'Plastic', 1, 1),
('Mario Badescu', 'Facial Spray with Aloe, Herbs and Rosewater', 'All Skin Types', 'Face', '2023-03-25', 12.00, 236.0, 1, 'Rosewater', 'Aqua (Water, Eau), Propylene Glycol, Aloe Barbadensis Leaf Juice, Rosa Canina Extract, Thymus Vulgaris (Thyme) Leaf Extract, Fucus Vesiculosus Extract, Gardenia Florida Fruit Extract, Caprylyl Glycol, Hexylene Glycol, Polysorbate 20, Parfum (Fragrance), Phenoxyethanol, Sodium Chloride, Citronellol, Geraniol, CI 17200 (Red 33), CI 42090 (Blue 1)', 'Mist on face, neck, or hair as needed. Use to infuse more hydration before or after applying moisturizer, as a pick-me-up on the go, or post-makeup application to give skin a dewy finish.', 'Plastic', 1, 1),
('Paula''s Choice', 'Skin Perfecting 2% BHA Liquid Exfoliant', 'All Skin Types', 'Face', '2023-04-10', 29.50, 118.0, 1, 'Fragrance-Free', 'Water (Aqua), Methylpropanediol (hydration), Butylene Glycol (hydration), Salicylic Acid (beta hydroxy acid/exfoliant), Polysorbate 20 (stabilizer), Camellia Oleifera Leaf Extract (green tea/skin calming/antioxidant), Sodium Hydroxide (pH balancer), Tetrasodium EDTA (stabilizer)', 'Apply once or twice daily after cleansing and toning. Lightly soak a cotton pad and apply over the entire face, including the eye area (avoid the lower lash line and eyelids). Do not rinse. For daytime, follow with a broad-spectrum sunscreen rated SPF 30 or greater.', 'Plastic', 1, 1),
('The Ordinary', 'Glycolic Acid 7% Toning Solution', 'Normal, Oily, Combination', 'Face', '2023-05-20', 8.70, 240.0, 1, 'None', 'Aqua (Water), Glycolic Acid, Rosa damascena flower water, Centaurea cyanus flower water, Aloe Barbadensis Leaf Water, Propanediol, Glycerin, Triethanolamine, Aminomethyl Propanol, Panax Ginseng Root Extract, Tasmannia Lanceolata Fruit/Leaf Extract, Aspartic Acid, Alanine, Glycine, Serine, Valine, Isoleucine, Proline, Threonine, Histidine, Phenylalanine, Glutamic Acid, Arginine, PCA, Sodium PCA, Sodium Lactate, Fructose, Glucose, Sucrose, Urea, Hexyl Nicotinate, Dextrin, Citric Acid, Polysorbate 20, Gellan Gum, Trisodium Ethylenediamine Disuccinate, Sodium Chloride, Hexylene Glycol, Potassium Sorbate, Sodium Benzoate, 1,2-Hexanediol, Caprylyl Glycol', 'Use ideally in the PM, no more frequently than once per day. After cleaning, saturate a cotton pad with the formula and sweep across face and neck. Avoid the eye contour and contact with eyes. Do not rinse off. Continue with additional skin treatments as needed. Contact of the product with the skin must be of limited frequency or duration.', 'Plastic', 1, 1),
('Fresh', 'Rose Deep Hydration Facial Toner', 'Normal, Dry, Combination, Oily', 'Face', '2023-06-30', 45.00, 250.0, 1, 'Rose', 'Aqua (Water), Glycerin, Butylene Glycol, Rosa Centifolia Flower, Rosa Damascena Flower Water, Rosa Multiflora Fruit Extract, Angelica Keiskei Extract, Rosa Damascena Flower Oil, Sodium Hyaluronate, PEG-150, PPG-26-Buteth-26, PEG-40 Hydrogenated Castor Oil, Sodium Citrate, Xanthan Gum, Citric Acid, BHT, Parfum (Fragrance), Phenoxyethanol, Citronellol, Geraniol', 'After cleansing, gently sweep over the face and neck with a cotton pad or fingertips. Can be used twice a day, morning and night.', 'Plastic', 1, 1),
('Kiehl''s', 'Calendula Herbal Extract Alcohol-Free Toner', 'Normal, Oily, Combination, Sensitive', 'Face', '2023-07-12', 24.00, 250.0, 1, 'Calendula', 'Aqua/Water, Propylene Glycol, Pentylene Glycol, Methylparaben, Disodium EDTA, Arctium Lappa Extract/Arctium Lappa Root Extract, Calendula Officinalis Extract/Calendula Officinalis Flower Extract, Calendula Officinalis Flower Extract, Saponaria Officinalis Extract/Saponaria Officinalis Leaf/Root Extract, Fragrance', 'After cleansing, pour a small amount of toner into the palm of your hand or saturate a cotton pad and apply to face.', 'Plastic', 1, 1),
('LANEIGE', 'Cream Skin Toner & Moisturizer', 'Normal, Dry, Combination', 'Face', '2023-08-18', 33.00, 150.0, 1, 'None', 'Water / Aqua / Eau, Butylene Glycol, Glycerin, Limnanthes Alba (Meadowfoam) Seed Oil, 1,2-Hexanediol, Polyglyceryl- 10 Stearate, Glyceryl Stearate Citrate, Sodium Stearoyl Glutamate, Inulin Lauryl Carbamate, Glyceryl Caprylate, Ethylhexylglycerin, Propanediol, Disodium EDTA, Camellia Sinensis Leaf Extract, Tocopherol', 'Apply after cleansing. Can be used as a toner or pat onto skin as a moisturizing treatment.', 'Plastic', 1, 1),
('Cosrx', 'AHA/BHA Clarifying Treatment Toner', 'All Skin Types', 'Face', '2023-09-25', 14.00, 150.0, 1, 'None', 'Mineral Water, Salix Alba (Willow) Bark Water, Pyrus Malus (Apple) Fruit Water, Butylene Glycol, 1,2-Hexanediol, Sodium Lactate, Glycolic Acid, Betaine Salicylate, Allantoin, Panthenol, Ethyl Hexanediol', 'After cleansing, soak a cotton pad and swipe a thin layer of the toner over the skin, avoiding the eye and mouth area. For daytime, follow with a broad-spectrum sunscreen rated SPF 30 or greater.', 'Plastic', 1, 1),
('La Mer', 'The Tonic', 'Normal, Oily, Dry', 'Face', '2023-10-04', 90.00, 200.0, 1, 'None', 'Declustered Water (-)\Aqua\Eau De-Structuree (-), Declustered Water (+)\Aqua\Eau De-Structuree (+), Algae (Seaweed) Extract, Glycerin, Butylene Glycol, Cucumis Sativus (Cucumber) Fruit Extract, Hamamelis Virginiana (Witch Hazel) Extract, Padina Pavonica Thallus Extract, Laminaria Saccharina Extract, Prunus Amygdalus Dulcis (Sweet Almond) Seed Extract, Sodium Hyaluronate, Magnesium Gluconate, Calcium Gluconate, Trehalose, Salicornia Herbacea Extract, Hydrolyzed Algin, Serine, Glycine, Lactobacillus Ferment, Tourmaline, Citric Acid, Sucrose, Pentylene Glycol, Xanthan Gum, Sodium Polyacrylate, Fragrance (Parfum), Disodium EDTA, Benzyl Salicylate, Butylphenyl Methylpropional, Limonene, Linalool, Potassium Sorbate, Phenoxyethanol', 'After cleansing, moisten a cotton pad and gently press onto face and neck.', 'Plastic', 1, 1),
('SK-II', 'Facial Treatment Clear Lotion', 'All Skin Types', 'Face', '2023-11-14', 76.00, 160.0, 1, 'None', 'Water, Galactomyces Ferment Filtrate, Butylene Glycol, Polysorbate 20, Glycerin, Sodium Hyaluronate, Peg-150, Cellulose Gum, Disodium Edta, Citric Acid, Salicylic Acid, Lactic Acid, Malic Acid, Sodium Citrate, Sodium Benzoate, Methylparaben', 'Soak a cotton pad and gently smooth onto face for 1 minute. Turn the cotton pad around and gently pat onto face and neck for another minute.', 'Plastic', 1, 1),
('Clinique', 'Clarifying Lotion 2', 'Combination Oily', 'Face', '2023-12-20', 17.00, 200.0, 1, 'None', 'Water, Alcohol Denat., Glycerin, Salicylic Acid, Hamamelis Virginiana (Witch Hazel), Menthol, Trehalose, Sodium Hyaluronate, Butylene Glycol, Sodium Hydroxide, Disodium Edta-Copper, Bht, Phenoxyethanol', 'Use twice a day, morning and night. Apply with a cotton ball, sweeping gently over face and neck. For external use only. Avoid eye area and lips.', 'Plastic', 1, 1),
('COSMEDIX', 'Purity Balance Exfoliating Prep Toner', 'Normal, Oily, Combination', 'Face', '2024-01-02', 40.00, 150.0, 1, 'None', 'Hamamelis Virginiana (Witch Hazel) Water, Alcohol Denat., Polysorbate 20, Salicylic Acid, Lactic Acid (L), Mandelic Acid (L), Malic Acid (L), Citric Acid, Tartaric Acid (L), Eucalyptus Globulus Leaf Oil, Mentha Piperita (Peppermint) Oil', 'After cleansing, gently mist over face. Use morning and/or evening. Can also be used throughout the day for additional moisture.', 'Plastic', 1, 1),
('Origins', 'United State Balancing Tonic', 'Normal, Oily, Combination', 'Face', '2024-02-15', 23.00, 150.0, 1, 'None', 'Water\Aqua\Eau, Lavandula Angustifolia (Lavender) Flower Water, Anthemis Nobilis (Chamomile) Flower Water, Alcohol Denat., Glycerin, Mentha Piperita (Peppermint) Leaf Water, Hamamelis Virginiana (Witch Hazel) Water, Citrus Aurantium Amara (Bitter Orange) Flower Water, Salicylic Acid, Origanum Vulgare Leaf Extract, Rosmarinus Officinalis (Rosemary) Leaf Extract, Lavandula Angustifolia (Lavender) Flower Extract, Citrus Limon (Lemon) Peel Extract, Echinacea Purpurea (Coneflower) Extract, Castanea Sativa (Chestnut) Seed Extract, Salvia Officinalis (Sage) Leaf Extract, Zingiber Officinale (Ginger) Root Extract, Cupressus Sempervirens (Cypress) Leaf Extract, Rosmarinus Officinalis (Rosemary) Leaf Oil, Mentha Piperita (Peppermint) Oil, Mentha Viridis (Spearmint) Leaf Oil, Citrus Medica Limonum (Lemon) Peel Oil, Litsea Cubeba Fruit Oil, Citral, Linalool, Geraniol, Limonene, Hamamelis Virginiana (Witch Hazel) Extract, Sodium Hyaluronate, Sodium Citrate, Polysorbate 20', 'After cleansing, sweep over skin with a cotton ball.', 'Plastic', 1, 1),
('Dr. Hauschka', 'Clarifying Toner', 'Normal, Oily, Combination', 'Face', '2024-03-30', 37.00, 100.0, 1, 'None', 'Water (Aqua), Alcohol, Anthyllis Vulneraria Extract, Calendula Officinalis Flower Extract, Tropaeolum Majus Flower/Leaf/Stem Extract, Aesculus Hippocastanum (Horse Chestnut) Bark Extract, Echinacea Pallida Extract, Hamamelis Virginiana (Witch Hazel) Bark/Leaf Extract, Bellis Perennis (Daisy) Flower Extract, Fragrance (Parfum), Citronellol, Geraniol, Linalool, Lactic Acid', 'After cleansing in the morning and evening, mist Clarifying Toner onto the face then gently press into the skin.', 'Glass', 1, 1);

SELECT * FROM TONER;
ALTER TABLE TONER RENAME COLUMN PRODUCT_NAME TO TONER_NAME;
ALTER TABLE TONER DROP COLUMN SKIN_TYPE;
ALTER TABLE TONER ADD COLUMN SKIN_TYPE VARCHAR(56);
ALTER TABLE TONER MODIFY COLUMN FRAGRANCE varchar(100);
ALTER TABLE TONER MODIFY COLUMN PRICE DOUBLE;

UPDATE TONER SET PRICE = 9.50 WHERE BRAND = 'Neutrogena';
UPDATE TONER SET SKIN_TYPE = 'Sensitive' WHERE TONER_NAME = 'Facial Spray with Aloe, Herbs and Rosewater';
UPDATE TONER SET FRAGRANCE = 'Lavender' WHERE BRAND = 'Origins';
UPDATE TONER SET ALCOHOL_FREE = 0 WHERE PRICE =37.00;
UPDATE TONER SET VOLUME_ML = 200.0 WHERE BRAND = 'Paula''s Choice';
UPDATE TONER SET TARGET_AREA = 'Face & Neck' WHERE TONER_NAME = 'Rose Deep Hydration Facial Toner';
UPDATE TONER SET IS_HYPOALLERGENIC = 0 WHERE PACKAGING_MATERIAL = 'Glass';
UPDATE TONER SET RECOMMENDED_USAGE = 'Apply twice daily for best results' WHERE PRICE = 23.00 ;
UPDATE TONER SET PACKAGING_MATERIAL = 'Plastic Bottle' WHERE BRAND = 'Cosrx';
UPDATE TONER SET IS_CRUELTY_FREE = 0 WHERE FRAGRANCE = 'None';
UPDATE TONER SET INGREDIENTS = 'Citric'  WHERE BRAND = 'Thayers';
UPDATE TONER SET RECOMMENDED_USAGE = 'Pat onto skin before moisturizing' WHERE BRAND = 'LANEIGE';
UPDATE TONER SET PRICE = 85.00 WHERE TONER_NAME = 'The Tonic' AND FRAGRANCE = 'None';
UPDATE TONER SET INGREDIENTS = 'Salicylic' WHERE BRAND = 'Clinique';
UPDATE TONER SET TARGET_AREA = 'Face & Eyes' WHERE PRICE = 40.00;


CREATE TABLE WINTER_WEAR (
    BRAND VARCHAR(50),
    ITEM_NAME VARCHAR(100),
    MATERIAL VARCHAR(100),
    COLOR VARCHAR(50),
    SIZE VARCHAR(20),
    GENDER CHAR(1),
    AGE_GROUP VARCHAR(20),
    SEASON VARCHAR(20),
    PRICE DECIMAL(10, 2),
    QUANTITY INT,
    IS_WATERPROOF BOOLEAN,
    IS_INSULATED BOOLEAN,
    HAS_HOOD BOOLEAN,
    DESCRIPTION TEXT
);

INSERT INTO WINTER_WEAR (BRAND, ITEM_NAME, MATERIAL, COLOR, SIZE, GENDER, AGE_GROUP, SEASON, PRICE, QUANTITY, IS_WATERPROOF, IS_INSULATED, HAS_HOOD, DESCRIPTION)
VALUES 
('The North Face', 'Men''s Thermoball Eco Jacket', 'Nylon', 'Black', 'L', 'M', 'Adult', 'Winter', 199.99, 50, 1, 1, 1, 'The North Face Men''s Thermoball Eco Jacket is a versatile mid-layer for any cold-weather adventure.'),
('Columbia', 'Women''s Benton Springs Full Zip Fleece Jacket', 'Polyester', 'Charcoal Heather', 'M', 'F', 'Adult', 'Winter', 39.99, 100, 0, 0, 0, 'The Columbia Women''s Benton Springs Full Zip Fleece Jacket is a soft and cozy layering piece perfect for chilly days.'),
('Patagonia', 'Kids'' Snow Pile Bibs', 'Polyester', 'Balkan Blue', 'S', 'U', 'Kids', 'Winter', 129.00, 30, 1, 1, 1, 'The Patagonia Kids'' Snow Pile Bibs provide waterproof and breathable protection for young adventurers.'),
('Arc''teryx', 'Men''s Cerium LT Hoody', 'Nylon', 'Anaconda', 'XL', 'M', 'Adult', 'Winter', 379.00, 20, 1, 1, 1, 'The Arc''teryx Men''s Cerium LT Hoody is a lightweight and packable down jacket for cold-weather activities.'),
('Canada Goose', 'Women''s Rossclair Parka', 'Polyester', 'Redwood', 'S', 'F', 'Adult', 'Winter', 995.00, 10, 1, 1, 1, 'The Canada Goose Women''s Rossclair Parka offers superior warmth and style for urban winter living.'),
('Marmot', 'Men''s PreCip Eco Jacket', 'Nylon', 'Cobalt Blue', 'M', 'M', 'Adult', 'Winter', 100.00, 80, 1, 0, 1, 'The Marmot Men''s PreCip Eco Jacket is a lightweight and waterproof shell for hiking and outdoor adventures.'),
('REI Co-op', 'Women''s Co-op Down Jacket', 'Nylon', 'Pine', 'L', 'F', 'Adult', 'Winter', 179.95, 60, 1, 1, 1, 'The REI Co-op Women''s Co-op Down Jacket offers excellent warmth-to-weight ratio and packability for cold weather.'),
('Burton', 'Kids'' Gore-Tex Stark Bib Pants', 'Polyester', 'True Black', 'XS', 'U', 'Kids', 'Winter', 219.95, 25, 1, 1, 0, 'The Burton Kids'' Gore-Tex Stark Bib Pants are fully waterproof and durable for all-day play in the snow.'),
('Mountain Hardwear', 'Men''s Exposure/2 Gore-Tex Paclite Plus Jacket', 'Nylon', 'Manta Grey', 'XXL', 'M', 'Adult', 'Winter', 299.00, 15, 1, 1, 1, 'The Mountain Hardwear Men''s Exposure/2 Gore-Tex Paclite Plus Jacket is a lightweight and breathable shell for alpine pursuits.'),
('Outdoor Research', 'Women''s Vigor Full-Zip Hoodie', 'Polyester', 'Night', 'M', 'F', 'Adult', 'Winter', 99.00, 40, 0, 0, 1, 'The Outdoor Research Women''s Vigor Full-Zip Hoodie provides warmth and comfort during cold-weather activities.'),
('Fjallraven', 'Kids'' Vidda Padded Trousers', 'Polyester', 'Deep Forest', '110', 'U', 'Kids', 'Winter', 109.95, 20, 1, 1, 0, 'The Fjallraven Kids'' Vidda Padded Trousers are durable and warm for winter adventures in the great outdoors.'),
('Smartwool', 'Men''s Merino 250 Baselayer Bottom', 'Merino Wool', 'Black', 'L', 'M', 'Adult', 'Winter', 100.00, 70, 0, 1, 0, 'The Smartwool Men''s Merino 250 Baselayer Bottom offers warmth and moisture-wicking properties for cold-weather activities.'),
('Icebreaker', 'Women''s 200 Oasis Long Sleeve Crewe', 'Merino Wool', 'Midnight Navy', 'M', 'F', 'Adult', 'Winter', 95.00, 90, 0, 1, 0, 'The Icebreaker Women''s 200 Oasis Long Sleeve Crewe is a versatile baselayer for all your winter adventures.'),
('Carhartt', 'Kids'' Active Jac Quilted Flannel Lined Jacket', 'Cotton', 'Carhartt Brown', 'XS', 'U', 'Kids', 'Winter', 59.99, 35, 0, 0, 1, 'The Carhartt Kids'' Active Jac Quilted Flannel Lined Jacket offers warmth and durability for outdoor play.'),
('Helly Hansen', 'Men''s HH LIFA Merino 1/2 Zip', 'Merino Wool', 'Black', 'XL', 'M', 'Adult', 'Winter', 110.00, 45, 0, 1, 0, 'The Helly Hansen Men''s HH LIFA Merino 1/2 Zip provides excellent moisture management and warmth for cold-weather activities.'),
('Obermeyer', 'Women''s Tuscany II Jacket', 'Polyester', 'Royal Blue', 'M', 'F', 'Adult', 'Winter', 279.00, 12, 1, 1, 1, 'The Obermeyer Women''s Tuscany II Jacket offers luxurious warmth and style for cold winter days in the city or on the slopes.');

SELECT * FROM WINTER_WEAR;
ALTER TABLE WINTER_WEAR RENAME COLUMN ITEM_NAME TO PRODUCT_NAME;
ALTER TABLE WINTER_WEAR DROP COLUMN COLOR;
ALTER TABLE WINTER_WEAR ADD COLUMN COLOR VARCHAR(56);
ALTER TABLE WINTER_WEAR MODIFY COLUMN BRAND varchar(100);
ALTER TABLE WINTER_WEAR MODIFY COLUMN PRICE DOUBLE;

UPDATE WINTER_WEAR SET PRICE = 210.00 WHERE PRODUCT_NAME = 'Men''s Thermoball Eco Jacket' AND BRAND = 'The North Face';
UPDATE WINTER_WEAR SET QUANTITY = 110 WHERE GENDER = 'F' AND AGE_GROUP = 'Adult';
UPDATE WINTER_WEAR SET IS_WATERPROOF = 0 WHERE MATERIAL = 'Polyester';
UPDATE WINTER_WEAR SET IS_INSULATED = 1 WHERE GENDER = 'U';
UPDATE WINTER_WEAR SET HAS_HOOD = 0 WHERE PRICE = 279.00;
UPDATE WINTER_WEAR SET SEASON = 'Cold' WHERE BRAND = 'REI Co-op';
UPDATE WINTER_WEAR SET MATERIAL = 'Gore-Tex' WHERE PRICE = 59.99;
UPDATE WINTER_WEAR SET COLOR = 'Navy' WHERE SIZE = 'M' AND AGE_GROUP = 'Kids';
UPDATE WINTER_WEAR SET DESCRIPTION = 'Waterproof and windproof' WHERE BRAND = 'Marmot';
UPDATE WINTER_WEAR SET PRICE = 80.00 WHERE PRODUCT_NAME = 'Women''s Benton Springs Full Zip Fleece Jacket';
UPDATE WINTER_WEAR SET QUANTITY = 50 WHERE SEASON = 'Winter';
UPDATE WINTER_WEAR SET GENDER = 'U' WHERE BRAND = 'Burton';
UPDATE WINTER_WEAR SET COLOR = 'Red' WHERE IS_INSULATED = 1;
UPDATE WINTER_WEAR SET DESCRIPTION = 'Lightweight and breathable' WHERE PRICE = 110.00;
UPDATE WINTER_WEAR SET AGE_GROUP = 'Youth' WHERE BRAND = 'Patagonia';


CREATE TABLE WASHING_MACHINE (
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    LOAD_CAPACITY_KG DECIMAL(5, 2),
    ENERGY_EFFICIENCY_CLASS VARCHAR(500),
    WASH_PROGRAM VARCHAR(100),
    SPIN_SPEED_RPM INT,
    COLOR VARCHAR(50),
    PRICE DECIMAL(10, 2),
    WARRANTY_MONTHS SMALLINT,
    IS_SMART_DEVICE BOOLEAN,
    IS_STEAM_FUNCTIONALITY BOOLEAN,
    HAS_CHILD_LOCK BOOLEAN,
    DIMENSIONS VARCHAR(50),
    DESCRIPTION TEXT
);

INSERT INTO WASHING_MACHINE (BRAND, MODEL_NAME, LOAD_CAPACITY_KG, ENERGY_EFFICIENCY_CLASS, WASH_PROGRAM, SPIN_SPEED_RPM, COLOR, PRICE, WARRANTY_MONTHS, IS_SMART_DEVICE, IS_STEAM_FUNCTIONALITY, HAS_CHILD_LOCK, DIMENSIONS, DESCRIPTION)
VALUES 
('Samsung', 'WW90K6410QX 9kg Ecobubble Washing Machine', 9.0, 'A', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, Eco Drum Clean', 1400, 'Graphite', 599.99, 24, 1, 1, 1, '600 x 850 x 550 mm', 'The Samsung WW90K6410QX Washing Machine features ecobubble technology for efficient cleaning and a variety of wash programs.'),
('Bosch', 'WAN28281GB Freestanding Washing Machine', 8.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, EcoSilence Drive', 1400, 'White', 449.00, 24, 1, 0, 1, '598 x 848 x 550 mm', 'The Bosch WAN28281GB Washing Machine offers energy-efficient washing with its EcoSilence Drive motor and multiple wash programs.'),
('LG', 'FH4U2JCN8 Smart Washing Machine', 10.5, 'A+++-40%', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, TurboWash 59, Steam', 1400, 'Steel', 699.00, 24, 1, 1, 1, '600 x 850 x 640 mm', 'The LG FH4U2JCN8 Washing Machine is a smart appliance with large capacity, turbo wash, and steam functions for superior cleaning.'),
('AEG', 'L6FBG141R Freestanding Washing Machine', 10.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, ProSense Technology', 1400, 'Red', 549.00, 24, 0, 0, 1, '600 x 850 x 575 mm', 'The AEG L6FBG141R Washing Machine features ProSense Technology for precise washing and care of fabrics.'),
('Whirlpool', 'FSCR90430 Supreme Care Washing Machine', 9.0, 'A+++-50%', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, FreshCare, 6th Sense', 1400, 'Silver', 799.00, 24, 1, 1, 1, '595 x 850 x 640 mm', 'The Whirlpool FSCR90430 Washing Machine offers supreme care for your clothes with its 6th Sense technology and FreshCare feature.'),
('Hotpoint', 'NM11946WCAUK Freestanding Washing Machine', 9.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, Anti-Stain', 1400, 'White', 279.00, 12, 0, 0, 1, '595 x 850 x 605 mm', 'The Hotpoint NM11946WCAUK Washing Machine features Anti-Stain technology for effective removal of tough stains.'),
('Indesit', 'IWC71252ECO Freestanding Washing Machine', 7.0, 'A++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, Eco Time', 1200, 'White', 209.00, 12, 0, 0, 1, '595 x 850 x 535 mm', 'The Indesit IWC71252ECO Washing Machine offers energy-efficient washing with its Eco Time feature.'),
('Siemens', 'WM14T492GB Freestanding Washing Machine', 9.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, iQdrive', 1400, 'White', 599.00, 24, 1, 0, 1, '600 x 850 x 590 mm', 'The Siemens WM14T492GB Washing Machine features iQdrive technology for quiet and efficient washing performance.'),
('Zanussi', 'ZWF91483WR Lindo300 Freestanding Washing Machine', 9.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, AquaFall', 1400, 'White', 299.00, 12, 0, 0, 1, '850 x 600 x 520 mm', 'The Zanussi ZWF91483WR Washing Machine offers efficient washing with its AquaFall technology.'),
('Haier', 'HW100-B14636 Freestanding Washing Machine', 10.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, ABT', 1400, 'White', 399.00, 24, 1, 0, 1, '850 x 595 x 600 mm', 'The Haier HW100-B14636 Washing Machine features ABT technology to prevent bacterial growth and ensure hygienic washing.'),
('Miele', 'WEG365 Freestanding Washing Machine', 9.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Power Wash, TwinDos', 1600, 'Lotus White', 899.00, 24, 1, 0, 1, '850 x 596 x 643 mm', 'The Miele WEG365 Washing Machine offers powerful washing performance with its Quick Power Wash and TwinDos technology.'),
('Beko', 'WTG841B2W Freestanding Washing Machine', 8.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, Aquawave', 1400, 'White', 229.00, 12, 0, 0, 1, '840 x 600 x 550 mm', 'The Beko WTG841B2W Washing Machine features Aquawave technology for gentle yet effective washing.'),
('Electrolux', 'EW6F4842AB Freestanding Washing Machine', 8.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, UltraMix', 1400, 'Black', 489.00, 24, 0, 0, 1, '850 x 600 x 568 mm', 'The Electrolux EW6F4842AB Washing Machine offers thorough cleaning with its UltraMix technology and a variety of wash programs.'),
('Hisense', 'WFU6012 Freestanding Washing Machine', 6.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, Smart Wash', 1200, 'White', 229.00, 12, 1, 0, 1, '850 x 595 x 495 mm', 'The Hisense WFU6012 Washing Machine features Smart Wash technology for efficient and convenient washing.'),
('Grundig', 'GWN48430CW Washing Machine', 8.0, 'A+++', 'Cotton, Synthetics, Delicates, Wool, Quick Wash, Steam Refresh', 1400, 'White', 349.00, 24, 1, 1, 1, '840 x 600 x 640 mm', 'The Grundig GWN48430CW Washing Machine offers steam refresh functionality for reducing wrinkles and odors in clothes.');

SELECT * FROM WASHING_MACHINE;
ALTER TABLE WINTER_WEAR RENAME COLUMN WARRANTY_MONTHS TO WARRANTY_YEAR;
ALTER TABLE WINTER_WEAR DROP COLUMN WASH_PROGRAM;
ALTER TABLE WINTER_WEAR ADD COLUMN WASH_PROGRAM VARCHAR(100);
ALTER TABLE WINTER_WEAR MODIFY COLUMN MODEL_NAME varchar(100);
ALTER TABLE WINTER_WEAR MODIFY COLUMN PRICE DOUBLE;
ALTER TABLE WINTER_WEAR MODIFY COLUMN ENERGY_EFFICIENCY_CLASS varchar(300);

UPDATE WASHING_MACHINE SET PRICE = 630.00 WHERE BRAND = 'Samsung';
UPDATE WASHING_MACHINE SET WARRANTY_MONTHS = 36 WHERE LOAD_CAPACITY_KG BETWEEN 8.0 AND 10.0;
UPDATE WASHING_MACHINE SET IS_SMART_DEVICE = 0 WHERE ENERGY_EFFICIENCY_CLASS = 'A';
UPDATE WASHING_MACHINE SET IS_STEAM_FUNCTIONALITY = 1 WHERE PRICE=349.00 ;
UPDATE WASHING_MACHINE SET HAS_CHILD_LOCK = 1 WHERE SPIN_SPEED_RPM = 1400;
UPDATE WASHING_MACHINE SET DIMENSIONS = '600 x 850 x 575 mm' WHERE BRAND = 'AEG';
UPDATE WASHING_MACHINE SET COLOR = 'Black' WHERE WARRANTY_MONTHS = 24;
UPDATE WASHING_MACHINE SET DESCRIPTION = 'Energy-efficient with various wash programs' WHERE BRAND = 'Bosch';
UPDATE WASHING_MACHINE SET WASH_PROGRAM = 'Wool, Quick Wash, Eco Time' WHERE PRICE =300.00;
UPDATE WASHING_MACHINE SET LOAD_CAPACITY_KG = 7.5 WHERE ENERGY_EFFICIENCY_CLASS = 'A++';
UPDATE WASHING_MACHINE SET ENERGY_EFFICIENCY_CLASS = 'A++' WHERE PRICE = 350.00;
UPDATE WASHING_MACHINE SET SPIN_SPEED_RPM = 1600 WHERE COLOR = 'White';
UPDATE WASHING_MACHINE SET WARRANTY_MONTHS = 36 WHERE IS_SMART_DEVICE = 1;
UPDATE WASHING_MACHINE SET WASH_PROGRAM = 'Cotton, Synthetics, Delicates' WHERE IS_STEAM_FUNCTIONALITY = 0;
UPDATE WASHING_MACHINE SET DIMENSIONS = '850 x 600 x 568 mm' WHERE BRAND = 'Electrolux';



CREATE TABLE FOOTWEAR (
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MATERIAL VARCHAR(100),
    COLOR VARCHAR(50),
    SIZE VARCHAR(10),
    GENDER ENUM('Male', 'Female', 'Unisex'),
    AGE_GROUP VARCHAR(20),
    STYLE VARCHAR(50),
    TYPE VARCHAR(50),
    PRICE DECIMAL(10, 2),
    QUANTITY INT,
    IS_WATERPROOF BOOLEAN,
    IS_BREATHABLE BOOLEAN,
    DESCRIPTION TEXT
);

INSERT INTO FOOTWEAR (BRAND, MODEL_NAME, MATERIAL, COLOR, SIZE, GENDER, AGE_GROUP, STYLE, TYPE, PRICE, QUANTITY, IS_WATERPROOF, IS_BREATHABLE, DESCRIPTION)
VALUES 
('Nike', 'Air Force 1', 'Leather', 'White', '10', 'Male', 'Adult', 'Sneakers', 'Casual', 100.00, 50, 0, 1, 'The Nike Air Force 1 is a classic sneaker with timeless style and comfort.'),
('Adidas', 'Ultra Boost', 'Primeknit', 'Black', '9', 'Male', 'Adult', 'Running Shoes', 'Performance', 180.00, 30, 0, 1, 'The Adidas Ultra Boost provides responsive cushioning and energy return for a smooth ride.'),
('Vans', 'Old Skool', 'Canvas', 'Black and White', '8', 'Unisex', 'Adult', 'Skate Shoes', 'Casual', 60.00, 40, 0, 1, 'The Vans Old Skool is a classic skate shoe known for its durability and iconic side stripe.'),
('Converse', 'Chuck Taylor All Star', 'Canvas', 'Red', '7', 'Female', 'Adult', 'Sneakers', 'Casual', 55.00, 25, 0, 1, 'The Converse Chuck Taylor All Star is a timeless sneaker that pairs well with any outfit.'),
('Puma', 'Suede Classic', 'Suede', 'Blue', '9', 'Male', 'Adult', 'Lifestyle Shoes', 'Casual', 70.00, 20, 0, 1, 'The Puma Suede Classic offers retro style and comfort with its soft suede upper and padded collar.'),
('New Balance', '990v5', 'Leather and Mesh', 'Gray', '11', 'Male', 'Adult', 'Running Shoes', 'Performance', 175.00, 35, 0, 1, 'The New Balance 990v5 provides stability and cushioning for long-distance runs.'),
('Reebok', 'Classic Leather', 'Leather', 'White', '8', 'Female', 'Adult', 'Lifestyle Shoes', 'Casual', 75.00, 15, 0, 1, 'The Reebok Classic Leather offers timeless style and comfort with its soft leather upper and cushioned sole.'),
('Timberland', '6-Inch Premium Waterproof Boots', 'Nubuck Leather', 'Yellow', '10', 'Male', 'Adult', 'Boots', 'Casual', 190.00, 20, 1, 1, 'The Timberland 6-Inch Premium Waterproof Boots provide rugged durability and waterproof protection for outdoor adventures.'),
('Dr. Martens', '1460 Smooth Leather Boots', 'Leather', 'Black', '9', 'Unisex', 'Adult', 'Boots', 'Casual', 150.00, 30, 0, 1, 'The Dr. Martens 1460 Smooth Leather Boots offer iconic style and durability with their smooth leather construction and signature air-cushioned sole.'),
('Skechers', 'Go Walk 5', 'Mesh', 'Navy', '8', 'Female', 'Adult', 'Walking Shoes', 'Comfort', 60.00, 25, 0, 1, 'The Skechers Go Walk 5 features lightweight and responsive cushioning for all-day comfort and support.'),
('Salomon', 'Speedcross 5', 'Mesh', 'Green', '10', 'Male', 'Adult', 'Trail Running Shoes', 'Performance', 130.00, 20, 1, 1, 'The Salomon Speedcross 5 offers aggressive grip and protection for trail running in all conditions.'),
('Under Armour', 'HOVR Phantom 2', 'Knit', 'Gray', '9', 'Male', 'Adult', 'Running Shoes', 'Performance', 150.00, 30, 0, 1, 'The Under Armour HOVR Phantom 2 features UA HOVR technology for a zero-gravity feel and energy return with every step.'),
('Brooks', 'Adrenaline GTS 21', 'Mesh', 'Blue', '8', 'Female', 'Adult', 'Running Shoes', 'Performance', 130.00, 25, 0, 1, 'The Brooks Adrenaline GTS 21 provides support and cushioning for overpronators, ensuring a smooth and stable ride.'),
('Merrell', 'Moab 2 Vent', 'Suede and Mesh', 'Brown', '10', 'Male', 'Adult', 'Hiking Shoes', 'Outdoor', 110.00, 35, 0, 1, 'The Merrell Moab 2 Vent offers breathability and traction for hiking in warm weather conditions.'),
('ASICS', 'GEL-Nimbus 23', 'Mesh', 'Black', '7', 'Female', 'Adult', 'Running Shoes', 'Performance', 150.00, 20, 0, 1, 'The ASICS GEL-Nimbus 23 features advanced cushioning and support for long-distance runners.'),
('Ecco', 'Soft 7', 'Leather', 'White', '9', 'Unisex', 'Adult', 'Casual Sneakers', 'Casual', 160.00, 20, 0, 1, 'The Ecco Soft 7 offers a modern and stylish design with premium leather and comfortable cushioning.');

SELECT * FROM FOOTWEAR;
SELECT STYLE FROM FOOTWEAR;
ALTER TABLE HANDBAGS RENAME COLUMN MODEL_NAME TO PRODUCT_NAME;
ALTER TABLE HANDBAGS DROP COLUMN COLOR;
ALTER TABLE HANDBAGS ADD COLUMN COLOR VARCHAR(56);
ALTER TABLE HANDBAGS MODIFY COLUMN STYLE varchar(100);
ALTER TABLE HANDBAGS MODIFY COLUMN PRICE DOUBLE;

UPDATE FOOTWEAR SET PRICE = 110.00 WHERE BRAND = 'Nike';
UPDATE FOOTWEAR SET QUANTITY = 40 WHERE MATERIAL = 'Primeknit';
UPDATE FOOTWEAR SET IS_WATERPROOF = 1 WHERE MODEL_NAME = 'Old Skool';
UPDATE FOOTWEAR SET COLOR = 'White' WHERE TYPE = 'Performance';
UPDATE FOOTWEAR SET DESCRIPTION = 'Classic skate shoe for all occasions' WHERE BRAND = 'Vans';
UPDATE FOOTWEAR SET SIZE = '9.5' WHERE GENDER = 'Male';
UPDATE FOOTWEAR SET GENDER = 'Unisex' WHERE BRAND = 'Reebok';
UPDATE FOOTWEAR SET STYLE = 'Athletic' WHERE QUANTITY > 25;
UPDATE FOOTWEAR SET TYPE = 'Casual' WHERE MATERIAL = 'Suede';
UPDATE FOOTWEAR SET AGE_GROUP = 'Teen' WHERE PRICE BETWEEN 50.00 AND 100.00;
UPDATE FOOTWEAR SET IS_BREATHABLE = 0 WHERE BRAND = 'Dr. Martens';
UPDATE FOOTWEAR SET DESCRIPTION = 'Supportive and stylish running shoes' WHERE BRAND = 'New Balance';
UPDATE FOOTWEAR SET QUANTITY = 50 WHERE COLOR = 'Blue';
UPDATE FOOTWEAR SET AGE_GROUP = 'Adult' WHERE TYPE = 'Boots';
UPDATE FOOTWEAR SET MATERIAL = 'Knit' WHERE PRICE = 140.00;


CREATE TABLE WALLET (
    WALLET_ID INT AUTO_INCREMENT PRIMARY KEY,
    BRAND VARCHAR(50),
    MODEL_NAME VARCHAR(100),
    MATERIAL VARCHAR(100),
    COLOR VARCHAR(50),
    GENDER CHAR(1),
    STYLE VARCHAR(50),
    COMPARTMENTS TINYINT,
    CARD_SLOTS TINYINT,
    COIN_POCKET BOOLEAN,
    ZIPPERED_COMPARTMENT BOOLEAN,
    RFID_PROTECTED BOOLEAN,
    PRICE DECIMAL(10, 2),
    QUANTITY INT,
    DESCRIPTION TEXT
);

INSERT INTO WALLET (BRAND, MODEL_NAME, MATERIAL, COLOR, GENDER, STYLE, COMPARTMENTS, CARD_SLOTS, COIN_POCKET, ZIPPERED_COMPARTMENT, RFID_PROTECTED, PRICE, QUANTITY, DESCRIPTION)
VALUES 
('Louis Vuitton', 'Monogram Canvas Zippy Wallet', 'Canvas and Leather', 'Brown', 'U', 'Zip-around', 2, 12, 1, 1, 1, 750.00, 10, 'The Louis Vuitton Monogram Canvas Zippy Wallet is a classic with ample card slots and a spacious interior.'),
('Gucci', 'GG Marmont Matelassé Leather Wallet', 'Leather', 'Black', 'F', 'Bifold', 2, 6, 1, 0, 1, 550.00, 15, 'The Gucci GG Marmont Matelassé Leather Wallet features the iconic GG motif with a quilted design and a convenient coin pocket.'),
('Prada', 'Saffiano Leather Continental Wallet', 'Leather', 'Navy Blue', 'F', 'Continental', 2, 10, 1, 0, 1, 670.00, 8, 'The Prada Saffiano Leather Continental Wallet offers sophistication and organization with its sleek design and multiple compartments.'),
('Burberry', 'Vintage Check and Leather Folding Wallet', 'Cotton and Leather', 'Beige', 'U', 'Folding', 2, 8, 1, 0, 0, 420.00, 12, 'The Burberry Vintage Check and Leather Folding Wallet features the iconic check pattern and a compact design for everyday use.'),
('Coach', 'Signature Coated Canvas Slim Envelope Wallet', 'Canvas and Leather', 'Brown', 'F', 'Slim Envelope', 1, 4, 0, 0, 1, 250.00, 20, 'The Coach Signature Coated Canvas Slim Envelope Wallet offers a modern and sleek design with signature branding.'),
('Louis Vuitton', 'Monogram Canvas Zippy Wallet', 'Canvas and Leather', 'Brown', 'U', 'Zip-around', 2, 12, 1, 1, 1, 750.00, 10, 'The Louis Vuitton Monogram Canvas Zippy Wallet is a classic with ample card slots and a spacious interior.'),
('Gucci', 'GG Marmont Matelassé Leather Wallet', 'Leather', 'Black', 'F', 'Bifold', 2, 6, 1, 0, 1, 550.00, 15, 'The Gucci GG Marmont Matelassé Leather Wallet features the iconic GG motif with a quilted design and a convenient coin pocket.'),
('Prada', 'Saffiano Leather Continental Wallet', 'Leather', 'Navy Blue', 'F', 'Continental', 2, 10, 1, 0, 1, 670.00, 8, 'The Prada Saffiano Leather Continental Wallet offers sophistication and organization with its sleek design and multiple compartments.'),
('Burberry', 'Vintage Check and Leather Folding Wallet', 'Cotton and Leather', 'Beige', 'U', 'Folding', 2, 8, 1, 0, 0, 420.00, 12, 'The Burberry Vintage Check and Leather Folding Wallet features the iconic check pattern and a compact design for everyday use.'),
('Coach', 'Signature Coated Canvas Slim Envelope Wallet', 'Canvas and Leather', 'Brown', 'F', 'Slim Envelope', 1, 4, 0, 0, 1, 250.00, 20, 'The Coach Signature Coated Canvas Slim Envelope Wallet offers a modern and sleek design with signature branding.'),
('Valentino', 'Rockstud Zip-Around Wallet', 'Leather', 'Red', 'F', 'Zip-around', 2, 12, 1, 1, 1, 750.00, 10, 'The Valentino Rockstud Zip-Around Wallet features iconic pyramid studs and a zip-around closure for security.'),
('Givenchy', 'Pandora Trifold Wallet', 'Leather', 'Pink', 'F', 'Trifold', 3, 10, 1, 0, 1, 850.00, 8, 'The Givenchy Pandora Trifold Wallet offers ample storage with multiple compartments and a stylish design');

SELECT * FROM WALLET;

ALTER TABLE WALLET RENAME COLUMN MODEL_NAME TO PRODUCT_NAME;
ALTER TABLE WALLET DROP COLUMN QUANTITY;
ALTER TABLE WALLET ADD COLUMN QUANTITY VARCHAR(56);
ALTER TABLE WALLET MODIFY COLUMN BRAND varchar(100);
ALTER TABLE WALLET MODIFY COLUMN PRICE DOUBLE;

UPDATE WALLET SET PRICE = 700.00 WHERE BRAND = 'Louis Vuitton';
UPDATE WALLET SET QUANTITY = 25 WHERE MATERIAL = 'Leather';
UPDATE WALLET SET RFID_PROTECTED = 0 WHERE COLOR = 'Beige';
UPDATE WALLET SET COLOR = 'Red' WHERE COMPARTMENTS = 2;
UPDATE WALLET SET DESCRIPTION = 'Compact and stylish design' WHERE BRAND = 'Burberry';
UPDATE WALLET SET CARD_SLOTS = 8 WHERE GENDER = 'F';
UPDATE WALLET SET ZIPPERED_COMPARTMENT = 1 WHERE COIN_POCKET=1 ;
UPDATE WALLET SET MATERIAL = 'Canvas' WHERE QUANTITY = 20;
UPDATE WALLET SET GENDER = 'M' WHERE PRICE = 850.00;
UPDATE WALLET SET PRICE = 2300.00 WHERE COLOR = 'Navy Blue';
UPDATE WALLET SET COMPARTMENTS = 3 WHERE BRAND = 'Givenchy';
UPDATE WALLET SET DESCRIPTION = 'Luxurious and elegant' WHERE BRAND = 'Prada';
UPDATE WALLET SET CARD_SLOTS = 15 WHERE PRICE = 750.00;
UPDATE WALLET SET QUANTITY = 30 WHERE COLOR = 'Black';
UPDATE WALLET SET PRICE = 400.00 WHERE MATERIAL = 'Cotton and Leather';


CREATE TABLE IDOLS (
    IDOL_ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME_IDOL VARCHAR(100),
    MATERIAL VARCHAR(100),
    COLOR VARCHAR(50),
    HEIGHT DECIMAL(5,2),
    WEIGHT DECIMAL(5,2),
    AGE INT,
    GENDER CHAR(1),
    RELIGION VARCHAR(50),
    PLACE_OF_ORIGIN VARCHAR(100),
    DATE_OF_CREATION DATE,
    IS_BROKEN BOOLEAN,
    PRICE DECIMAL(10,2),
    QUANTITY INT,
    DESCRIPTION_IDOL TEXT
);

INSERT INTO IDOLS (NAME_IDOL, MATERIAL, COLOR, HEIGHT, WEIGHT, AGE, GENDER, RELIGION, PLACE_OF_ORIGIN, DATE_OF_CREATION, IS_BROKEN, PRICE, QUANTITY, DESCRIPTION_IDOL) 
VALUES 
('Buddha', 'Marble', 'White', 24.5, 15.75, 2500, 'M', 'Buddhism', 'India', '1997-12-12', FALSE, 5000.00, 1, 'A beautiful marble statue of Buddha representing enlightenment and inner peace.'),
('Ganesha', 'Bronze', 'Brown', 18.0, 10.50, 500, 'M', 'Hinduism', 'India', '1998-11-11', FALSE, 3000.00, 3, 'A bronze sculpture of the Hindu deity Ganesha, remover of obstacles and lord of new beginnings.'),
('Athena', 'Marble', 'White', 30.0, 25.00, 2500, 'F', 'Greek Mythology', 'Greece', '1999-10-10', TRUE, 7000.00, 1, 'A stunning marble statue of Athena, the goddess of wisdom, courage, and warfare.'),
('Quetzalcoatl', 'Jade', 'Green', 22.0, 18.50, 1500, 'M', 'Aztec Religion', 'Mexico', '2001-09-09', FALSE, 4500.00, 2, 'A jade representation of Quetzalcoatl, the feathered serpent deity of ancient Mesoamerica.'),
('Kannon', 'Wood', 'Brown', 16.0, 12.00, 1200, 'F', 'Buddhism', 'Japan', '2002-08-08', FALSE, 2500.00, 2, 'A wooden sculpture of Kannon, the Buddhist goddess of mercy and compassion, revered in Japan.'),
('Venus de Milo', 'Marble', 'White', 73.0, 185.00, 100, 'F', 'Greek Mythology', 'Greece', '2003-07-07', TRUE, 10000.00, 1, 'A classical marble sculpture of Venus de Milo, the goddess of love and beauty, known for its missing arms.'),
('Tlaloc', 'Stone', 'Gray', 40.0, 120.00, 800, 'M', 'Aztec Religion', 'Mexico', '2004-06-06', FALSE, 6000.00, 1, 'A stone representation of Tlaloc, the Aztec god of rain, fertility, and water.'),
('Thor', 'Iron', 'Silver', 20.0, 40.00, 1500, 'M', 'Norse Mythology', 'Scandinavia', '2005-05-05', FALSE, 4000.00, 2, 'An iron statue of Thor, the Norse god of thunder, lightning, storms, and strength.'),
('Krishna', 'Brass', 'Golden', 15.0, 8.50, 3000, 'M', 'Hinduism', 'India', '2004-04-04', FALSE, 3500.00, 3, 'A brass idol of Krishna, the eighth avatar of the god Vishnu, known as a divine lover and a mischievous child.'),
('Anubis', 'Obsidian', 'Black', 18.0, 25.00, 3000, 'M', 'Ancient Egyptian Religion', 'Egypt', '2006-04-04', TRUE, 5500.00, 1, 'An obsidian sculpture of Anubis, the ancient Egyptian god of mummification and the afterlife, often depicted with a jackal head.'),
('Apollo', 'Marble', 'White', 25.0, 20.00, 2700, 'M', 'Greek Mythology', 'Greece', '2007-03-03', FALSE, 5000.00, 2, 'A marble statue of Apollo, the Greek god of music, poetry, prophecy, healing, and the sun.'),
('Kali', 'Bronze', 'Black', 17.0, 15.00, 2000, 'F', 'Hinduism', 'India', '2008-02-02', FALSE, 4500.00, 2, 'A bronze sculpture of Kali, the Hindu goddess of time, change, destruction, and empowerment, often associated with death and sexuality.'),
('Bastet', 'Lapis Lazuli', 'Blue', 12.0, 10.00, 2500, 'F', 'Ancient Egyptian Religion', 'Egypt', '2009-01-01', FALSE, 3800.00, 1, 'A lapis lazuli figurine of Bastet, the ancient Egyptian goddess of home, fertility, and childbirth, often depicted as a lioness or a woman with the head of a lioness.'),
('Lakshmi', 'Gold', 'Golden', 14.0, 7.00, 5000, 'F', 'Hinduism', 'India', '2010-09-07', FALSE, 6000.00, 1, 'A golden idol of Lakshmi, the Hindu goddess of wealth, fortune, and prosperity, worshipped for abundance and good luck.'),
('Zeus', 'Bronze', 'Golden', 28.0, 60.00, 3000, 'M', 'Greek Mythology', 'Greece', '2011-04-23', FALSE, 8000.00, 1, 'A magnificent bronze statue of Zeus, the king of the gods in Greek mythology, known for his power and authority.');
SELECT * FROM IDOLS;
ALTER TABLE IDOLS RENAME COLUMN MATERIAL TO IDOL_MATERIAL;
ALTER TABLE IDOLS DROP COLUMN QUANTITY;
ALTER TABLE IDOLS ADD COLUMN QUANTITY VARCHAR(56);
ALTER TABLE IDOLS MODIFY COLUMN COLOR varchar(100);
ALTER TABLE IDOLS MODIFY COLUMN PRICE DOUBLE;

UPDATE IDOLS SET PRICE = 5500.00 WHERE NAME_IDOL = 'Buddha';
UPDATE IDOLS SET QUANTITY = 4 WHERE IDOL_MATERIAL = 'Marble';
UPDATE IDOLS SET IS_BROKEN = TRUE WHERE COLOR = 'White';
UPDATE IDOLS SET COLOR = 'Red' WHERE HEIGHT = 18.0;
UPDATE IDOLS SET DESCRIPTION_IDOL = 'Ancient deity of wisdom' WHERE NAME_IDOL = 'Athena';
UPDATE IDOLS SET WEIGHT = 9.00 WHERE GENDER = 'M';
UPDATE IDOLS SET IS_BROKEN = FALSE WHERE RELIGION = 'Hinduism';
UPDATE IDOLS SET PLACE_OF_ORIGIN = 'Italy' WHERE PRICE = 7000.00;
UPDATE IDOLS SET GENDER = 'F' WHERE COLOR = 'Golden';
UPDATE IDOLS SET IDOL_MATERIAL = 'Silver' WHERE QUANTITY = 1;
UPDATE IDOLS SET DATE_OF_CREATION = '2024-10-25' WHERE GENDER = 'M';
UPDATE IDOLS SET DESCRIPTION_IDOL = 'Moon goddess' WHERE NAME_IDOL = 'Kali';
UPDATE IDOLS SET QUANTITY = 5 WHERE PRICE = 3500.00;
UPDATE IDOLS SET HEIGHT = 30.0 WHERE RELIGION = 'Greek Mythology';
UPDATE IDOLS SET WEIGHT = 70.00 WHERE NAME_IDOL = 'Zeus';

