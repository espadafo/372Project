--Drops
drop table customer cascade constraints;
drop table employee cascade constraints;
drop table orderline cascade constraints;
drop table orders cascade constraints;
drop table part cascade constraints;
drop table prod_part cascade constraints;
drop table product cascade constraints;
drop table sup_part cascade constraints;
drop table supplier cascade constraints;

--Create statements
CREATE TABLE EMPLOYEE -- works
(
    EMPLOYEEID INTEGER PRIMARY KEY,
    FIRSTNAME VARCHAR2(16),
    LASTNAME VARCHAR2(32),
    ADDRESS VARCHAR2(64),
    CITY VARCHAR2(32),
    STATE VARCHAR2(2),
    ZIP VARCHAR2(5),
    PHONE VARCHAR2(15),
    EMAIL VARCHAR2(32)
);

CREATE TABLE CUSTOMER -- works
(
    CUSTOMERID INTEGER PRIMARY KEY,
    EMPLOYEEID INTEGER,
    FIRSTNAME VARCHAR2(16),
    LASTNAME VARCHAR2(32),
    ADDRESS VARCHAR2(64),
    CITY VARCHAR2(32),
    STATE VARCHAR2(2),
    ZIP VARCHAR2(5),
    PHONE VARCHAR2(16),
    EMAIL VARCHAR2(32)
);

CREATE TABLE ORDERS -- works
(
    ORDERSID INTEGER PRIMARY KEY,
    CUSTOMERID INTEGER,
    ORDERSDATE DATE
);

CREATE TABLE ORDERLINE -- works
(
    ORDERLINEID INTEGER PRIMARY KEY,
	ORDERSID INTEGER,
    PRODUCTID INTEGER,
    QUANTITY INTEGER
);

CREATE TABLE PRODUCT -- works
(
    PRODUCTID INTEGER PRIMARY KEY,
    NAME VARCHAR2(32),
    DESCRIPTION VARCHAR2(128)
);

CREATE TABLE PROD_PART -- works
(
    PRODUCTID INTEGER,
    PARTID INTEGER
);

CREATE TABLE PART -- works
(
    PARTID INTEGER PRIMARY KEY,
    NAME VARCHAR2(32),
    DESCRIPTION VARCHAR2(128)
);

CREATE TABLE SUP_PART -- works
(
    PARTID INTEGER,
    SUPPLIERID INTEGER
);

CREATE TABLE SUPPLIER -- works
(
    SUPPLIERID INTEGER PRIMARY KEY,
    NAME VARCHAR2(32),
    MAINCONTACTFIRSTNAME VARCHAR2(16),
    MAINCONTACTLASTNAME VARCHAR2(32),
    MAINCONTACTEMAIL VARCHAR2(32),
    MAINCONTACTPHONE VARCHAR2(16),
    ADDRESS VARCHAR2(64),
    CITY VARCHAR2(32),
    STATE VARCHAR2(2),
    ZIP VARCHAR2(5),
    PHONE VARCHAR2(16),
    EMAIL VARCHAR2(32)
);

--Constraints
ALTER TABLE CUSTOMER
ADD CONSTRAINT CUSTOMER_EMPLOYEE_FK
FOREIGN KEY (EMPLOYEEID) REFERENCES EMPLOYEE;

ALTER TABLE ORDERS
ADD CONSTRAINT ORDERS_CUSTOMER_FK
FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER;

ALTER TABLE ORDERLINE
ADD CONSTRAINT ORDERLINE_ORDERS_FK
FOREIGN KEY (ORDERSID) REFERENCES ORDERS;

ALTER TABLE ORDERLINE
ADD CONSTRAINT ORDERLINE_PRODUCT_FK
FOREIGN KEY (PRODUCTID) REFERENCES PRODUCT;

ALTER TABLE PROD_PART
ADD CONSTRAINT PRODPART_PK PRIMARY KEY (PRODUCTID, PARTID);

ALTER TABLE SUP_PART
ADD CONSTRAINT SUPPART_PK PRIMARY KEY (PARTID, SUPPLIERID);

ALTER TABLE PROD_PART
ADD CONSTRAINT PRODPART_PRODUCT_FK
FOREIGN KEY (PRODUCTID) REFERENCES PRODUCT;

ALTER TABLE SUP_PART
ADD CONSTRAINT SUPPART_SUPPLIER_FK
FOREIGN KEY (SUPPLIERID) REFERENCES SUPPLIER;

ALTER TABLE PROD_PART
ADD CONSTRAINT PRODPART_PART_FK
FOREIGN KEY (PARTID) REFERENCES PART;

ALTER TABLE SUP_PART
ADD CONSTRAINT SUPPART_PART_FK
FOREIGN KEY (PARTID) REFERENCES PART;

--Inserts

INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (1,'John','Doe','123 Main St','Chicago','IL',60601,'(312) 555-1234','john.doe@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (2,'Jane','Smith','456 Oak St','Evanston','IL',60201,'(847) 555-5678','jane.smith@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (3,'David','Johnson','789 Elm St','Arlington Heights','IL',60004,'(847) 555-9012','david.johnson@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (4,'Amy','Lee','321 Walnut St','Schaumburg','IL',60173,'(847) 555-3456','amy.lee@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (5,'Mark','Brown','654 Maple St','Des Plaines','IL',60016,'(847) 555-7890','mark.brown@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (6,'Sara','Nguyen','987 Pine St','Rolling Meadows','IL',60008,'(847) 555-2345','sara.nguyen@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (7,'Michael','Chen','432 Birch St','Glenview','IL',60025,'(847) 555-6789','michael.chen@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (8,'Emily','Wu','876 Cedar St','Mount Prospect','IL',60056,'(847) 555-0123','emily.wu@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (9,'William','Li','345 Spruce St','Skokie','IL',60077,'(847) 555-4567','william.li@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (10,'Ashley','Park','678 Oakwood St','Buffalo Grove','IL',60089,'(847) 555-8901','ashley.park@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (11,'Kevin','Patel','901 Pinecrest Ave','Wilmette','IL',60091,'(847) 555-2345','kevin.patel@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (12,'Lisa','Sanchez','234 Oakwood Dr','Northbrook','IL',60062,'(847) 555-6789','lisa.sanchez@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (13,'Brandon','Kim','567 Cedar Ave','Winnetka','IL',60093,'(847) 555-0123','brandon.kim@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (14,'Michelle','Yang','890 Elmwood Rd','Highland Park','IL',60035,'(847) 555-4567','michelle.yang@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (15,'Daniel','Garcia','123 Oak St','Lake Forest','IL',60045,'(847) 555-8901','daniel.garcia@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (16,'Jessica','Chang','456 Pine Dr','Deerfield','IL',60015,'(847) 555-2345','jessica.chang@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (17,'Andrew','Shah','789 Cedar Rd','Barrington','IL',60010,'(847) 555-6789','andrew.shah@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (18,'Kelly','Li','321 Elm Ave','Wheeling','IL',60090,'(847) 555-0123','kelly.li@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (19,'Matthew','Lee','654 Birch Ln','Northfield','IL',60093,'(847) 555-4567','matthew.lee@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (20,'Amanda','Patel','987 Oak Rd','Glencoe','IL',60022,'(847) 555-8901','amanda.patel@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (21,'Ryan','Kim','432 Maple Ave','Wilmette','IL',60091,'(847) 555-2345','ryan.kim@email.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (22,'Janis','Pierce','4989 Grant Street','Libertyville','IL',60048,'(847) 555-3255','janis.pierce@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (23,'Danny','Marshall','4557 Hart Ridge Road','Wheaton','IL',60187,'(630) 555-3782','danny.marshall@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (24,'Gail','Miles','3635 Friendship Lane','Schaumburg','IL',60173,'(847) 555-8178','gail.miles@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (25,'Marlene','Cannon','1061 Farnum Road','Northbrook','IL',60062,'(847) 555-4242','marlene.cannon@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (26,'Denise','Russell','3906 Jones Street','Arlington Heights','IL',60004,'(847) 555-9639','denise.russell@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (27,'Annette','Patterson','2037 Illinois Avenue','Arlington Heights','IL',60005,'(847) 555-9869','annette.patterson@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (28,'Scott','Chapman','1573 Hannah Street','Chicago','IL',60631,'(773) 555-6827','scott.chapman@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (29,'Brett','Banks','3955 Madison Street','Oak Brook','IL',60523,'(630) 555-8123','brett.banks@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (30,'Kristen','Bishop','3835 Kuhl Avenue','Chicago','IL',60605,'(312) 555-4862','kristen.bishop@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (31,'Gary','Carpenter','2358 Wayback Lane','Des Plaines','IL',60016,'(847) 555-1635','gary.carpenter@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (32,'Alberta','McKenzie','2422 Oakmound Road','Elk Grove Village','IL',60007,'(847) 555-5594','alberta.mckenzie@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (33,'Darlene','Woods','2292 Godfrey Street','Barrington','IL',60010,'(847) 555-2157','darlene.woods@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (34,'Calvin','Bowman','2637 Wakefield Street','Chicago','IL',60657,'(773) 555-2039','calvin.bowman@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (35,'Darryl','Perkins','1146 Walnut Hill Drive','Aurora','IL',60502,'(630) 555-3349','darryl.perkins@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (36,'Neil','Cox','3852 Maple Lane','Libertyville','IL',60048,'(847) 555-2461','neil.cox@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (37,'Lynda','Garcia','4345 Green Hill Road','Chicago','IL',60607,'(312) 555-1425','lynda.garcia@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (38,'Marion','Hopkins','1372 South Avenue','Schaumburg','IL',60173,'(847) 555-5808','marion.hopkins@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (39,'Wallace','Horton','1244 Raccoon Run','Arlington Heights','IL',60004,'(847) 555-7825','wallace.horton@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (40,'Marvin','Park','2528 Stadium Drive','Naperville','IL',60540,'(630) 555-6229','marvin.park@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (41,'Jeffrey','Henderson','3618 Masonic Drive','Chicago','IL',60606,'(312) 555-3713','jeffrey.henderson@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (42,'Brooke','Clark','27 S 3rd St','Batavia','IL',60510,'(630) 555-9200','brooke.clark@example.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (43,'Jacquelyn','Reed','3824 S Wabash Ave','Chicago','IL',60653,'312-555-0105','jreed@gmail.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (44,'Carlos','Rodriguez','815 W Van Buren St','Chicago','IL',60607,'312-555-0106','crodriguez@gmail.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (45,'Kim','Nguyen','155 N Harbor Dr','Chicago','IL',60601,'312-555-0107','knguyen@gmail.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (46,'Jeremiah','Brown','222 E Pearson St','Chicago','IL',60611,'312-555-0108','jbrown@gmail.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (47,'Emily','Campbell','710 S Ashland Ave','Chicago','IL',60607,'312-555-0109','ecampbell@gmail.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (48,'Dante','Jackson','151 W Harrison St','Chicago','IL',60605,'312-555-0110','djackson@gmail.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (49,'Patricia','Nguyen','225 N Michigan Ave','Chicago','IL',60601,'312-555-0111','pnguyen@gmail.com');
INSERT INTO employee(employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (50,'Marcus','Hernandez','201 E Randolph St','Chicago','IL',60601,'312-555-0112','mhernandez@gmail.com');

INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (1,1,'John','Smith','123 Main St','Chicago','IL',60610,'(312) 555-1234','john.smith@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (2,1,'Jane','Doe','456 Oak Ave','Chicago','IL',60610,'(312) 555-5678','jane.doe@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (3,2,'Michael','Jackson','789 State St','Evanston','IL',60201,'(847) 555-9012','michael.jackson@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (4,3,'Kelly','Green','1010 Maple Dr','Glenview','IL',60025,'(847) 555-3456','kelly.green@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (5,4,'Robert','Johnson','1313 Mockingbird Ln','Schaumburg','IL',60193,'(847) 555-7890','robert.johnson@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (6,5,'Emily','Brown','1515 Grove St','Naperville','IL',60540,'(630) 555-2345','emily.brown@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (7,6,'James','Anderson','1717 Elm St','Des Plaines','IL',60016,'(847) 555-6789','james.anderson@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (8,7,'Alexis','Garcia','1919 Clark St','Aurora','IL',60504,'(630) 555-1234','alexis.garcia@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (9,8,'William','Davis','2121 Birchwood Dr','Elgin','IL',60120,'(847) 555-5678','william.davis@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (10,9,'Kim','Lee','2323 Lincoln Ave','Oak Park','IL',60302,'(708) 555-9012','kim.lee@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (11,10,'Christopher','Hall','2525 Michigan Ave','Skokie','IL',60076,'(847) 555-3456','christopher.hall@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (12,11,'Samantha','Allen','2727 Broadway St','Evanston','IL',60201,'(847) 555-7890','samantha.allen@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (13,12,'Nathan','Young','2929 Sunset Blvd','Winnetka','IL',60093,'(847) 555-2345','nathan.young@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (14,13,'Sophia','Lopez','3131 Willow Rd','Northbrook','IL',60062,'(847) 555-6789','sophia.lopez@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (15,14,'Benjamin','Hernandez','3333 Lake St','Chicago','IL',60610,'(312) 555-1234','benjamin.hernandez@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (16,15,'Ava','Gonzalez','3535 Clark St','Evanston','IL',60201,'(847) 555-5678','ava.gonzalez@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (17,16,'Jacob','Smith','3737 Maple Dr','Glenview','IL',60025,'(847) 555-9012','jacob.smith@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (18,17,'Olivia','Taylor','3939 Grove St','Naperville','IL',60540,'(630) 555-3456','olivia.taylor@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (19,18,'Ethan','Moore','4141 Elm St','Des Plaines','IL',60016,'(847) 555-7890','ethan.moore@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (20,19,'Mia','Jackson','4343 Clark St','Aurora','IL',60504,'(630) 555-1234','mia.jackson@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (21,4,'Annabelle','Jones','3389 Holden Street','Chicago','IL',60607,'(312) 654-3210','ajones@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (22,4,'Jacob','Smith','2936 Dogwood Lane','Oak Lawn','IL',60453,'(708) 555-9800','jacob.smith@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (23,4,'Samantha','Robinson','3837 Grant Street','Schaumburg','IL',60193,'(847) 555-1243','sam.robinson@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (24,5,'Benjamin','Garcia','4467 Angus Road','Chicago','IL',60606,'(312) 555-0846','bgarcia@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (25,5,'Kayla','Carter','2522 Prospect Valley Road','Glenview','IL',60025,'(847) 555-7263','kaylac@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (26,5,'Justin','Clark','2464 Circle Drive','Elk Grove Village','IL',60007,'(847) 555-4819','justin.clark@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (27,5,'Isabella','Parker','2745 Whitetail Lane','Chicago','IL',60606,'(312) 555-3812','isabella@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (28,5,'Matthew','Lewis','2515 Mill Street','Mount Prospect','IL',60056,'(847) 555-9477','mlewis@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (29,5,'Ashley','Anderson','2219 Cambridge Drive','Arlington Heights','IL',60005,'(847) 555-3722','aanderson@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (30,6,'Alexis','Hill','2399 Watson Street','Elk Grove Village','IL',60007,'(847) 555-9258','alexis.hill@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (31,6,'Liam','Mitchell','2728 Hillcrest Lane','Oak Brook','IL',60523,'(630) 555-7369','liam.mitchell@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (32,6,'Aria','Turner','2813 Maple Street','Schaumburg','IL',60193,'(847) 555-1872','ariatu@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (33,6,'Logan','Adams','2242 Lincoln Street','Palatine','IL',60067,'(847) 555-3650','logan.adams@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (34,6,'Elizabeth','Rodriguez','4402 Maxwell Street','Chicago','IL',60607,'(312) 555-4861','erodriguez@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (35,6,'David','Campbell','3887 Poplar Avenue','Chicago','IL',60606,'(312) 555-2371','dcampbell@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (36,6,'Victoria','Collins','4713 Cherry Camp Road','Chicago','IL',60606,'(312) 555-8341','victoriac@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (37,6,'Oliver','Baker','3272 Corpening Drive','Chicago','IL',60606,'(312) 555-4321','obaker@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (38,6,'Abigail','James','1873 Irving Park Road','Chicago','IL',60613,'(312) 555-9812','abigail.james@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (39,7,'William','Peterson','3150 Badger Pond Lane','Schaumburg','IL',60193,'(847) 555-0684','william.peterson@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (40,7,'Emily','Gray','2768 Adams Avenue','Chicago','IL',60606,'(312) 555-1412','emily.gray@example.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (41,1,'Olivia','Hughes','4799 Zimmerman Lane','Oak Lawn','IL',60453,'(708) 906-2533','Olivia.Hughes@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (42,2,'Henry','Bennett','2958 Sherwood Circle','Niles','IL',60714,'(847) 894-2464','Henry.Bennett@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (43,3,'Samantha','Williams','4874 Robinson Court','Park Ridge','IL',60068,'(847) 425-0843','Samantha.Williams@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (44,4,'William','Phillips','3753 John Street','Des Plaines','IL',60016,'(847) 749-1195','William.Phillips@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (45,5,'Grace','Ramirez','4134 Wildwood Street','Elk Grove Village','IL',60007,'(847) 891-2468','Grace.Ramirez@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (46,6,'Oliver','Gonzalez','1628 Clark Street','Evanston','IL',60201,'(847) 864-5915','Oliver.Gonzalez@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (47,7,'Emily','Campbell','4253 Zappia Drive','Glenview','IL',60025,'(847) 729-1287','Emily.Campbell@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (48,8,'Mason','Parker','1147 Florence Street','Highland Park','IL',60035,'(847) 432-7648','Mason.Parker@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (49,9,'Ella','Evans','1964 Victoria Court','Lake Forest','IL',60045,'(847) 234-6772','Ella.Evans@gmail.com');
INSERT INTO customer(customerID,employeeID,firstName,lastName,address,city,state,zip,phone,email) VALUES (50,10,'Jacob','Watson','2177 Grant Street','Lincolnshire','IL',60069,'(847) 883-1199','Jacob.Watson@gmail.com');

INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (1,'ABC Inc.','John','Doe','johndoe@abcinc.com','(312) 555-1212','123 Main St','Chicago','IL',60601);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (2,'XYZ Corp.','Jane','Smith','janesmith@xyzcorp.com','(847) 555-1212','456 Oak Ave','Evanston','IL',60201);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (3,'ACME Corp.','Bob','Johnson','bobjohnson@acmecorp.com','(708) 555-1212','789 Elm St','Oak Park','IL',60301);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (4,'Acme Products','Jack','Jones','jackjones@acmeproducts.com','(312) 555-1212','345 Maple St','Chicago','IL',60602);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (5,'Global Suppliers','Emily','Brown','emilybrown@globalsuppliers.com','(847) 555-1212','789 Oak St','Evanston','IL',60202);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (6,'Green Products','Olivia','Taylor','oliviataylor@greenproducts.com','(312) 555-1212','123 Elm St','Chicago','IL',60603);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (7,'Global Imports','James','Smith','jamessmith@globalimports.com','(847) 555-1212','456 Maple Ave','Evanston','IL',60203);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (8,'ABC Importers','Karen','Johnson','karenjohnson@abcimporters.com','(708) 555-1212','789 Pine St','Oak Park','IL',60302);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (9,'XYZ Suppliers','Brian','Smith','briansmith@xyzsuppliers.com','(312) 555-1212','345 Oak Ave','Chicago','IL',60604);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (10,'ACME Distributors','Chris','Miller','chrismiller@acmedistributors.com','(847) 555-1212','123 Pine St','Evanston','IL',60204);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (11,'ABC Distributors','Emma','Smith','emmasmith@abcdistributors.com','(312) 555-1212','456 Pine St','Chicago','IL',60605);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (12,'Global Products','Mia','Johnson','miajohnson@globalproducts.com','(847) 555-1212','789 Maple Ave','Evanston','IL',60205);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (13,'Green Suppliers','Aiden','Taylor','aidentaylor@greensuppliers.com','(312) 555-1212','345 Elm St','Chicago','IL',60606);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (14,'ABC Products','Mila','Smith','milasmith@abcproducts.com','(847) 555-1212','123 Oak St','Evanston','IL',60206);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (15,'Green Corp.','Luke','Johnson','lukejohnson@greencorp.com','(708) 555-1212','456 Pine St','Oak Park','IL',60303);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (16,'XYZ Importers','Avery','Miller','averymiller@xyzimporters.com','(312) 555-1212','789 Pine St','Chicago','IL',60607);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (17,'ACME Suppliers','Ethan','Smith','ethansmith@acmesuppliers.com','(847) 555-1212','345 Maple Ave','Evanston','IL',60207);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (18,'ABC Suppliers','Harper','Johnson','harperjohnson@abcsuppliers.com','(312) 555-1212','123 Oak Ave','Chicago','IL',60608);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (19,'Great Lakes Bicycle Co.','John','Smith','john@greatlakesbicycle.com','(847) 555-1234','123 Main St.','Libertyville','IL',60048);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (20,'Bicycles Etc.','Samantha','Rodriguez','samantha@bicyclesetc.com','(847) 555-5678','456 Elm St.','Mundelein','IL',60060);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (21,'Bike Connection','David','Lee','david@bikeconnection.com','(847) 555-9012','789 Oak St.','Lake Zurich','IL',60047);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (22,'Bike Wheels and Stuff','Emily','Johnson','emily@bikewheelsandstuff.com','(847) 555-3456','321 Cedar St.','Highland Park','IL',60035);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (23,'Kozy''s Cyclery','Michael','Nguyen','michael@kozyscyclery.com','(847) 555-7890','111 Maple Ave.','Lake Forest','IL',60045);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (24,'North Shore Pro Bikes','Sarah','Kim','sarah@northshoreprobikes.com','(847) 555-2345','222 Pine St.','Northbrook','IL',60062);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (25,'Trek Bicycle Store','Tyler','Brown','tyler@trekbicyclestore.com','(847) 555-6789','333 Birch St.','Wilmette','IL',60091);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (26,'Performance Bicycle','Emma','Wilson','emma@performancebicycle.com','(847) 555-0123','444 Spruce St.','Vernon Hills','IL',60061);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (27,'Wheel Werks','Olivia','Moore','olivia@wheelwerks.com','(847) 555-4567','555 Walnut St.','Crystal Lake','IL',60014);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (28,'Schaumburg Bikes','Daniel','Taylor','daniel@schaumburgbikes.com','(847) 555-8901','666 Pine St.','Schaumburg','IL',60193);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (29,'The Bike Haven','Sophia','Anderson','sophia@thebikehaven.com','(847) 555-2345','777 Cedar St.','McHenry','IL',60050);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (30,'Roscoe Village Bikes','Ethan','Perez','ethan@roscoevillagebikes.com','(847) 555-6789','888 Elm St.','Chicago','IL',60618);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (31,'Johnny Sprocket','Ava','Gonzalez','ava@johnnysprockets.com','(847) 555-0123','999 Maple Ave.','Chicago','IL',60647);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (32,'Village CycleSport','Jackson','Mitchell','jackson@villagecyclesport.com','(847) 555-4567','555 Oak St.','Arlington Heights','IL',60004);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (33,'Johnny Sprockets','Riley','Perez','riley@johnnysprockets.com','(847) 555-8901','444 Elm St.','Evanston','IL',60201);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (34,'Lakeshore Cyclery','Sofia','Turner','sofia@lakeshorecyclery.com','(847) 555-2345','333 Cedar St.','Chicago','IL',60657);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (35,'Bike Supply Co','David','Brown','david@bikesupply.com','(312) 555-5555','123 Main St','Chicago','IL',60601);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (36,'Cycle Works','Maggie','Perez','maggie@cycleworks.com','(773) 555-5555','456 Elm St','Chicago','IL',60602);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (37,'The Bike Shop','Mike','Wang','mike@thebikeshop.com','(847) 555-5555','789 Oak St','Evanston','IL',60201);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (38,'Two Wheels','Tina','Kim','tina@twowheels.com','(312) 555-5555','1010 Lake St','Oak Park','IL',60301);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (39,'Gearhead Cycles','Aaron','Wu','aaron@gearheadcycles.com','(630) 555-5555','1212 Main St','Naperville','IL',60540);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (40,'Pro Bikes','Lisa','Rossi','lisa@probikes.com','(312) 555-5555','333 State St','Chicago','IL',60603);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (41,'Speedy Cyclist','Eric','Chen','eric@speedycyclist.com','(847) 555-5555','456 Main St','Evanston','IL',60202);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (42,'The Pedal Pusher','Monica','Liu','monica@thepedalpusher.com','(630) 555-5555','789 Elm St','Oak Brook','IL',60523);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (43,'Wheel and Sprocket','Jack','Patel','jack@wheelandsprocket.com','(312) 555-5555','444 State St','Chicago','IL',60604);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (44,'Bike Connection','Jennifer','Chang','jennifer@bikeconnection.com','(847) 555-5555','777 Lake St','Evanston','IL',60203);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (45,'Bike Doctor','Jason','Kim','jason@bikedoctor.com','(312) 555-5555','888 Main St','Chicago','IL',60605);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (46,'Bike Haven','Rachel','Lee','rachel@bikehaven.com','(630) 555-5555','1000 State St','Naperville','IL',60563);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (47,'Bike N'' More','John','Park','john@bikenmore.com','(847) 555-5555','222 Oak St','Evanston','IL',60204);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (48,'Cycle Path','Grace','Kim','grace@cyclepath.com','(312) 555-5555','333 Elm St','Chicago','IL',60606);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (49,'Rapid Transit Cycleshop','Adam','Wong','adam@rapidtransitcycleshop.com','(630) 555-5555','555 Main St','Naperville','IL',60564);
INSERT INTO supplier(supplierID,name,mainContactFirstName,mainContactLastName,mainContactEmail,mainContactPhone,address,city,state,zip) VALUES (50,'Spokes Bikes','Cindy','Chen','cindy@spokesbikes.com','(847) 555-5555','444 Oak St','Evanston','IL',60205);

INSERT INTO part(partid,name,description) VALUES ('01','Chain','10-speed chain for road bikes');
INSERT INTO part(partid,name,description) VALUES ('02','Tire','700x23c high-performance tire');
INSERT INTO part(partid,name,description) VALUES ('03','Brake Pad','Disc brake pads for Shimano');
INSERT INTO part(partid,name,description) VALUES ('04','Tube','27.5 inch inner tube');
INSERT INTO part(partid,name,description) VALUES ('05','Cassette','10-speed cassette for road bikes');
INSERT INTO part(partid,name,description) VALUES ('06','Bottom Bracket','Threaded bottom bracket for road bikes');
INSERT INTO part(partid,name,description) VALUES ('07','Chainring','53-tooth chainring for road bikes');
INSERT INTO part(partid,name,description) VALUES ('08','Handlebar Tape','Cushioned handlebar tape in black');
INSERT INTO part(partid,name,description) VALUES ('09','Seatpost','Carbon fiber seatpost');
INSERT INTO part(partid,name,description) VALUES ('10','Derailleur Hanger','Derailleur hanger for Scott road bikes');
INSERT INTO part(partid,name,description) VALUES ('11','Headset','Threaded headset for road bikes');
INSERT INTO part(partid,name,description) VALUES ('12','Brake Cable','Stainless steel brake cable');
INSERT INTO part(partid,name,description) VALUES ('13','Shift Cable','Stainless steel shift cable');
INSERT INTO part(partid,name,description) VALUES ('14','Brake Lever','Drop bar brake lever for road bikes');
INSERT INTO part(partid,name,description) VALUES ('15','Stem','Aluminum stem for road bikes');
INSERT INTO part(partid,name,description) VALUES ('16','Front Derailleur','Shimano 105 front derailleur');
INSERT INTO part(partid,name,description) VALUES ('17','Rear Derailleur','Shimano 105 rear derailleur');
INSERT INTO part(partid,name,description) VALUES ('18','Chain Tool','Multi-tool with chain breaker');
INSERT INTO part(partid,name,description) VALUES ('19','Chain Lubricant','Wet chain lubricant for rainy conditions');
INSERT INTO part(partid,name,description) VALUES ('20','Wheelset','Carbon fiber wheelset for road bikes');
INSERT INTO part(partid,name,description) VALUES ('21','Battery','CR2032 battery for bike computer');
INSERT INTO part(partid,name,description) VALUES ('22','Power Meter','Dual-sided power meter for Shimano cranks');
INSERT INTO part(partid,name,description) VALUES ('23','Bar End Plug','Black bar end plugs for drop handlebars');
INSERT INTO part(partid,name,description) VALUES ('24','Saddle','Leather saddle for road bikes');
INSERT INTO part(partid,name,description) VALUES ('25','Pedal','Clipless pedals with SPD cleats');
INSERT INTO part(partid,name,description) VALUES ('26','Brake Caliper','Disc brake caliper for Shimano');
INSERT INTO part(partid,name,description) VALUES ('27','Cable Housing','Shimano brake and shift cable housing');
INSERT INTO part(partid,name,description) VALUES ('28','Grip Tape','Cushioned grip tape for flat bars');
INSERT INTO part(partid,name,description) VALUES ('29','Derailleur Cable','Stainless steel derailleur cable');
INSERT INTO part(partid,name,description) VALUES ('30','Brake Rotor','CenterLock brake rotor for Shimano');
INSERT INTO part(partid,name,description) VALUES ('31','Wheel Skewer','Quick-release skewer for road bikes');
INSERT INTO part(partid,name,description) VALUES ('32','Bar End Shifter','Shimano bar end shifters');
INSERT INTO part(partid,name,description) VALUES ('33','Chainstay Protector','Black chainstay protector');
INSERT INTO part(partid,name,description) VALUES ('34','Computer Mount','Handlebar mount for bike computer');
INSERT INTO part(partid,name,description) VALUES ('35','Water Bottle Cage','Carbon fiber water bottle cage');
INSERT INTO part(partid,name,description) VALUES ('36','Brake Hose','Hydraulic brake hose for Shimano');
INSERT INTO part(partid,name,description) VALUES ('37','Pedal Cleat','Shimano SPD-SL pedal cleat');
INSERT INTO part(partid,name,description) VALUES ('38','Seat Clamp','Aluminum seatpost clamp');
INSERT INTO part(partid,name,description) VALUES ('39','Fork','Carbon fiber fork for road bikes');
INSERT INTO part(partid,name,description) VALUES ('40','Headset Spacer','10mm headset spacer in black');
INSERT INTO part(partid,name,description) VALUES ('41','Derailleur Pulley','Ceramic derailleur pulley set');
INSERT INTO part(partid,name,description) VALUES ('42','Chain Catcher','Chain catcher for road bikes');
INSERT INTO part(partid,name,description) VALUES ('43','Crank Arm','Shimano 105 crank arm');
INSERT INTO part(partid,name,description) VALUES ('44','Brake Lever Hood','Black brake lever hood for Shimano');
INSERT INTO part(partid,name,description) VALUES ('45','Spoke','14-gauge black spokes');
INSERT INTO part(partid,name,description) VALUES ('46','Rim Tape','700c rim tape');
INSERT INTO part(partid,name,description) VALUES ('47','Carbon Fiber Bottle','500ml carbon fiber water bottle');
INSERT INTO part(partid,name,description) VALUES ('48','Bar End Mirror','Handlebar mounted rearview mirror');
INSERT INTO part(partid,name,description) VALUES ('49','Brake Bleed Kit','Shimano hydraulic brake bleed kit');
INSERT INTO part(partid,name,description) VALUES ('50','Wheel Truing Stand','Portable wheel truing stand');

INSERT INTO sup_part(partID,supplierID) VALUES ('01',1);
INSERT INTO sup_part(partID,supplierID) VALUES ('01',2);
INSERT INTO sup_part(partID,supplierID) VALUES ('02',3);
INSERT INTO sup_part(partID,supplierID) VALUES ('02',4);
INSERT INTO sup_part(partID,supplierID) VALUES ('03',5);
INSERT INTO sup_part(partID,supplierID) VALUES ('04',6);
INSERT INTO sup_part(partID,supplierID) VALUES ('04',7);
INSERT INTO sup_part(partID,supplierID) VALUES ('04',8);
INSERT INTO sup_part(partID,supplierID) VALUES ('05',9);
INSERT INTO sup_part(partID,supplierID) VALUES ('05',10);
INSERT INTO sup_part(partID,supplierID) VALUES ('06',11);
INSERT INTO sup_part(partID,supplierID) VALUES ('06',12);
INSERT INTO sup_part(partID,supplierID) VALUES ('07',13);
INSERT INTO sup_part(partID,supplierID) VALUES ('08',14);
INSERT INTO sup_part(partID,supplierID) VALUES ('09',15);
INSERT INTO sup_part(partID,supplierID) VALUES ('09',16);
INSERT INTO sup_part(partID,supplierID) VALUES ('10',17);
INSERT INTO sup_part(partID,supplierID) VALUES ('11',18);
INSERT INTO sup_part(partID,supplierID) VALUES ('11',19);
INSERT INTO sup_part(partID,supplierID) VALUES ('11',20);
INSERT INTO sup_part(partID,supplierID) VALUES ('12',21);
INSERT INTO sup_part(partID,supplierID) VALUES ('12',22);
INSERT INTO sup_part(partID,supplierID) VALUES ('12',23);
INSERT INTO sup_part(partID,supplierID) VALUES ('13',24);
INSERT INTO sup_part(partID,supplierID) VALUES ('14',25);
INSERT INTO sup_part(partID,supplierID) VALUES ('15',26);
INSERT INTO sup_part(partID,supplierID) VALUES ('15',27);
INSERT INTO sup_part(partID,supplierID) VALUES ('16',28);
INSERT INTO sup_part(partID,supplierID) VALUES ('17',29);
INSERT INTO sup_part(partID,supplierID) VALUES ('18',30);
INSERT INTO sup_part(partID,supplierID) VALUES ('19',31);
INSERT INTO sup_part(partID,supplierID) VALUES ('20',32);
INSERT INTO sup_part(partID,supplierID) VALUES ('20',33);
INSERT INTO sup_part(partID,supplierID) VALUES ('21',34);
INSERT INTO sup_part(partID,supplierID) VALUES ('22',35);
INSERT INTO sup_part(partID,supplierID) VALUES ('23',36);
INSERT INTO sup_part(partID,supplierID) VALUES ('24',37);
INSERT INTO sup_part(partID,supplierID) VALUES ('25',38);
INSERT INTO sup_part(partID,supplierID) VALUES ('26',39);
INSERT INTO sup_part(partID,supplierID) VALUES ('27',40);
INSERT INTO sup_part(partID,supplierID) VALUES ('27',41);
INSERT INTO sup_part(partID,supplierID) VALUES ('28',42);
INSERT INTO sup_part(partID,supplierID) VALUES ('29',43);
INSERT INTO sup_part(partID,supplierID) VALUES ('30',44);
INSERT INTO sup_part(partID,supplierID) VALUES ('31',45);
INSERT INTO sup_part(partID,supplierID) VALUES ('32',46);
INSERT INTO sup_part(partID,supplierID) VALUES ('32',47);
INSERT INTO sup_part(partID,supplierID) VALUES ('33',48);
INSERT INTO sup_part(partID,supplierID) VALUES ('34',49);
INSERT INTO sup_part(partID,supplierID) VALUES ('35',50);

INSERT INTO product(productID,name,description) VALUES (1,'Road Bike','Lightweight road bike with carbon fiber frame');
INSERT INTO product(productID,name,description) VALUES (2,'Mountain Bike','Full suspension mountain bike for technical trails');
INSERT INTO product(productID,name,description) VALUES (3,'Cruiser Bike','Comfortable cruiser bike for casual riding');
INSERT INTO product(productID,name,description) VALUES (4,'Folding Bike','Foldable bike for easy transport and storage');
INSERT INTO product(productID,name,description) VALUES (5,'City Bike','Urban commuter bike with built-in lights and fenders');
INSERT INTO product(productID,name,description) VALUES (6,'Electric Bike','Electric assist bike with powerful motor and long range battery');
INSERT INTO product(productID,name,description) VALUES (7,'Cyclocross Bike','All-terrain bike for cyclocross racing and off-road adventures');
INSERT INTO product(productID,name,description) VALUES (8,'Gravel Bike','Gravel bike with wide tires and endurance geometry');
INSERT INTO product(productID,name,description) VALUES (9,'Kids'' Bike','Kids'' bike with adjustable seat and handlebars');
INSERT INTO product(productID,name,description) VALUES (10,'Tandem Bike','Tandem bike for two riders');
INSERT INTO product(productID,name,description) VALUES (11,'BMX Bike','BMX bike for trick riding and freestyle');
INSERT INTO product(productID,name,description) VALUES (12,'Road Bike Shoes','Road cycling shoes with carbon soles and secure closures');
INSERT INTO product(productID,name,description) VALUES (13,'Mountain Bike Shoes','Mountain biking shoes with grippy soles and toe protection');
INSERT INTO product(productID,name,description) VALUES (14,'Cycling Gloves','Full finger gloves for cold weather cycling');
INSERT INTO product(productID,name,description) VALUES (15,'Cycling Shorts','Padded shorts for long distance cycling comfort');
INSERT INTO product(productID,name,description) VALUES (16,'Cycling Jersey','Moisture-wicking jersey with rear pockets for storage');
INSERT INTO product(productID,name,description) VALUES (17,'Cycling Socks','Lightweight socks for cycling in warm weather');
INSERT INTO product(productID,name,description) VALUES (18,'Water Bottle Cage','Lightweight and durable water bottle cage for bike frame');
INSERT INTO product(productID,name,description) VALUES (19,'Bike Lock','Heavy-duty bike lock for theft prevention');
INSERT INTO product(productID,name,description) VALUES (20,'Bike Rack','Hitch mount bike rack for easy transportation');
INSERT INTO product(productID,name,description) VALUES (21,'Bike Pump','Compact bike pump with built-in gauge');
INSERT INTO product(productID,name,description) VALUES (22,'Bike Light Set','Front and rear bike lights for nighttime visibility');
INSERT INTO product(productID,name,description) VALUES (23,'Bike Helmet','Adjustable bike helmet for safety and comfort');
INSERT INTO product(productID,name,description) VALUES (24,'Bike Computer','Wireless bike computer for tracking speed, distance ,and more');
INSERT INTO product(productID,name,description) VALUES (25,'Bike Bell','Loud and clear bike bell for alerting pedestrians and other riders');
INSERT INTO product(productID,name,description) VALUES (26,'Flat Pedals','Durable and grippy flat pedals for casual riding');
INSERT INTO product(productID,name,description) VALUES (27,'Clipless Pedals','Clipless pedals for efficient power transfer');
INSERT INTO product(productID,name,description) VALUES (28,'Bike Tool Kit','Compact and comprehensive bike tool kit for maintenance and repairs');
INSERT INTO product(productID,name,description) VALUES (29,'Chain Lube','High-performance chain lubricant for smooth shifting and extended chain life');
INSERT INTO product(productID,name,description) VALUES (30,'Tire Levers','Set of three tire levers for easy removal and installation of tires');
INSERT INTO product(productID,name,description) VALUES (31,'Bike Stand','Adjustable bike stand for easy maintenance and repairs');
INSERT INTO product(productID,name,description) VALUES (32,'Bike Trailer','Single or double bike trailer for carrying cargo or children');
INSERT INTO product(productID,name,description) VALUES (33,'Bike Bag','Waterproof bike bag for carrying clothes or gear');
INSERT INTO product(productID,name,description) VALUES (34,'Bike Fenders','Durable plastic fenders for keeping mud and water off the rider');
INSERT INTO product(productID,name,description) VALUES (35,'Bike Mirror','Adjustable bike mirror for improved visibility and safety');
INSERT INTO product(productID,name,description) VALUES (36,'Bike Phone Mount','Secure phone mount for navigation or music playback while riding');
INSERT INTO product(productID,name,description) VALUES (37,'Bike Chain','High-quality chain for smooth shifting and extended chain life');
INSERT INTO product(productID,name,description) VALUES (38,'Bike Seat','Sleek and comfortable bike seat for long rides');
INSERT INTO product(productID,name,description) VALUES (39,'Bike Grips','Soft and ergonomic bike grips for comfortable handling');
INSERT INTO product(productID,name,description) VALUES (40,'Bike Pedal Straps','Durable and adjustable pedal straps for secure pedaling');
INSERT INTO product(productID,name,description) VALUES (41,'Bike Trainer','Indoor bike trainer for virtual riding and fitness training');
INSERT INTO product(productID,name,description) VALUES (42,'Bike Shoes Covers','Water-resistant shoe covers for cold weather cycling');
INSERT INTO product(productID,name,description) VALUES (43,'Bike Cleaning Kit','Comprehensive bike cleaning kit for a sparkling clean ride');
INSERT INTO product(productID,name,description) VALUES (44,'Bike Panniers','Durable and spacious bike panniers for carrying gear or groceries');
INSERT INTO product(productID,name,description) VALUES (45,'Bike Horn','Loud and attention-grabbing bike horn for alerting others');
INSERT INTO product(productID,name,description) VALUES (46,'Bike Handlebars','Ergonomic and lightweight bike handlebars for improved control');
INSERT INTO product(productID,name,description) VALUES (47,'Racing Saddle','Lightweight and durable racing saddle');
INSERT INTO product(productID,name,description) VALUES (48,'Mountain Bike Saddle','Comfortable saddle for mountain bike riding');
INSERT INTO product(productID,name,description) VALUES (49,'Bicycle Pump','Compact and lightweight pump for on-the-go repairs');
INSERT INTO product(productID,name,description) VALUES (50,'Bike Lock','Heavy duty bike lock for secure storage');

INSERT INTO prod_part(productID,partID) VALUES (1,'01');
INSERT INTO prod_part(productID,partID) VALUES (1,'02');
INSERT INTO prod_part(productID,partID) VALUES (1,'03');
INSERT INTO prod_part(productID,partID) VALUES (2,'04');
INSERT INTO prod_part(productID,partID) VALUES (2,'05');
INSERT INTO prod_part(productID,partID) VALUES (2,'06');
INSERT INTO prod_part(productID,partID) VALUES (3,'07');
INSERT INTO prod_part(productID,partID) VALUES (3,'08');
INSERT INTO prod_part(productID,partID) VALUES (3,'09');
INSERT INTO prod_part(productID,partID) VALUES (4,'10');
INSERT INTO prod_part(productID,partID) VALUES (4,'11');
INSERT INTO prod_part(productID,partID) VALUES (4,'12');
INSERT INTO prod_part(productID,partID) VALUES (5,'13');
INSERT INTO prod_part(productID,partID) VALUES (5,'14');
INSERT INTO prod_part(productID,partID) VALUES (5,'15');
INSERT INTO prod_part(productID,partID) VALUES (6,'16');
INSERT INTO prod_part(productID,partID) VALUES (6,'17');
INSERT INTO prod_part(productID,partID) VALUES (6,'18');
INSERT INTO prod_part(productID,partID) VALUES (7,'19');
INSERT INTO prod_part(productID,partID) VALUES (7,'20');
INSERT INTO prod_part(productID,partID) VALUES (7,'21');
INSERT INTO prod_part(productID,partID) VALUES (8,'22');
INSERT INTO prod_part(productID,partID) VALUES (8,'23');
INSERT INTO prod_part(productID,partID) VALUES (8,'24');
INSERT INTO prod_part(productID,partID) VALUES (9,'25');
INSERT INTO prod_part(productID,partID) VALUES (9,'26');
INSERT INTO prod_part(productID,partID) VALUES (9,'27');
INSERT INTO prod_part(productID,partID) VALUES (10,'28');
INSERT INTO prod_part(productID,partID) VALUES (10,'29');
INSERT INTO prod_part(productID,partID) VALUES (10,'30');
INSERT INTO prod_part(productID,partID) VALUES (11,'31');
INSERT INTO prod_part(productID,partID) VALUES (11,'32');
INSERT INTO prod_part(productID,partID) VALUES (11,'33');
INSERT INTO prod_part(productID,partID) VALUES (12,'34');
INSERT INTO prod_part(productID,partID) VALUES (12,'35');
INSERT INTO prod_part(productID,partID) VALUES (12,'36');
INSERT INTO prod_part(productID,partID) VALUES (13,'37');
INSERT INTO prod_part(productID,partID) VALUES (13,'38');
INSERT INTO prod_part(productID,partID) VALUES (13,'39');
INSERT INTO prod_part(productID,partID) VALUES (14,'40');
INSERT INTO prod_part(productID,partID) VALUES (14,'41');
INSERT INTO prod_part(productID,partID) VALUES (14,'42');
INSERT INTO prod_part(productID,partID) VALUES (15,'43');
INSERT INTO prod_part(productID,partID) VALUES (15,'44');
INSERT INTO prod_part(productID,partID) VALUES (15,'45');
INSERT INTO prod_part(productID,partID) VALUES (16,'46');
INSERT INTO prod_part(productID,partID) VALUES (16,'47');
INSERT INTO prod_part(productID,partID) VALUES (16,'48');
INSERT INTO prod_part(productID,partID) VALUES (17,'49');
INSERT INTO prod_part(productID,partID) VALUES (17,'50');


INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (1,1,'20-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (2,2,'20-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (3,3,'19-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (4,4,'19-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (5,5,'18-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (6,6,'17-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (7,7,'16-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (8,8,'15-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (9,9,'14-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (10,10,'13-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (11,11,'12-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (12,12,'11-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (13,13,'10-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (14,14,'09-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (15,15,'08-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (16,16,'07-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (17,17,'06-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (18,18,'05-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (19,19,'04-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (20,20,'03-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (21,21,'02-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (22,22,'01-APR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (23,23,'31-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (24,24,'30-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (25,25,'29-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (26,26,'28-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (27,27,'27-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (28,28,'26-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (29,29,'25-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (30,30,'24-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (31,31,'23-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (32,32,'22-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (33,33,'21-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (34,34,'20-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (35,35,'19-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (36,36,'18-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (37,37,'17-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (38,38,'16-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (39,39,'15-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (40,40,'14-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (41,41,'13-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (42,42,'12-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (43,43,'11-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (44,44,'10-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (45,45,'09-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (46,46,'08-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (47,47,'07-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (48,48,'06-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (49,49,'05-MAR-23');
INSERT INTO ORDERS(ORDERSID,customerID,ORDERSDate) VALUES (50,50,'04-MAR-23');

INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (1,1,2,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (2,1,5,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (3,1,7,4);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (4,2,1,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (5,2,9,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (6,2,12,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (7,2,14,3);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (8,3,3,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (9,3,5,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (10,4,4,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (11,4,5,3);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (12,4,8,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (13,4,10,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (14,4,12,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (15,5,1,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (16,5,2,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (17,5,4,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (18,5,7,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (19,6,2,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (20,6,3,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (21,6,9,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (22,6,10,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (23,6,11,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (24,6,13,3);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (25,7,1,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (26,7,2,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (27,7,3,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (28,7,5,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (29,8,1,3);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (30,8,3,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (31,8,5,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (32,9,2,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (33,9,3,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (34,9,5,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (35,9,6,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (36,9,9,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (37,9,12,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (38,10,2,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (39,10,5,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (40,10,9,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (41,10,10,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (42,11,4,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (43,11,6,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (44,11,8,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (45,12,1,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (46,12,2,2);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (47,12,3,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (48,12,4,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (49,12,5,1);
INSERT INTO ORDERLINE(ORDERLINEid,ORDERSid,productid,quantity) VALUES (50,12,9,1);



