CREATE DATABASE COLLEGE;
USE COLLEGE;

CREATE TABLE STUDENT( 
USN VARCHAR(10) PRIMARY KEY, 
SNAME VARCHAR(20), 
ADDRESS VARCHAR(20),
PHONE INTEGER,
GENDER CHAR(1));
DESC STUDENT;

CREATE TABLE SEMSEC(
SSID VARCHAR(10) PRIMARY KEY, 
SEM INTEGER, 
SEC CHAR(1));
DESC SEMSEC;

CREATE TABLE CLASS( 
USN VARCHAR(10) PRIMARY KEY,
SSID VARCHAR(10), 
FOREIGN KEY(USN) REFERENCES STUDENT(USN),
FOREIGN KEY(SSID) REFERENCES SEMSEC(SSID));

CREATE TABLE SUBJECT( 
SUBCODE VARCHAR(10) PRIMARY KEY, 
TITLE VARCHAR(20), 
SEM INTEGER, 
CREDITS INTEGER);

CREATE TABLE IAMARKS(
USN VARCHAR(10),
SUBCODE VARCHAR(10),
SSID VARCHAR(10),
TEST1 INTEGER, 
TEST2 INTEGER,
TEST3 INTEGER,
FINALIA INTEGER,
PRIMARY KEY(USN,SUBCODE,SSID),
FOREIGN KEY(USN) REFERENCES STUDENT(USN),
FOREIGN KEY(SUBCODE) REFERENCES SUBJECT(SUBCODE),
FOREIGN KEY(SSID) REFERENCES CLASS(SSID));

INSERT INTO STUDENT VALUES ('1BI13CS020','ANAND','BELAGAVI', 1233423,'M');
INSERT INTO STUDENT VALUES ('1BI13CS062','BABIITHA','BENGALURU',43123,'F');
INSERT INTO STUDENT VALUES ('1BI15CS101','CHETHAN','BENGALURU', 534234,'M');
INSERT INTO STUDENT VALUES ('1BI13CS066','DIVYA','MANGALURU',534432,'F');
INSERT INTO STUDENT VALUES ('1BI14CS010','EESHA','BENGALURU', 345456,'F');
INSERT INTO STUDENT VALUES ('1BI14CS032','GANESH','BENGALURU',574532,'M');
INSERT INTO STUDENT VALUES ('1BI14CS025','HARISH','BENGALURU', 235464,'M');
INSERT INTO STUDENT VALUES ('1BI15CS011','ISHA','TUMKUR', 764343,'F');
INSERT INTO STUDENT VALUES ('1BI15CS029','JOEY','DAVANGERE', 235653,'M');
INSERT INTO STUDENT VALUES ('1BI15CS045','KAVYA','BELLARY', 865434,'F');
INSERT INTO STUDENT VALUES ('1BI15CS091','MALINI','MANGALURU',235464,'F');
INSERT INTO STUDENT VALUES ('1BI16CS045','NEEL','KALBURGI', 856453,'M');
INSERT INTO STUDENT VALUES ('1BI16CS088','PARTHA','SHIMOGA', 234546,'M');
INSERT INTO STUDENT VALUES ('1BI16CS122','REEMA','CHIKAMAGALUR', 853333,'F');

SELECT * FROM STUDENT;

INSERT INTO SEMSEC VALUES ('CSE8A', 8,'A');
INSERT INTO SEMSEC VALUES ('CSE8B', 8,'B');
INSERT INTO SEMSEC VALUES ('CSE8C', 8,'C');
INSERT INTO SEMSEC VALUES ('CSE7A', 7,'A');
INSERT INTO SEMSEC VALUES ('CSE7B', 7,'B');
INSERT INTO SEMSEC VALUES ('CSE7C', 7,'C');
INSERT INTO SEMSEC VALUES ('CSE6A', 6,'A');
INSERT INTO SEMSEC VALUES ('CSE6B', 6,'B');
INSERT INTO SEMSEC VALUES ('CSE6C', 6,'C');
INSERT INTO SEMSEC VALUES ('CSE5A', 5,'A');
INSERT INTO SEMSEC VALUES ('CSE5B', 5,'B');
INSERT INTO SEMSEC VALUES ('CSE5C', 5,'C');
INSERT INTO SEMSEC VALUES ('CSE4A', 4,'A');
INSERT INTO SEMSEC VALUES ('CSE4B', 4,'B');
INSERT INTO SEMSEC VALUES ('CSE4C', 4,'C');
INSERT INTO SEMSEC VALUES ('CSE3A', 3,'A');
INSERT INTO SEMSEC VALUES ('CSE3B', 3,'B');
INSERT INTO SEMSEC VALUES ('CSE3C', 3,'C');
INSERT INTO SEMSEC VALUES ('CSE2A', 2,'A');
INSERT INTO SEMSEC VALUES ('CSE2B', 2,'B');
INSERT INTO SEMSEC VALUES ('CSE2C', 2,'C');
INSERT INTO SEMSEC VALUES ('CSE1A', 1,'A');
INSERT INTO SEMSEC VALUES ('CSE1B', 1,'B');
INSERT INTO SEMSEC VALUES ('CSE1C', 1,'C');

SELECT * FROM SEMSEC;

INSERT INTO CLASS VALUES ('1BI13CS020','CSE8A');
INSERT INTO CLASS VALUES ('1BI13CS062','CSE8A');
INSERT INTO CLASS VALUES ('1BI13CS066','CSE8B');
INSERT INTO CLASS VALUES ('1BI15CS101','CSE8C');
INSERT INTO CLASS VALUES ('1BI14CS010','CSE7A');
INSERT INTO CLASS VALUES ('1BI14CS025','CSE7A');
INSERT INTO CLASS VALUES ('1BI14CS032','CSE7A');
INSERT INTO CLASS VALUES ('1BI15CS011','CSE4A');
INSERT INTO CLASS VALUES ('1BI15CS029','CSE4A');
INSERT INTO CLASS VALUES ('1BI15CS045','CSE4B');
INSERT INTO CLASS VALUES ('1BI15CS091','CSE4C');
INSERT INTO CLASS VALUES ('1BI16CS045','CSE3A');
INSERT INTO CLASS VALUES ('1BI16CS088','CSE3B');
INSERT INTO CLASS VALUES ('1BI16CS122','CSE3C');

SELECT * FROM CLASS;

INSERT INTO SUBJECT VALUES ('10CS81','ACA', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS82','SSM', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS83','NM', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS84','CC', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS85','PW', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS71','OOAD', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS72','ECS', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS73','PTW', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS74','DWDM', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS75','JAVA', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS76','SAN', 7, 4);
INSERT INTO SUBJECT VALUES ('15CS51','ME', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS52','CN', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS53','DBMS', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS54','ATC', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS55','JAVA', 5, 3);
INSERT INTO SUBJECT VALUES ('15CS56','AI', 5, 3);
INSERT INTO SUBJECT VALUES ('15CS41','M4', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS42','SE', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS43','DAA', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS44','MPMC', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS45','OOC', 4, 3);
INSERT INTO SUBJECT VALUES ('15CS46','DC', 4, 3);
INSERT INTO SUBJECT VALUES ('15CS31','M3', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS32','ADE', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS33','DSA', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS34','CO', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS35','USP', 3, 3);
INSERT INTO SUBJECT VALUES ('15CS36','DMS', 3, 3);

SELECT * FROM SUBJECT;

INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1BI15CS101','10CS81','CSE8C', 15, 16, 18);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1BI15CS101','10CS82','CSE8C', 12, 19, 14);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1BI15CS101','10CS83','CSE8C', 19, 15, 20);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1BI15CS101','10CS84','CSE8C', 20, 16, 19);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1BI15CS101','10CS85','CSE8C', 15, 15, 12);

SELECT * FROM IAMARKS;
 
QUERIES:
1. 
 SELECT S.* 
FROM STUDENT S,SEMSEC SS,CLASS C 
WHERE S.USN=C.USN AND SS.SSID=C.SSID AND SS.SEM=4 AND SS.SEC='C';

2. 
SELECT SEM,SEC,GENDER,COUNT(GENDER) 
FROM STUDENT NATURAL JOIN CLASS NATURAL JOIN SEMSEC
GROUP BY SEM,SEC,GENDER;

3.
CREATE VIEW TEST1_1BI15CS101 AS 
SELECT USN,SUBCODE,TEST1 
FROM IAMARKS 
WHERE USN='1BI15CS101';

4. 
UPDATE IAMARKS 
SET FINALIA=(TEST1+TEST2+TEST3-LEAST(TEST1,TEST2,TEST3))/2;

SELECT * FROM IAMARKS;

5. 
SELECT I.USN,S.SEM,S.SEC,I.SUBCODE,
CASE 
WHEN FINALIA >= 17 AND FINALIA <= 20 THEN 'Outstanding' 
WHEN FINALIA >= 12 AND FINALIA <= 16 THEN 'Average'
ELSE 'Weak'
END AS CAT 
FROM IAMARKS I,CLASS C,SEM S
WHERE I.USN = C.USN AND C.SSID = S.SSID 
AND S.SEM = 8 
AND S.SEC IN ('A' , 'B', 'C');

