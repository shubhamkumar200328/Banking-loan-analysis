-- Creating a new column Engagement_Timeframe in client-banking column which tells about the time line of the clients in banks

ALTER TABLE `bankloandb`.`banking`
ADD COLUMN `Engagement_Timeframe` VARCHAR(20);

UPDATE `bankloandb`.`banking`
SET `Engagement_Timeframe` = CASE
    WHEN TIMESTAMPDIFF(YEAR, `Joined_Bank`, CURDATE()) < 1 THEN '<1 years'
    WHEN TIMESTAMPDIFF(YEAR, `Joined_Bank`, CURDATE()) < 5 THEN '<5 years'
    WHEN TIMESTAMPDIFF(YEAR, `Joined_Bank`, CURDATE()) < 10 THEN '<10 years'
    WHEN TIMESTAMPDIFF(YEAR, `Joined_Bank`, CURDATE()) < 20 THEN '<20 years'
    ELSE '>=20 years'
END;
