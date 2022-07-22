SELECT
  Country,
  Item_Type,
  Units_Sold
FROM
  `salesreport.sales_practice`
WHERE
  Sales_Channel = "Online"
  AND Item_Type LIKE "C%"
  AND Units_Sold BETWEEN 4000 AND 8000
ORDER BY
  Units_Sold DESC
