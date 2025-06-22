SELECT Client_ID,
       ROUND((Estimated_Income + Saving_Accounts + Bank_Deposits) / (Bank_Loans + Credit_Card_Balance + Business_Lending), 2) AS Repayment_Capacity_Score
FROM Banking
WHERE (Bank_Loans + Credit_Card_Balance + Business_Lending)>0
order by Repayment_Capacity_Score DESC;
