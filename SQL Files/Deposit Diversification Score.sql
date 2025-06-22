SELECT Client_ID,
       CASE 
         WHEN Checking_Accounts > 0 THEN 1 ELSE 0
       END +
       CASE 
         WHEN Saving_Accounts > 0 THEN 1 ELSE 0
       END +
       CASE 
         WHEN Foreign_Currency_Account > 0 THEN 1 ELSE 0
       END AS Deposit_Diversification_Score
FROM Banking;
