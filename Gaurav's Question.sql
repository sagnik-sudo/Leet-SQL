SELECT
  CONCAT(Country,"-",Item_Type) AS Country_ItemType,
  SUM(Units_Sold) AS Total_Unit_Sold,
  AVG(Total_Profit) AS Average_Total_Profit
FROM
  `salesreport.sales_practice`
WHERE
  COUNTRY IN ("India",
    "Vietnam",
    "Cambodia")
GROUP BY
  Country_ItemType
ORDER BY
  Country_ItemType ASC
