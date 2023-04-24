--Question 1
SELECT p.NAME AS PART_NAME, COUNT(*) AS INVENTORY_LEVEL
FROM PART p
JOIN SUP_PART sp ON p.PARTID = sp.PARTID
JOIN SUPPLIER s ON sp.SUPPLIERID = s.SUPPLIERID
JOIN PRODUCT pr ON p.PARTID = pr.PRODUCTID
JOIN ORDERLINE ol ON pr.PRODUCTID = ol.PRODUCTID
GROUP BY p.NAME;

--Question 2
Select count(ol.ProductID), p.ProductID, p.name
From OrderLine ol inner join Product p
On ol.productID = p.productID
Group by p.productID, p.name
Order by count(ol.ProductID) desc
Fetch first row only;

--Question 3
Select count(*) AS LAST_QUARTER_ORDERS
FROM ORDERS
Where ORDERSDATE > SYSDATE - 90;

--Question 4
SELECT TO_CHAR(ORDERSDATE, 'DAY') AS DAY_OF_WEEK, COUNT(*) AS NUM_ORDERS
FROM ORDERS
GROUP BY TO_CHAR(ORDERSDATE, 'DAY')
ORDER BY COUNT(*) DESC;

--Question 5
SELECT COUNT(*) AS Bike_Count
FROM PRODUCT
WHERE NAME LIKE '%Bike';

--Question 6
SELECT p.NAME AS PART_NAME, COUNT(ol.QUANTITY) AS QUANTITY_SOLD
FROM PART p
JOIN PROD_PART pp ON p.PARTID = pp.PARTID
JOIN PRODUCT pr ON pp.PRODUCTID = pr.PRODUCTID
JOIN ORDERLINE ol ON pr.PRODUCTID = ol.PRODUCTID
GROUP BY p.NAME
ORDER BY QUANTITY_SOLD DESC;

--Question 7
select count(o.customerid), o.customerID, c.firstName, c.lastName
from Orders o inner join Customer c
On o.customerID = c.customerID
Group by o.customerid, c.firstName, c.lastName
Order by count(o.customerid) desc
Fetch first row only;

--Question 8
CREATE OR REPLACE TRIGGER LOW_STOCK_NOTIFICATION
AFTER INSERT ON ORDERLINE
FOR EACH ROW
WHEN (NEW.QUANTITY >= 10)
BEGIN
	DBMS_OUTPUT.PUT_LINE('10 OR MORE OF PRODUCT ' || :NEW.PRODUCTID || ' WERE JUST ADDED TO AN ORDER.');
END;
/

--Question 9
SELECT AVG(QUANTITY) AS AVG_ITEMS_PER_ORDER
FROM ORDERLINE;

--Question 10
SELECT P.NAME, COUNT(*) AS NUM_PURCHASES
FROM PRODUCT P
JOIN ORDERLINE OL ON P.PRODUCTID = OL.PRODUCTID
GROUP BY P.NAME
ORDER BY COUNT(*) DESC
FETCH FIRST 1 ROWS ONLY;

