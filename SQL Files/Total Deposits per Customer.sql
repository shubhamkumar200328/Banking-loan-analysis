SELECT 
    Client_ID, 
    IFNULL(Bank_Deposits, 0) + IFNULL(Checking_Accounts, 0) + IFNULL(Saving_Accounts, 0) + IFNULL(Foreign_Currency_Account, 0) AS Total_Deposits
FROM banking;
