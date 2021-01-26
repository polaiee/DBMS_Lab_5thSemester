CREATE TABLE ACTOR( 
ACT_ID INTEGER PRIMARY KEY, 
ACT_NAME VARCHAR(20), 
ACT_GENDER CHAR(1));

CREATE TABLE DIRECTOR( 
DIR_ID INTEGER PRIMARY KEY, 
DIR_NAME VARCHAR(20),
DIR_PHONE INTEGER);

DESC DIRECTOR;

CREATE TABLE MOVIES(
MOV_ID INTEGER PRIMARY KEY, 
TITLE VARCHAR(20), 
YEAR INTEGER, 
LANG VARCHAR(20), 
DIR_ID INTEGER, 
FOREIGN KEY(DIR_ID) REFERENCES DIRECTOR(DIR_ID));

DESC MOVIES;

CREATE TABLE MOVIE_CAST( 
ACT_ID INTEGER, 
MOV_ID INTEGER, 
ROLE VARCHAR(20), 
PRIMARY KEY(ACT_ID,MOV_ID), 
FOREIGN KEY(ACT_ID) REFERENCES ACTOR(ACT_ID), 
FOREIGN KEY(MOV_ID) REFERENCES MOVIES(MOV_ID));

DESC MOVIE_CAST;

CREATE TABLE RATING( 
MOV_ID INTEGER PRIMARY KEY, 
REV VARCHAR(20), 
FOREIGN KEY(MOV_ID) REFERENCES MOVIES(MOV_ID));

DESC RATING;

QUERIES:
1.
SELECT MOV_TITLEFROM MOVIES M, DIRECTOR D
WHERE M.DIR_ID=D.DIR_ID AND D.DIR_NAME='HITCHCOCK';

2.
SELECT TITLE
FROM MOVIES M,MOVIE_CAST MC
WHERE M.MOV_ID=MC.MOV_ID AND ACT_ID IN (SELECT ACT_ID
FROM MOVIE_CAST GROUP BY ACT_ID
HAVING COUNT(ACT_ID)>1)
GROUP BY TITLE
HAVING COUNT(*)>1;

3.
SELECT ACT_NAME
FROM ACTOR A
JOIN MOVIE_CAST C
ON A.ACT_ID=C.ACT_ID
JOIN MOVIES M
ON C.MOV_ID=M.MOV_ID
WHERE M.YEAR NOT BETWEEN 2000 AND 2015;

4. 
SELECT TITLE,MAX(REV) 
FROM MOVIES 
INNER JOIN RATING USING (MOV_ID) 
GROUP BY TITLE 
HAVING MAX(REV)>0  ORDER BY TITLE;

5. 

UPDATE RATING 
SET REV=5 
WHERE MOV_ID IN (SELECT MOV_ID FROM MOVIES 
WHERE DIR_ID IN (SELECT DIR_ID FROM DIRECTOR 
WHERE DIR_NAME='STEVEN SPIELBERG'));

SELECT * FROM RATING;