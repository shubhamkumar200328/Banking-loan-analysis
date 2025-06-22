SELECT Client_ID,
       (CASE WHEN Credit_Card_Balance > 0 THEN 1 ELSE 0 END +
        CASE WHEN Bank_Loans > 0 THEN 1 ELSE 0 END +
        CASE WHEN Saving_Accounts > 0 THEN 1 ELSE 0 END +
        CASE WHEN Checking_Accounts > 0 THEN 1 ELSE 0 END +
        CASE WHEN Business_Lending > 0 THEN 1 ELSE 0 END) AS Product_Holding_Score
FROM Banking;
