-- BASIC SELECT 

-- 1번
SELECT DEPARTMENT_NAME "학과 명", CATEGORY 계열
FROM TB_DEPARTMENT;

-- 2번
SELECT DEPARTMENT_NAME || '의 정원은 ' || CAPACITY || '명 입니다' AS "학과별 정원"
FROM TB_DEPARTMENT;

-- 3번
SELECT STUDENT_NAME 
FROM TB_STUDENT
WHERE ABSENCE_YN = 'Y'
AND DEPARTMENT_NO = 1
AND SUBSTR(STUDENT_SSN, 8, 1) = '2' ;

-- 4번
SELECT STUDENT_NAME 
FROM TB_STUDENT
WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');

-- 5번
SELECT DEPARTMENT_NAME, CATEGORY
FROM TB_DEPARTMENT
WHERE CAPACITY >= 20 AND CAPACITY <= 30;

--6번
SELECT PROFESSOR_NAME 
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL;

--7번
SELECT STUDENT_NAME 
FROM TB_STUDENT
WHERE DEPARTMENT_NO IS NULL;

--8번
SELECT CLASS_NO
FROM TB_CLASS
WHERE PREATTENDING_CLASS_NO IS NOT NULL;

--9번
SELECT DISTINCT(CATEGORY)
FROM TB_DEPARTMENT

--10번
SELECT STUDENT_NO, STUDENT_NAME, STUDENT_SSN
FROM TB_STUDENT
WHERE ABSENCE_YN = 'N'
AND EXTRACT(YEAR FROM ENTRANCE_DATE) = 2002
AND STUDENT_ADDRESS LIKE '%전주%';


------------------------------------------------------------------------------------


--ADDITIONAL SELECT 

--1번
SELECT STUDENT_NO, STUDENT_NAME, ENTRANCE_DATE
FROM TB_STUDENT
WHERE DEPARTMENT_NO = 002
ORDER BY ENTRANCE_DATE;

--2번
SELECT PROFESSOR_NAME, PROFESSOR_SSN 
FROM TB_PROFESSOR
WHERE LENGTH(PROFESSOR_NAME) != 3;

--3번
SELECT PROFESSOR_NAME, 
EXTRACT (YEAR FROM (TO_DATE( SUBSTR(PROFESSOR_SSN, 1, INSTR(PROFESSOR_SSN, '-') -1) , 'RRMMDD')
FRFROM TB_PROFESSOR























