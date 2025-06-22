SELECT Client_ID,
       ROUND(Credit_Card_Balance / (Bank_Deposits + Checking_Accounts + Saving_Accounts), 2) AS Credit_Utilization
FROM Banking
ORDER BY Credit_Utilization DESC;
