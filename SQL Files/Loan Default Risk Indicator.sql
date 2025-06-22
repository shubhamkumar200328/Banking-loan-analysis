SELECT Client_ID,
       CASE 
         WHEN Bank_Loans > 50000 AND Estimated_Income < 30000 AND Saving_Accounts < 5000
         THEN 'High Risk'
         ELSE 'Low/Medium Risk'
       END AS Default_Risk_Flag
FROM Banking;
