SELECT Client_ID,
       ROUND((Bank_Deposits + Checking_Accounts + Saving_Accounts) / (Bank_Loans + Credit_Card_Balance),2) AS Liquidity_Score
FROM Banking
WHERE (Bank_Loans + Credit_Card_Balance)>0
ORDER BY Liquidity_Score DESC
