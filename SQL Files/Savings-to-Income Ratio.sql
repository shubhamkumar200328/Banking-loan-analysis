SELECT 
    Client_ID,
    ROUND(IFNULL(Saving_Accounts, 0) / Estimated_Income, 2) AS Savings_To_Income_Ratio
FROM Banking
WHERE Estimated_Income > 0;
