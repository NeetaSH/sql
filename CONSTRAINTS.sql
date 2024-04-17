CREATE DATABASE BANK;
USE BANK;

CREATE TABLE BANK_INFO(
BANK_ID INT PRIMARY KEY,
BANK_NAME VARCHAR(145)  NOT NULL,
IFSC_CODE varchar(150) NOT NULL UNIQUE,
BRANCH_NAME varchar(50) ,
BRANCH_CODE INT 
);

SELECT * FROM BANK_INFO;
INSERT INTO BANK_INFO  VALUES (10, 'SBI', 'SBIM0000234' , 'MUDHOL', 020911);
INSERT INTO BANK_INFO  VALUES (20, 'ICICI', 'ICICI000233' , 'BANGALURU', 020911);
INSERT INTO BANK_INFO  VALUES (30, 'BOI', 'BOI2223333' , 'MYSORE', 020911);
INSERT INTO BANK_INFO  VALUES (40, 'BOB', 'BOB98U4J49' , 'GOKAK', 020911);
INSERT INTO BANK_INFO  VALUES (50, 'KARNATAKA', 'KARN0000543' , 'BGK' , 020911);


CREATE TABLE ACCOUNT_INFO(
ACCOUNT_ID INT PRIMARY KEY,
ACCOUNT_HOLDER_NAME VARCHAR(200) NOT NULL,
BANK_ID INT ,
ADDRESS varchar(200),
ACCOUNT_HOLDER_DOB DATE,
FOREIGN KEY (BANK_ID) REFERENCES BANK_INFO (BANK_ID) 
);

INSERT INTO ACCOUNT_INFO VALUES (10, 'ANVIT', 10 , 'SIDRAMESHWAR COLONY', '2023-08-15' );
INSERT INTO ACCOUNT_INFO VALUES (20, 'SIA', 20 , ' AKSHAY COLONY ', '2024-02-22' );
INSERT INTO ACCOUNT_INFO VALUES (30, 'AKSHAY', 30 , ' TEACHERS COLONY ', '1993-02-22' );
INSERT INTO ACCOUNT_INFO VALUES (40, 'SPOO', 40 , ' HUDKO COLONY ', '1988-09-27' );
INSERT INTO ACCOUNT_INFO VALUES (50, 'GEETA', 50 , ' BTM ', '1998-06-12' );

SELECT * FROM ACCOUNT_INFO;

SELECT * FROM BANK_INFO AS BK , ACCOUNT_INFO AS AC WHERE AC.BANK_ID = BK.BANK_ID ;

UPDATE BAG SET IS_WATERPROOF = 1 WHERE COLOR IN ('Yellow', 'Orange');

CREATE TABLE TRAVEL(
TRAVEL_ID INT NOT NULL UNIQUE,
DESTINATION VARCHAR(100),
DEPARTURE_DATE DATE,
RETURN_DATE DATE,
TRAVEL_AGENCY_ID INT primary KEY,
TRAVEL_COST INT 
);
INSERT INTO TRAVEL VALUES(1, 'BANGALORE',  '2024-09-12', '2024-09-20', 100, 2000);
INSERT INTO TRAVEL VALUES(2, 'MANGALORE',  '2024-08-11', '2024-08-21', 200, 3000);
INSERT INTO TRAVEL VALUES(3, 'HASAN', '2024-07-10', '2024-07-10', 300, 4000);
INSERT INTO TRAVEL VALUES(4, 'MYSORE',  '2024-05-16', '2024-05-25', 400, 5000);
INSERT INTO TRAVEL VALUES(5, 'PONDICHERY',  '2024-04-13', '2024-04-19', 500, 6000);

CREATE TABLE TRAVEL_AGENCY (
CUSTOMER_ID INT NOT NULL unique,
AGENCY_NAME VARCHAR(100),
CONTACT_EMAIL VARCHAR(100),
TRAVEL_AGENCY_COST INT ,
TRAVEL_AGENCY_ID INT ,
FOREIGN KEY (TRAVEL_AGENCY_ID) REFERENCES TRAVEL (TRAVEL_AGENCY_ID)
);

INSERT INTO TRAVEL_AGENCY VALUES (10 , 'SANJU', 'SANJU@GMAIL.COM', 1000, 100);
INSERT INTO TRAVEL_AGENCY VALUES (20 , 'NAVEEN', 'NAVEEN@GMAIL.COM', 900, 200);
INSERT INTO TRAVEL_AGENCY VALUES (30 , 'NEETU', 'NEETU@GMAIL.COM', 800, 300);
INSERT INTO TRAVEL_AGENCY VALUES (40 , 'SUMITRA', 'SUMITRA@GMAIL.COM', 700, 400);
INSERT INTO TRAVEL_AGENCY VALUES (50 , 'GANGA', 'GANGA@GMAIL.COM', 600, 500);

SELECT * FROM TRAVEL AS TR , TRAVEL_AGENCY AS TA WHERE TR.TRAVEL_AGENCY_ID=TA.TRAVEL_AGENCY_ID;

SELECT * FROM TRAVEL AS TR , TRAVEL_AGENCY AS TA WHERE TR.TRAVEL_COST = 5000 AND TA.TRAVEL_AGENCY_COST= 700;
SELECT * FROM TRAVEL WHERE TRAVEL_COST < 3000;
SELECT * FROM TRAVEL WHERE TRAVEL_COST > 3000;
SELECT * FROM TRAVEL AS TR , TRAVEL_AGENCY AS TA WHERE TR.TRAVEL_COST >= 2000 AND TA.TRAVEL_AGENCY_COST >600;
SELECT * FROM TRAVEL WHERE TRAVEL_COST >= 2000 ;
SELECT * FROM TRAVEL WHERE TRAVEL_COST <= 6000 ;


