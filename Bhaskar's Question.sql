SELECT
  Item_Type,
  MAX(Unit_Price) AS Max_Unit_Price
FROM
  `salesreport.sales_practice`
GROUP BY
  Item_Type
ORDER BY
  Max_Unit_Price DESC
LIMIT
  1
OFFSET
  6;
