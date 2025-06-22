SELECT 
    Client_ID,
    ROUND(IFNULL(Bank_Loans, 0) + IFNULL(Business_Lending, 0), 2) AS TotalLoanExposure
FROM Banking;
