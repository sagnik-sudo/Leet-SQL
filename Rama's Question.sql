SELECT
  *
FROM
  `salesreport.sales_practice`
WHERE
  Total_Cost > (
  SELECT
    AVG(Total_Cost)
  FROM
    `salesreport.sales_practice`)
  AND Order_Date BETWEEN "2015-01-01"
  AND "2017-12-31"
  AND Region = "Asia"
  AND Item_Type = "Baby Food"
