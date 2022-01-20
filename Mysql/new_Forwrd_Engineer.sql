-- MySQL Script generated by MySQL Workbench
-- Wed Jan 13 23:13:00 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema vehicle_subscription
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vehicle_subscription
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vehicle_subscription` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `vehicle_subscription` ;

-- -----------------------------------------------------
-- Table `vehicle_subscription`.`emp_salary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`emp_salary` (
  `job_id` VARCHAR(10) NOT NULL,
  `Salary_Amount` DECIMAL(8,2) NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`emp_salary_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`emp_salary_log` (
  `Outvoice_No` INT NOT NULL AUTO_INCREMENT,
  `Salary_Id` INT NOT NULL,
  `Salary_Amount` DECIMAL(8,2) NULL DEFAULT NULL,
  `Salary_Date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Outvoice_No`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`warehouse_locations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`warehouse_locations` (
  `Location_id` DECIMAL(6,0) NOT NULL,
  `Division` VARCHAR(25) NULL DEFAULT NULL,
  `City` VARCHAR(30) NOT NULL,
  `Street_Address` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`Location_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`employees` (
  `Employee_Id` INT NOT NULL,
  `E_Name` VARCHAR(20) NOT NULL,
  `Job_Id` VARCHAR(10) NOT NULL,
  `Salary_ID` INT NOT NULL,
  `Phone_Number` INT NULL DEFAULT NULL,
  `Email` VARCHAR(25) NULL DEFAULT NULL,
  `location_id` DECIMAL(6,0) NOT NULL,
  CONSTRAINT `employees_ibfk_1`
    FOREIGN KEY (`Job_Id`)
    REFERENCES `vehicle_subscription`.`emp_salary` (`job_id`),
  CONSTRAINT `employees_ibfk_2`
    FOREIGN KEY (`location_id`)
    REFERENCES `vehicle_subscription`.`warehouse_locations` (`Location_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Job_Id` ON `vehicle_subscription`.`employees` (`Job_Id` ASC) VISIBLE;

CREATE INDEX `location_id` ON `vehicle_subscription`.`employees` (`location_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`exporters_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`exporters_info` (
  `Exporters_Id` INT NOT NULL,
  `Vehicle_Name` VARCHAR(40) NULL DEFAULT NULL,
  `Company_Name` VARCHAR(30) NULL DEFAULT NULL,
  `Country` VARCHAR(20) NULL DEFAULT NULL,
  `Exporting_Cost` INT NULL DEFAULT NULL,
  `Original_Cost` INT NULL DEFAULT NULL,
  `Vehicle_Quantity` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Exporters_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`insurance` (
  `Insurance_No` INT NOT NULL,
  `Renewal_Fee` INT NOT NULL,
  `Ins_Company` VARCHAR(35) NOT NULL,
  `Issue_Date` DATE NOT NULL,
  `Expiry_Date` DATE NOT NULL,
  PRIMARY KEY (`Insurance_No`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`payment_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`payment_log` (
  `Invoice_No` INT NOT NULL AUTO_INCREMENT,
  `payment_Id` INT NOT NULL,
  `Paid_Amount` DECIMAL(15,2) NULL DEFAULT NULL,
  `Payment_Date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Invoice_No`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`vehicles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`vehicles` (
  `Vehicle_Id` INT NOT NULL AUTO_INCREMENT,
  `Vehicle_Name` VARCHAR(40) NOT NULL,
  `Model` INT NULL DEFAULT NULL,
  `Vehicle_Type` VARCHAR(30) NOT NULL,
  `Seating_Capacity` INT NOT NULL,
  `Engine_in_CC` INT NULL DEFAULT NULL,
  `Top_Speed_Kmph` INT NULL DEFAULT NULL,
  `Registration_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Local_Cost` INT NOT NULL,
  `Subscription_Fee` INT NULL DEFAULT NULL,
  `Insurance_No` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Id`),
  CONSTRAINT `vehicles_ibfk_1`
    FOREIGN KEY (`Insurance_No`)
    REFERENCES `vehicle_subscription`.`insurance` (`Insurance_No`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Insurance_No` ON `vehicle_subscription`.`vehicles` (`Insurance_No` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`subscription_package`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`subscription_package` (
  `Package_Id` INT NOT NULL,
  `packageName` VARCHAR(20) NULL DEFAULT NULL,
  `Duration_In_Days` INT NULL DEFAULT NULL,
  `Discount_in_percentage` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Package_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vehicle_subscription`.`subscribers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vehicle_subscription`.`subscribers` (
  `Client_Id` INT NOT NULL,
  `ClientName` VARCHAR(20) NOT NULL,
  `Phone_No` VARCHAR(11) NULL DEFAULT NULL,
  `Address` VARCHAR(40) NOT NULL,
  `Email` VARCHAR(20) NULL DEFAULT NULL,
  `National_Id` BIGINT NULL DEFAULT NULL,
  `Vehicle_Id` INT NOT NULL,
  `Package_Id` INT NULL DEFAULT NULL,
  `Payment_id` INT NULL DEFAULT NULL,
  `LicenseExpiry_date` DATE NULL DEFAULT NULL,
  `Location_id` DECIMAL(6,0) NULL DEFAULT NULL,
  `Gender` VARCHAR(10) NULL DEFAULT NULL,
  `expiry_date` DATE NULL DEFAULT NULL,
  `Wants_to_Extend` VARCHAR(3) NULL DEFAULT NULL,
  PRIMARY KEY (`Client_Id`),
  CONSTRAINT `subscribers_ibfk_1`
    FOREIGN KEY (`Vehicle_Id`)
    REFERENCES `vehicle_subscription`.`vehicles` (`Vehicle_Id`),
  CONSTRAINT `subscribers_ibfk_2`
    FOREIGN KEY (`Package_Id`)
    REFERENCES `vehicle_subscription`.`subscription_package` (`Package_Id`),
  CONSTRAINT `subscribers_ibfk_3`
    FOREIGN KEY (`Location_id`)
    REFERENCES `vehicle_subscription`.`warehouse_locations` (`Location_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Vehicle_Id` ON `vehicle_subscription`.`subscribers` (`Vehicle_Id` ASC) VISIBLE;

CREATE INDEX `Package_Id` ON `vehicle_subscription`.`subscribers` (`Package_Id` ASC) VISIBLE;

CREATE INDEX `Location_id` ON `vehicle_subscription`.`subscribers` (`Location_id` ASC) VISIBLE;

USE `vehicle_subscription` ;

-- -----------------------------------------------------
-- function Pay_Salary
-- -----------------------------------------------------

DELIMITER $$
USE `vehicle_subscription`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `Pay_Salary`(Salary_Id int, Salary_Amount decimal(8,2)) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
insert into Emp_Salary_Log(Salary_Id, Salary_Amount)
values (Salary_Id, Salary_Amount);
RETURN "Salary Paid ;)" ;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
USE `vehicle_subscription`;

DELIMITER $$
USE `vehicle_subscription`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `vehicle_subscription`.`subscribers_AFTER_INSERT`
AFTER INSERT ON `vehicle_subscription`.`subscribers`
FOR EACH ROW
BEGIN
if new.package_Id is not null then
	insert into payment_log(payment_id,paid_amount)
    values (new.payment_Id,(select v.Subscription_Fee-v.Subscription_Fee*(p.Discount_in_percentage/100)
			from subscribers s
            join vehicles v
            on s.vehicle_id=v.vehicle_id
            join subscription_package p
            on s.Package_Id=p.Package_Id
            where s.client_id = new.client_id
            ));
else insert into payment_log(payment_id,paid_amount)
	 values (new.payment_Id,(select v.Subscription_Fee
							from subscribers s
							join vehicles v
							on s.vehicle_id=v.vehicle_id
                            where s.client_id = new.client_id)
            
            );
end if;
END$$


DELIMITER ;