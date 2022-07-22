SELECT
  Country,
  Item_Type,
  Order_ID,
  Order_Date,
  Total_Cost
FROM
  `elliptical-feat-353310.salesreport.sales_practice`
WHERE
  Country LIKE 'I%' AND Total_Cost <= (SELECT AVG(Total_Cost) FROM `salesreport.sales_practice`)
ORDER BY
  Order_Date ASC
