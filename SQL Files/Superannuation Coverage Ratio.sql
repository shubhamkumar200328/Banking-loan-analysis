SELECT Client_ID,
       ROUND(Superannuation_Savings / Estimated_Income, 4) AS Superannuation_Coverage
FROM Banking
WHERE Estimated_Income > 0;
