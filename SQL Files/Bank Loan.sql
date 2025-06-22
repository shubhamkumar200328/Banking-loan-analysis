-- Bank Loan: loan amount of loan to be repaid by the client to bank 

select CAST(SUM(Bank_Loans) / 1000000 AS DECIMAL(10,2)) as total_bank_loan_Millions 
from banking
