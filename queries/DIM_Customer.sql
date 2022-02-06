-- Cleaned and transformed Customer Table
SELECT 
  c.CustomerKey as CustomerKey, 
  --      ,[GeographyKey]
  --      ,[CustomerAlternateKey]
  --      ,[Title]
  c.FirstName AS FirstName, 
  --      ,[MiddleName], 
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + c.LastName AS [Full Name], 
  --      ,[NameStyle]
  --      ,[BirthDate]
  --      ,[MaritalStatus]
  --      ,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender, 
  --      ,[EmailAddress]
  --      ,[YearlyIncome]
  --      ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --      ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --      ,[CommuteDistance]
  g.City AS [Customer City] 
FROM 
  dbo.DimCustomer as c 
  LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey
