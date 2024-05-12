drop DATABASE bank;

create DATABASE bankl;

use bank1;

show databases;
CREATE TABLE CUSTOMER_PERSONAL_INFO
    (
   	CUSTOMER_ID VARCHAR(5),
    	CUSTOMER_NAME VARCHAR(30);
          	DATE_OF_BIRTH DATE,
          	GUARDIAN_NAME VARCHAR(30),
	ADDRESS VARCHAR(50)
	CONTACT_NO BIGINT(10),
	MAIL_ID VARCHAR(30),
	GENDER CHAR(1),
	MARITAL_STATUS VARCHAR(10),
	IDENTIFICATION_DOC_TYPE VARCHAR(20),
              CITIZENSHIP VARCHAR(10),
              CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID)
         );
Show tables;
CREATE TABLE CUSTOMER_REFERENCE_INFO
             (
                CUSTOMER_ID VARCHAR(5),
                REFERENCE_ACC_NAME VARCHAR(20),
   REFERENCE_ACC_NAME BIGINT(16),
   REFERENCE_ACC_ADDRESS VARCHAR(50),
   RELATION VARCHAR(25),
   CONSTRAINT CUST_REF_INFO_PK PRIMARY KEY(CUSTOMER-ID),
   CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER-ID),
 );
Show tables;
CREATE TABLE BANK_INFO
(
    IFSC_CODE VARCHAR(15),
    BANK_NAME VARCHAR(25),
    BRANCH_NAME VARCHAR(25),
    CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
 );
CREATE TABLE ACCOUNT_INFO
(
ACCOUNT_NO BIGINT(16),
CUSTOMER_ID VARCHAR(5),
ACCOUNT_TYPE VARCHAR(10),
REGISTRATION_DATE DATE,
ACTIVATION_DATE DATE,
IFSC_CODE VARCHAR(10),
INTEREST DECIMAL(7,2),
CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(ACCOUNT_NO) REFERENCES CUSTOMER_ID
CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO) REFERENCES BANK_INFO
);

show tables;
INSERT INTO BANK_INFO(IFSC_CODE, BANK_NAME, BRANCH_NAME) VALUES(‘HDVL0012’, ‘HDFC’, VALASARAVAKKAM’);

Select * from bank_info;

INSERT INTO BANK_INFO(IFSC_CODE, BANK_NAME, BRANCH_NAME) VALUES( ‘SBITN0123’ , ‘SBI’ , ‘TNAGAR’ );

INSERT INTO BANK_INFO(IFSC_CODE, BANK_NAME, BRANCH_NAME) VALUES( ‘ICITN0232’ , ‘ICICI’ , ‘TNAGAR’ )

INSERT INTO BANK_INFO(IFSC_CODE, BANK_NAME, BRANCH_NAME) VALUES( ‘ICIPG0242’ , ‘ICICI’ , PERUNGUDI’);

INSERT INTO BANK_INFO(IFSC_CODE, BANK_NAME, BRANCH_NAME) VALUES(‘SBISD0113’ , ‘SBI’ , ‘SAIDAPET’ );
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID, CUSTOMER_NAME, DATE_OF BIRTH, GUARDIAN_NAME, ADDRESS , CONTACT_NO, MAIL_ID)
VALUES (‘C-001’ , ‘JOHN’, 1984-09-23’ , ‘NO.14,ST.MARKS ROAD,BANGLORE’ , ‘9976564767’ , JOHN_123@gmail.com’);




INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID, CUSTOMER_NAME, DATE_OF BIRTH, GUARDIAN_NAME, ADDRESS , CONTACT_NO, MAIL_ID)
VALUES(‘C-002’ , ‘JAMES’, 1982-08-23’ , ‘NO.18,ST.MARKS ROAD,BANGLORE’ , ‘8256564567’ , JAMES_321@gmail.com’
  
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID, CUSTOMER_NAME, DATE_OF BIRTH, GUARDIAN_NAME, ADDRESS , CONTACT_NO, MAIL_ID)
VALUES(‘C-003’ , ‘SUNITHA’, 1969-03-11’ , ‘NO.21, GM ROAD,CHENNAI’ , ‘8976567876’ , SUNITHA_123@gmail.com’

INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID, CUSTOMER_NAME, DATE_OF BIRTH, GUARDIAN_NAME, ADDRESS , CONTACT_NO, MAIL_ID)
VALUES(‘C-004’ , ‘RAMESH’, 1999-01-11’ , ‘NO.14,BORING ROAD,PATNA’ , ‘8766564767’ , RAMESH_123@gmail.com’

INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID, CUSTOMER_NAME, DATE_OF BIRTH, GUARDIAN_NAME, ADDRESS , CONTACT_NO, MAIL_ID)
VALUES(‘C-005’ , ‘ROHAN’, 1992-11-21’ , ‘NO.09,MH ROAD,BANGLORE’ , ‘9976569867’ , ROHAN_123@gmail.com’

Select * from CUSTOMER_PERSONAL_INFO;
