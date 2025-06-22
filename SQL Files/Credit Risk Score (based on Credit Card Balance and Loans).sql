SELECT 
    Client_ID,
    IFNULL(Credit_Card_Balance, 0) + IFNULL(Bank_Loans, 0) AS Credit_Risk_Score
FROM Banking;
