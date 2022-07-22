SELECT
  Item_Type,
  Ship_Date,
  Sales_Channel,
  Total_Profit
FROM
  `salesreport.sales_practice`
WHERE
  Ship_Date BETWEEN "2015-01-01"
  AND "2015-12-31"
  AND Total_Profit > 1500000
  AND Units_Sold > 8000
ORDER BY
  Ship_Date ASC
