-- Creating bins for the Estimated Income < 100000 as low, <300000 as Mid and else High with the column named as Income Band in Clients-Banking table.

ALTER TABLE bankloandb.banking
ADD COLUMN Income_Band VARCHAR(20);

UPDATE bankloandb.banking
SET Income_Band = CASE
	WHEN Estimated_Income < 100000 THEN 'Low'
    WHEN Estimated_Income < 300000 THEN 'Mid'
    WHEN Estimated_Income IS NULL THEN 'Unknown'
	ELSE 'High'
END;

SELECT Income_Band FROM banking;