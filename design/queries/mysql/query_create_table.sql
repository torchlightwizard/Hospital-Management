CREATE TABLE `Room Room` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Administrative` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Doctor` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Emergency` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Inpatient` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Outpatient` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Diagnosis` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Surgical` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Treatment` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Support` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Pharmacy` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Residential` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Visitor` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Utility` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Room Misc` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Consumable Consumable` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Consumable Pharmaceutical` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Consumable Medical Supplies` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Inventory Inventory` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Inventory Edible` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Inventory Medical Equipment` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Inventory Supplies` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Inventory Electronic` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Inventory Vehicle` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Budget Budget` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Budget Department Budget` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Budget Expense` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Budget Compensations` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Budget Revenue` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Budget Cash Flow` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Management Board` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Management Research Team` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Management Department` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Management Position` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Staff` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Director` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Administration` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Doctor` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Nurse` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Medical Technician` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Therapist` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Clinical Support` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Non-Medical Support` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Pharmacy` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Transport` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Teacher` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Staff Volunteer` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Profile Profile` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Patient Patient` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Patient Consent Form` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Patient Prescription` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Patient Invoice` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Patient Lab Report` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Patient Medical Record` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Schedule Shift` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Schedule Schedule` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Schedule General` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Schedule Appointment` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Schedule Emergency` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Schedule Maintenance` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Schedule Vehicle` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Directive` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Invoice` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Invoice Expanded` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Prescription` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Prescription Expanded` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Consent Form` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Emergency Report` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Patient Medical Record` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Lab Report` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Report` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Insurance` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Attendance` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Contracts` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Meeting Minutes` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Medical Equipment Logs` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `Document Maintenance Logs` (
`Id` INT AUTO_INCREMENT PRIMARY KEY
);
