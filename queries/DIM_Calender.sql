-- Cleansed dimension date tables
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date 
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] AS Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS WeekNum, 
  [EnglishMonthName]AS Month 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS MonthNo, 
  LEFT([EnglishMonthName], 3) AS MonthShort, 
  [CalendarQuarter] AS Quater, 
  [CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE 
  CalendarYear >= 2019
