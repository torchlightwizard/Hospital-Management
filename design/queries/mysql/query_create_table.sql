CREATE TABLE "Room Room" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Administrative Id" INT, FOREIGN KEY ("Administrative Id") REFERENCES `Room Administrative`(Id),
	"Doctor Id" INT, FOREIGN KEY ("Doctor Id") REFERENCES `Room Doctor`(Id),
	"Emergency Id" INT, FOREIGN KEY ("Emergency Id") REFERENCES `Room Emergency`(Id),
	"Inpatient Id" INT, FOREIGN KEY ("Inpatient Id") REFERENCES `Room Inpatient`(Id),
	"Outpatient Id" INT, FOREIGN KEY ("Outpatient Id") REFERENCES `Room Outpatient`(Id),
	"Diagnosis Id" INT, FOREIGN KEY ("Diagnosis Id") REFERENCES `Room Diagnosis`(Id),
	"Surgical Id" INT, FOREIGN KEY ("Surgical Id") REFERENCES `Room Surgical`(Id),
	"Treatment Id" INT, FOREIGN KEY ("Treatment Id") REFERENCES `Room Treatment`(Id),
	"Support Id" INT, FOREIGN KEY ("Support Id") REFERENCES `Room Support`(Id),
	"Pharmacy Id" INT, FOREIGN KEY ("Pharmacy Id") REFERENCES `Room Pharmacy`(Id),
	"Residential Id" INT, FOREIGN KEY ("Residential Id") REFERENCES `Room Residential`(Id),
	"Visitor Id" INT, FOREIGN KEY ("Visitor Id") REFERENCES `Room Visitor`(Id),
	"Utility Id" INT, FOREIGN KEY ("Utility Id") REFERENCES `Room Utility`(Id),
	"Misc Id" INT, FOREIGN KEY ("Misc Id") REFERENCES `Room Misc`(Id),
);
CREATE TABLE "Room Administrative" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Executive Level" INT,
	"Department Id" INT, FOREIGN KEY ("Department Id") REFERENCES `Management Department`(Id),
);
CREATE TABLE "Room Doctor" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Floor" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Room Emergency" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Availability" TINYINT(1),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Critical Level" INT,
	"Description" TEXT,
);
CREATE TABLE "Room Inpatient" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Availability" TINYINT(1),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Intensive Care" TINYINT(1),
	"Description" TEXT,
);
CREATE TABLE "Room Outpatient" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Availability" TINYINT(1),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Room Diagnosis" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Availability" TINYINT(1),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Facilities List" JSON,
	"Description" TEXT,
);
CREATE TABLE "Room Surgical" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Availability" TINYINT(1),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Surgery Type" VARCHAR(255),
	"Attached Teaching Area" TINYINT(1),
);
CREATE TABLE "Room Treatment" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Availability" TINYINT(1),
	"Facilities List" JSON,
);
CREATE TABLE "Room Support" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Room Pharmacy" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Floor" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Room Residential" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Type" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Room Visitor" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Type" VARCHAR(255),
	"Floor" INT,
	"Capacity" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Room Utility" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INT,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Utility Type" VARCHAR(255),
	"Utility Output Unit" DECIMAL(5, 2),
);
CREATE TABLE "Room Misc" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Type" VARCHAR(255),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Capacity" INT,
	"Area Unit" DECIMAL(5, 2),
);
CREATE TABLE "Consumable Consumable" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Pharmaceutical Id" INT, FOREIGN KEY ("Pharmaceutical Id") REFERENCES `Consumable Pharmaceutical`(Id),
	"Medical Supplies Id" INT, FOREIGN KEY ("Medical Supplies Id") REFERENCES `Consumable Medical Supplies`(Id),
);
CREATE TABLE "Consumable Pharmaceutical" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Quantity" INT,
	"Purchase Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Pharmacy Id" INT, FOREIGN KEY ("Pharmacy Id") REFERENCES `Room Pharmacy`(Id),
	"Brand" TEXT,
	"Type" VARCHAR(255),
	"Volume Unit" DECIMAL(5, 2),
	"Weight Unit" DECIMAL(5, 2),
	"Package Size Unit" DECIMAL(5, 2),
);
CREATE TABLE "Consumable Medical Supplies" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Quantity" INT,
	"Purchase Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Pharmacy Id" INT, FOREIGN KEY ("Pharmacy Id") REFERENCES `Room Pharmacy`(Id),
);
CREATE TABLE "Inventory Inventory" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Edibles Id" INT, FOREIGN KEY ("Edibles Id") REFERENCES `Inventory Edibles`(Id),
	"Medical Equipment Id" INT, FOREIGN KEY ("Medical Equipment Id") REFERENCES `Inventory Medical Equipment`(Id),
	"Supplies Id" INT, FOREIGN KEY ("Supplies Id") REFERENCES `Inventory Supplies`(Id),
	"Electronic Id" INT, FOREIGN KEY ("Electronic Id") REFERENCES `Inventory Electronic`(Id),
	"Vehicle Id" INT, FOREIGN KEY ("Vehicle Id") REFERENCES `Inventory Vehicle`(Id),
);
CREATE TABLE "Inventory Edible" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Quantity" INT,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
);
CREATE TABLE "Inventory Medical Equipment" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Availability" TINYINT(1),
	"Maintenance Schedule Id" INT NOT NULL, FOREIGN KEY ("Maintenance Schedule Id") REFERENCES `Maintenance Schedule`(Id),
	"Maintenance Logs Id" INT, FOREIGN KEY ("Maintenance Logs Id") REFERENCES `Maintenance Logs`(Id),
);
CREATE TABLE "Inventory Supplies" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Quantity" INT,
);
CREATE TABLE "Inventory Electronic" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Medical" TINYINT(1),
);
CREATE TABLE "Inventory Vehicle" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Type" VARCHAR(255),
	"Purchase Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Availability" TINYINT(1),
	"Maintenance Schedule Id" INT NOT NULL, FOREIGN KEY ("Maintenance Schedule Id") REFERENCES ``(Id),
	"Maintenance Logs Id" INT, FOREIGN KEY ("Maintenance Logs Id") REFERENCES `Maintenance Logs`(Id),
	"Model" TEXT,
	"Purpose" VARCHAR(255),
	"Capacity" INT,
);
CREATE TABLE "Budget Budget" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Total Amount" DECIMAL(12, 2) NOT NULL,
	"Allocated Amount" DECIMAL(12, 2) NOT NULL,
	"Remaining Amount" DECIMAL(12, 2) NOT NULL,
	"Year" INT,
	"Description" TEXT,
);
CREATE TABLE "Budget Department Budget" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Total Amount" DECIMAL(12, 2) NOT NULL,
	"Allocated Amount" DECIMAL(12, 2) NOT NULL,
	"Remaining Amount" DECIMAL(12, 2) NOT NULL,
	"Year" INT,
	"Description" TEXT,
	"Department Id" INT, FOREIGN KEY ("Department Id") REFERENCES `Management Department`(Id),
);
CREATE TABLE "Budget Expense" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Amount" DECIMAL(12, 2) NOT NULL,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
	"Department Id" INT, FOREIGN KEY ("Department Id") REFERENCES `Management Department`(Id),
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Cashflow Id" INT, FOREIGN KEY ("Cashflow Id") REFERENCES `Cashflow`(Id),
);
CREATE TABLE "Budget Compensations" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Amount" DECIMAL(12, 2) NOT NULL,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Cashflow Id" INT, FOREIGN KEY ("Cashflow Id") REFERENCES `Cashflow`(Id),
);
CREATE TABLE "Budget Revenue" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Amount" DECIMAL(12, 2) NOT NULL,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
	"Department Id" INT, FOREIGN KEY ("Department Id") REFERENCES `Management Department`(Id),
	"Cashflow Id" INT, FOREIGN KEY ("Cashflow Id") REFERENCES `Cashflow`(Id),
);
CREATE TABLE "Budget Cash Flow" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Amount" DECIMAL(12, 2) NOT NULL,
	"Balance" DECIMAL(12, 2) NOT NULL,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Type" VARCHAR(255),
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
	"Record Editor Id" INT, FOREIGN KEY ("Record Editor Id") REFERENCES `Record Editor`(Id),
	"Flow" VARCHAR(255),
);
CREATE TABLE "Management Board" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Management Research Team" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Department Id" INT, FOREIGN KEY ("Department Id") REFERENCES `Management Department`(Id),
);
CREATE TABLE "Management Department" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
);
CREATE TABLE "Management Position" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Department Id" INT, FOREIGN KEY ("Department Id") REFERENCES `Management Department`(Id),
	"PayScale" INT,
	"Compensation" DECIMAL(8, 2) NOT NULL,
	"Clearance Level" INT,
);
CREATE TABLE "Staff Staff" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Director Id" INT, FOREIGN KEY ("Director Id") REFERENCES `Director`(Id),
	"Administration Id" INT, FOREIGN KEY ("Administration Id") REFERENCES `Administration`(Id),
	"Doctors Id" INT, FOREIGN KEY ("Doctors Id") REFERENCES `Doctors`(Id),
	"Nurses Id" INT, FOREIGN KEY ("Nurses Id") REFERENCES `Nurses`(Id),
	"Medical Technicians Id" INT, FOREIGN KEY ("Medical Technicians Id") REFERENCES `Medical Technicians`(Id),
	"Therapists Id" INT, FOREIGN KEY ("Therapists Id") REFERENCES `Therapists`(Id),
	"Clinical Support Id" INT, FOREIGN KEY ("Clinical Support Id") REFERENCES `Clinical Support`(Id),
	"Non-Medical Support Id" INT, FOREIGN KEY ("Non-Medical Support Id") REFERENCES `Non-Medical Support`(Id),
	"Pharmacy Id" INT, FOREIGN KEY ("Pharmacy Id") REFERENCES `Room Pharmacy`(Id),
	"Transport Id" INT, FOREIGN KEY ("Transport Id") REFERENCES `Transport`(Id),
	"Teachers Id" INT, FOREIGN KEY ("Teachers Id") REFERENCES `Teachers`(Id),
	"Volunteers Id" INT, FOREIGN KEY ("Volunteers Id") REFERENCES `Volunteers`(Id),
);
CREATE TABLE "Staff Directors" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Staff Administration" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Medical" TINYINT(1),
);
CREATE TABLE "Staff Doctors" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" JSON,
	"Licenses" JSON,
	"Specializations" JSON,
);
CREATE TABLE "Staff Nurses" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" JSON,
	"Trainings" JSON,
);
CREATE TABLE "Staff Medical Technicians" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" JSON,
);
CREATE TABLE "Staff Therapists" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" JSON,
	"Licenses" JSON,
);
CREATE TABLE "Staff Clinical Support" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" JSON,
);
CREATE TABLE "Staff Non-Medical Support" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Staff Pharmacy" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" JSON,
);
CREATE TABLE "Staff Transport" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" JSON,
);
CREATE TABLE "Staff Teachers" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" JSON,
	"Trainings" JSON,
	"Specializations" JSON,
);
CREATE TABLE "Staff Volunteers" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Position Id" INT NOT NULL, FOREIGN KEY ("Position Id") REFERENCES `Position`(Id),
	"Attendance Id" INT, FOREIGN KEY ("Attendance Id") REFERENCES `Attendance`(Id),
	"Active" TINYINT(1),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Profile Profile" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"First Name" VARCHAR(255),
	"Last Name" VARCHAR(255),
	"Contact Number" VARCHAR(15),
	"Emergency Contact Number" VARCHAR(15),
	"Address 1" TEXT,
	"Address 2" TEXT,
	"Email" VARCHAR(30),
);
CREATE TABLE "Patients Patient" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Profile Id" INT, FOREIGN KEY ("Profile Id") REFERENCES `Profile`(Id),
	"Inpatient" TINYINT(1) NOT NULL,
);
CREATE TABLE "Patients Consent Forms" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Consent Form Id" INT, FOREIGN KEY ("Consent Form Id") REFERENCES `Consent Form`(Id),
);
CREATE TABLE "Patients Prescriptions" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
);
CREATE TABLE "Patients Invoice" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
);
CREATE TABLE "Patients Lab Reports" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Lap Report Id" INT, FOREIGN KEY ("Lap Report Id") REFERENCES `Lap Report`(Id),
);
CREATE TABLE "Patients Medical Records" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Medical Record Id" INT NOT NULL, FOREIGN KEY ("Medical Record Id") REFERENCES `Medical Record`(Id),
);
CREATE TABLE "Schedule Shift" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Shift Name" VARCHAR(255),
);
CREATE TABLE "Schedule Schedule" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Name" VARCHAR(255),
	"Shift Id" INT, FOREIGN KEY ("Shift Id") REFERENCES `Shift`(Id),
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"General Id" INT, FOREIGN KEY ("General Id") REFERENCES `General`(Id),
	"Appointments Id" INT, FOREIGN KEY ("Appointments Id") REFERENCES `Appointments`(Id),
	"Emergency Id" INT, FOREIGN KEY ("Emergency Id") REFERENCES `Emergency`(Id),
	"Maintenance Id" INT, FOREIGN KEY ("Maintenance Id") REFERENCES `Maintenance`(Id),
	"Vahicle Id" INT, FOREIGN KEY ("Vahicle Id") REFERENCES `Vahicle`(Id),
);
CREATE TABLE "Schedule General" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
);
CREATE TABLE "Schedule Appointments" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
);
CREATE TABLE "Schedule Emergency" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
);
CREATE TABLE "Schedule Maintenance" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Schedule Vehicle" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Purpose" VARCHAR(255),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
);
CREATE TABLE "Document Directives" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
);
CREATE TABLE "Document Invoice" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Issue Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Payment Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" INT, FOREIGN KEY ("Issuer Id") REFERENCES `Issuer`(Id),
	"Currency" VARCHAR(5),
	"Total Amount" DECIMAL(12, 2) NOT NULL,
	"Tax Amount" DECIMAL(12, 2) NOT NULL,
	"Issuer Name" VARCHAR(255),
	"Recipient Id" INT, FOREIGN KEY ("Recipient Id") REFERENCES `Recipient`(Id),
	"Recipient Name" VARCHAR(255),
	"Payment Status" TINYINT(1),
);
CREATE TABLE "Document Invoice Expanded" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Consumable Id" INT, FOREIGN KEY ("Consumable Id") REFERENCES `Consumable`(Id),
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
);
CREATE TABLE "Document Prescription" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" INT, FOREIGN KEY ("Issuer Id") REFERENCES `Issuer`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Invoice Id" INT, FOREIGN KEY ("Invoice Id") REFERENCES `Invoice`(Id),
);
CREATE TABLE "Document Prescription Expanded" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Consumable Id" INT, FOREIGN KEY ("Consumable Id") REFERENCES `Consumable`(Id),
	"Prescription Id" INT, FOREIGN KEY ("Prescription Id") REFERENCES `Prescription`(Id),
);
CREATE TABLE "Document Consent Forms" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Consenter Name" VARCHAR(255),
	"Consenter Profile Id" INT, FOREIGN KEY ("Consenter Profile Id") REFERENCES `Consenter Profile`(Id),
);
CREATE TABLE "Document Emergency Reports" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Schedule Id" INT NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES `Schedule`(Id),
	"Emergency Type" VARCHAR(255),
	"Surgery Type" VARCHAR(255),
	"Critical Level" INT,
);
CREATE TABLE "Document Patient Medical Records" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Schedule Id" INT NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES `Schedule`(Id),
	"Inpatient" TINYINT(1) NOT NULL,
	"Diagnosis" TEXT,
	"Treatment" TEXT,
	"Additional Notes" TEXT,
);
CREATE TABLE "Document Lab Report" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Test  Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Result Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Schedule Id" INT NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES `Schedule`(Id),
);
CREATE TABLE "Document Report" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" INT, FOREIGN KEY ("Issuer Id") REFERENCES `Issuer`(Id),
);
CREATE TABLE "Document Insurance" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Approval Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Policy Type" VARCHAR(255),
	"Holder Profile Id" INT, FOREIGN KEY ("Holder Profile Id") REFERENCES `Holder Profile`(Id),
	"Provider Name" VARCHAR(255),
	"Provider Representative Name" VARCHAR(255),
	"Provider Representative Profile Id" INT, FOREIGN KEY ("Provider Representative Profile Id") REFERENCES `Provider Representative Profile`(Id),
	"Coverage Amount" DECIMAL(12, 2) NOT NULL,
	"Premium Amount" DECIMAL(12, 2) NOT NULL,
	"Claim Limit" DECIMAL(12, 2),
	"Status" TEXT,
);
CREATE TABLE "Document Attendance" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Schedule Id" INT NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES `Schedule`(Id),
	"Attendance" TINYINT(1),
);
CREATE TABLE "Document Contracts" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Renew Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Contract Type" VARCHAR(255),
	"Status" TEXT,
	"Department Id" INT, FOREIGN KEY ("Department Id") REFERENCES `Management Department`(Id),
	"Issuer Id" INT, FOREIGN KEY ("Issuer Id") REFERENCES `Issuer`(Id),
	"Signee Id" INT, FOREIGN KEY ("Signee Id") REFERENCES `Signee`(Id),
	"Payment Amount" DECIMAL(12, 2) NOT NULL,
	"Terms and Conditions Link" TEXT NOT NULL,
);
CREATE TABLE "Document Meeting Minutes" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Agenda" TEXT,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Schedule Id" INT NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES `Schedule`(Id),
);
CREATE TABLE "Document Medical Equipment Logs" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Patient Id" INT NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES `Patient Patient`(Id),
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Schedule Id" INT NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES `Schedule`(Id),
);
CREATE TABLE "Document Maintenance Logs" (
	"Id" INT AUTO_INCREMENT PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INT NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES `Approved By`(Id),
	"Description" TEXT,
	"Start Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" INT, FOREIGN KEY ("Staff Id") REFERENCES `Staff Staff`(Id),
	"Report Id" INT, FOREIGN KEY ("Report Id") REFERENCES `Report`(Id),
	"Room Id" INT, FOREIGN KEY ("Room Id") REFERENCES `Room Room`(Id),
	"Inventory Id" INT, FOREIGN KEY ("Inventory Id") REFERENCES `Inventory Inventory`(Id),
	"Schedule Id" INT NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES `Schedule`(Id),
);
