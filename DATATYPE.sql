CREATE DATABASE DATATYPE1;
USE DATATYPE1;
CREATE TABLE PRACTICE(
PRESON_NAME char(200),
PERSON_ADDRESS varchar(1000),
IP_ADDRESS binary(50) ,
PERSON_CURRENTADDRESS varbinary(225),
PERSON_CHILDNAME tinytext,
PRSON_LETTER text,
PERSON_EXPERIENCE mediumtext,
PERSON_STORY longtext,
PERSON_KIDS BIT,
PERSON_KIDSAGE tinyint,
PERSON_ORIGINOFCOUNTRY_INDIA BOOL,
PERSON_KIDS7 boolean,
TRAIN_NUMBER     smallint,
TRAIN_PNR    mediumint,
PERSON_PHONENUMBER     int,
PERSON_TRANSACTION_ID   bigint,
PERSON_WEIGHT  float,
PERSON_TRAINPRICE double,
PERSON_HEIGHT  decimal,
DATE_OF_TRAIN date,
DATEANDTIMEOFTRAIN datetime,
TRAIN_DEPARTURER timestamp,
PERSON_BORNTIME time,
PERSON_BIRTHYEAR year
);
SHOW TABLES;
SELECT * FROM PRACTICE;
INSERT INTO PRACTICE VALUES ('SPURTHY', 'BANGALORE', '678923735MP', 'MUDHOL', 'ANVIT', 'LOVE LETTER', 'JOB EXPERIENCE', 'LIFE STORY', true, 8, TRUE, FALSE, 16535, 4719, 9108104, 1000049145 , 10.65, 960.00, 5.00, '2024-06-03', '2024-06-03 06:45:55', '2024-11-30 18:45:55', '08:30:29', 1997);
select * FROM PRACTICE;