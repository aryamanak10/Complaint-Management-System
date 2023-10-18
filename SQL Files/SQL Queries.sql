-- SQL Queries

USE complaints_management_service;

-- 1. Retrieving the Non-Conformance Report Table --> SIMPLE
SELECT * FROM `NON CONFORMANCE REPORT`
ORDER BY NCR_Date_Created ASC, `NCR#` DESC
LIMIT 5;

-- 2. Retrieving Supplier ID, Manufacturing Site Number, Manufacturing Site Name  which supply to a Manufacturing Site. --> INNER JOIN

SELECT r.SupplierID, m.MFGSiteno, m.MFGSite_FName, m.MFGSite_LName
from `MANUFACTURING SITE` m, SUPPLIER r, SUPPLIES s
WHERE m.MFGSiteno = s.MFGSiteno and r.SupplierID = s.SupplierID
ORDER BY r.supplierID;

-- 3. Retrieving Product Id, Product Name and Number of products stored at the Distributor. --> AGGREGATE

SELECT p.ProductID, p.productname, COUNT(*) as Product_Stored
FROM Distributor d, stores s, product p
WHERE d.DistributorID = s.DistributorIDNumber and s.ProductID = p.productID
GROUP BY p.ProductID
ORDER BY p.ProductID;

-- 4. Using NESTED query, Retrieving SupplierID, SupplierFname and SupplierLname where the SupplierID supplier supplies raw
-- 	  products to the Manufacturing Site First Name is Hubert.
SELECT SupplierID, SupplierFname, SupplierLname
FROM Supplier
WHERE SupplierID IN (
					SELECT SupplierID
                    FROM SUPPLIES
                    WHERE MFGSiteNo =
										(
										SELECT MFGSiteNo
										FROM `MANUFACTURING SITE`
										WHERE MFGSite_Fname = 'Hubert'
										))
ORDER BY SupplierID ASC;

-- 5. Retrieves the Names of the Customers who have the highest number of custom orders from the Manufacturing
--   site 103 and the Custom order delivery date is after 2000-01-01. --> ALL
SELECT EndUserFname, EndUserLname
FROM ENDUSER
WHERE EndUserID IN (
			SELECT EndUserID
			FROM CUSTOMORDER
			WHERE CO_DeliveredDate > '2000-01-01'
			AND CO_ORDERED > ALL 
							(SELECT MIN(CO_ORDERED)
							FROM CUSTOMORDER
							WHERE MFGSiteIDNumber = '103'))
ORDER BY ENDUserFname ASC;

-- 6. Retrieves the Names of the Customers who do not have the least number of custom orders from the Manufacturing
-- 	  Site 101 and 102 and the Custom Order Delivery Date is after 1995-01-01. --> ANY
SELECT EndUserID, EndUserFname, EndUserLname
FROM ENDUSER
WHERE EndUserID IN (
			SELECT EndUserID
			FROM CUSTOMORDER
			WHERE CO_DeliveredDate > '1995-01-01'
			AND CO_ORDERED > ANY
							(SELECT CO_ORDERED
							FROM CUSTOMORDER
							WHERE MFGSiteIDNumber != '103'))
ORDER BY ENDUserFname ASC;

-- 7. Retrieving SupplierFName and SupplierLname where the SupplierID is an union between the Suppliers who supplies
--    and Suppliers who have a non-conformance report assigned to them. --> UNION
SELECT SupplierFname, SupplierLname
FROM SUPPLIER
WHERE SupplierID IN (
					SELECT SupplierID
					FROM SUPPLIES
					UNION
					SELECT SupID
					FROM ASSIGNED);

-- 8. Retrieving CustomerID, HospitalFname, HospitalLname, ComplaintID and ComplaintDescription of Hospitals having
--    a complaint after the date '2019-01-01'.

SELECT h.CustomerID, c.CustomerAccountCreationDate, HospitalFname, HospitalLname, ct.ComplaintID, ct.ComplaintDescription
FROM HOSPITAL h, Customer c, COMPLAINT ct
WHERE h.CustomerID = c.CustomerID 
	  AND h.CustomerID = ct.`Customer#` 
      AND c.CustomerAccountCreationDate>'2019-01-01';

-- 9. Using Correlated Query, Retrieving the Custom Order IDs who had more products ordered in their Custom Order 
--    than the average number of products in the custom order manufactured by their respective manufacturing site.

SELECT CO_ID, EndUserID, MFGSiteIDNumber, CO_DeliveredDate
FROM CUSTOMORDER c1
WHERE CO_Ordered >
			  (SELECT AVG(CO_Ordered)
			   FROM CUSTOMORDER c2
			   WHERE c2.MFGSiteIDNumber = c1.MFGSiteIDNumber);

-- 10. Using CORRELATED query, retrieving Supplier ID who have more than one Non-Conformance Reports assigned to them.

SELECT DISTINCT a1.SupID, a1.`NCR#`
FROM assigned a1
WHERE (
		SELECT COUNT(*)
		FROM assigned a2
		WHERE a1.SupID = a2.SupID
		AND a1.`NCR#` = a2.`NCR#`) > 1;
                        
-- 11. Retrieving HospitalFname, HospitalLname and Hospital Customer ID who do not have a complaint registered
--     against them. --> EXISTS.

SELECT h.HospitalFname, h.HospitalLname, h.CustomerID 
FROM hospital h
WHERE NOT EXISTS (
				  SELECT * 
                  FROM complaint c
				  WHERE c.`Customer#` = h.CustomerID)