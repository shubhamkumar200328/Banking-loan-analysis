SELECT Client_ID,
        ROUND((Bank_Loans + Credit_Card_Balance + Business_Lending) / Estimated_Income, 3) AS Debt_To_Income_Ratio
FROM Banking
WHERE Estimated_Income > 0
ORDER BY Debt_To_Income_Ratio ASC 
