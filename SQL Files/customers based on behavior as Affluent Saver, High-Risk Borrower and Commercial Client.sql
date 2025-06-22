SELECT Client_ID,
       CASE
         WHEN Estimated_Income > 100000 
              AND (Bank_Deposits + Checking_Accounts + Saving_Accounts + Foreign_Currency_Account) > 50000
              THEN 'Affluent Saver'
         WHEN (Bank_Loans + Credit_Card_Balance) > 50000 AND Saving_Accounts < 5000
              THEN 'High-Risk Borrower'
         WHEN Business_Lending > 0 
              AND Bank_Deposits = 0 
              AND Checking_Accounts = 0 
              AND Saving_Accounts = 0
              AND Bank_Loans = 0 
              AND Credit_Card_Balance = 0
              THEN 'Commercial Client'
         ELSE 'General Customer'
       END AS Segment
FROM Banking;
