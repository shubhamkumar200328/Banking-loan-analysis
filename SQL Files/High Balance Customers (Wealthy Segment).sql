SELECT Client_ID
FROM Banking
WHERE Estimated_Income > 100000
  AND (Bank_Deposits + Checking_Accounts + Saving_Accounts + Foreign_Currency_Account) > 50000;
