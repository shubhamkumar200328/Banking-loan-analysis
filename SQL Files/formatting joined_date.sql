ALTER TABLE `bankloandb`.`banking` ADD COLUMN `Joined_Bank_Date` DATE;

UPDATE `bankloandb`.`banking`
SET `Joined_Bank_Date` = STR_TO_DATE(`Joined_Bank`, '%d-%m-%Y');

-- Drop the old column
ALTER TABLE `bankloandb`.`banking`
DROP COLUMN `Joined_Bank`;

-- Rename the new column
ALTER TABLE `bankloandb`.`banking`
CHANGE COLUMN `Joined_Bank_Date` `Joined_Bank` DATE; 

SELECT Joined_Bank FROM banking
