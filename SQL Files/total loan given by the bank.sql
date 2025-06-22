SELECT 
    CAST(SUM(`Bank_Loans` + `Business_Lending` + `Credit_Card_Balance`) / 1000000 AS DECIMAL(10,2)) AS Total_Loan_Millions
FROM banking;
