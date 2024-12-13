ALTER TABLE `Room Room`
	ADD FOREIGN KEY (`Administrative Id`) REFERENCES `Room Administrative`(`Id`),
	ADD FOREIGN KEY (`Doctor Id`) REFERENCES `Room Doctor`(`Id`),
	ADD FOREIGN KEY (`Emergency Id`) REFERENCES `Room Emergency`(`Id`),
	ADD FOREIGN KEY (`Inpatient Id`) REFERENCES `Room Inpatient`(`Id`),
	ADD FOREIGN KEY (`Outpatient Id`) REFERENCES `Room Outpatient`(`Id`),
	ADD FOREIGN KEY (`Diagnosis Id`) REFERENCES `Room Diagnosis`(`Id`),
	ADD FOREIGN KEY (`Surgical Id`) REFERENCES `Room Surgical`(`Id`),
	ADD FOREIGN KEY (`Treatment Id`) REFERENCES `Room Treatment`(`Id`),
	ADD FOREIGN KEY (`Support Id`) REFERENCES `Room Support`(`Id`),
	ADD FOREIGN KEY (`Pharmacy Id`) REFERENCES `Room Pharmacy`(`Id`),
	ADD FOREIGN KEY (`Residential Id`) REFERENCES `Room Residential`(`Id`),
	ADD FOREIGN KEY (`Visitor Id`) REFERENCES `Room Visitor`(`Id`),
	ADD FOREIGN KEY (`Utility Id`) REFERENCES `Room Utility`(`Id`),
	ADD FOREIGN KEY (`Misc Id`) REFERENCES `Room Misc`(`Id`);
ALTER TABLE `Room Administrative`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`),
	ADD FOREIGN KEY (`Department Id`) REFERENCES `Management Department`(`Id`);
ALTER TABLE `Room Doctor`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Emergency`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Inpatient`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Outpatient`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Diagnosis`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Surgical`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Treatment`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Support`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Pharmacy`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Residential`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Visitor`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Utility`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Room Misc`
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Consumable Consumable`
	ADD FOREIGN KEY (`Pharmaceutical Id`) REFERENCES `Consumable Pharmaceutical`(`Id`),
	ADD FOREIGN KEY (`Medical Supplies Id`) REFERENCES `Consumable Medical Supplies`(`Id`);
ALTER TABLE `Consumable Pharmaceutical`
	ADD FOREIGN KEY (`Pharmacy Id`) REFERENCES `Room Pharmacy`(`Id`);
ALTER TABLE `Consumable Medical Supplies`
	ADD FOREIGN KEY (`Pharmacy Id`) REFERENCES `Room Pharmacy`(`Id`);
ALTER TABLE `Inventory Inventory`
	ADD FOREIGN KEY (`Edible Id`) REFERENCES `Inventory Edible`(`Id`),
	ADD FOREIGN KEY (`Medical Equipment Id`) REFERENCES `Inventory Medical Equipment`(`Id`),
	ADD FOREIGN KEY (`Supplies Id`) REFERENCES `Inventory Supplies`(`Id`),
	ADD FOREIGN KEY (`Electronic Id`) REFERENCES `Inventory Electronic`(`Id`),
	ADD FOREIGN KEY (`Vehicle Id`) REFERENCES `Inventory Vehicle`(`Id`);
ALTER TABLE `Inventory Edible`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`);
ALTER TABLE `Inventory Medical Equipment`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Maintenance Schedule Id`) REFERENCES `Schedule Maintenance`(`Id`),
	ADD FOREIGN KEY (`Maintenance Logs Id`) REFERENCES `Document Maintenance Logs`(`Id`);
ALTER TABLE `Inventory Supplies`
;
ALTER TABLE `Inventory Electronic`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`);
ALTER TABLE `Inventory Vehicle`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Maintenance Schedule Id`) REFERENCES `Schedule Maintenance`(`Id`),
	ADD FOREIGN KEY (`Maintenance Logs Id`) REFERENCES `Document Maintenance Logs`(`Id`);
ALTER TABLE `Budget Budget`
;
ALTER TABLE `Budget Department Budget`
	ADD FOREIGN KEY (`Department Id`) REFERENCES `Management Department`(`Id`);
ALTER TABLE `Budget Expense`
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`),
	ADD FOREIGN KEY (`Department Id`) REFERENCES `Management Department`(`Id`),
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Cash Flow Id`) REFERENCES `Budget Cash Flow`(`Id`);
ALTER TABLE `Budget Compensations`
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`),
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Cash Flow Id`) REFERENCES `Budget Cash Flow`(`Id`);
ALTER TABLE `Budget Revenue`
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`),
	ADD FOREIGN KEY (`Department Id`) REFERENCES `Management Department`(`Id`),
	ADD FOREIGN KEY (`Cash Flow Id`) REFERENCES `Budget Cash Flow`(`Id`);
ALTER TABLE `Budget Cash Flow`
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`),
	ADD FOREIGN KEY (`Record Editor Id`) REFERENCES `Staff Staff`(`Id`);
ALTER TABLE `Management Board`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`);
ALTER TABLE `Management Research Team`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Department Id`) REFERENCES `Management Department`(`Id`);
ALTER TABLE `Management Department`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`);
ALTER TABLE `Management Position`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Department Id`) REFERENCES `Management Department`(`Id`);
ALTER TABLE `Staff Staff`
	ADD FOREIGN KEY (`Director Id`) REFERENCES `Staff Director`(`Id`),
	ADD FOREIGN KEY (`Administration Id`) REFERENCES `Staff Administration`(`Id`),
	ADD FOREIGN KEY (`Doctor Id`) REFERENCES `Staff Doctor`(`Id`),
	ADD FOREIGN KEY (`Nurse Id`) REFERENCES `Staff Nurse`(`Id`),
	ADD FOREIGN KEY (`Medical Technician Id`) REFERENCES `Staff Medical Technician`(`Id`),
	ADD FOREIGN KEY (`Therapist Id`) REFERENCES `Staff Therapist`(`Id`),
	ADD FOREIGN KEY (`Clinical Support Id`) REFERENCES `Staff Clinical Support`(`Id`),
	ADD FOREIGN KEY (`Non-Medical Support Id`) REFERENCES `Staff Non-Medical Support`(`Id`),
	ADD FOREIGN KEY (`Pharmacy Id`) REFERENCES `Staff Pharmacy`(`Id`),
	ADD FOREIGN KEY (`Transport Id`) REFERENCES `Staff Transport`(`Id`),
	ADD FOREIGN KEY (`Teacher Id`) REFERENCES `Staff Teacher`(`Id`),
	ADD FOREIGN KEY (`Volunteer Id`) REFERENCES `Staff Volunteer`(`Id`);
ALTER TABLE `Staff Director`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Administration`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Doctor`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Nurse`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Medical Technician`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Therapist`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Clinical Support`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Non-Medical Support`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Pharmacy`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Transport`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Teacher`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Staff Volunteer`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Position Id`) REFERENCES `Management Position`(`Id`),
	ADD FOREIGN KEY (`Attendance Id`) REFERENCES `Document Attendance`(`Id`);
ALTER TABLE `Profile Profile`
;
ALTER TABLE `Patient Patient`
	ADD FOREIGN KEY (`Profile Id`) REFERENCES `Profile Profile`(`Id`);
ALTER TABLE `Patient Consent Form`
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Consent Form Id`) REFERENCES `Document Consent Form`(`Id`);
ALTER TABLE `Patient Prescription`
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`);
ALTER TABLE `Patient Invoice`
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`);
ALTER TABLE `Patient Lab Report`
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Lab Report Id`) REFERENCES `Document Lab Report`(`Id`);
ALTER TABLE `Patient Medical Record`
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Medical Record Id`) REFERENCES `Document Patient Medical Record`(`Id`);
ALTER TABLE `Schedule Shift`
;
ALTER TABLE `Schedule Schedule`
	ADD FOREIGN KEY (`Shift Id`) REFERENCES `Schedule Shift`(`Id`),
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`General Id`) REFERENCES `Schedule General`(`Id`),
	ADD FOREIGN KEY (`Appointment Id`) REFERENCES `Schedule Appointment`(`Id`),
	ADD FOREIGN KEY (`Emergency Id`) REFERENCES `Schedule Emergency`(`Id`),
	ADD FOREIGN KEY (`Maintenance Id`) REFERENCES `Schedule Maintenance`(`Id`),
	ADD FOREIGN KEY (`Vehicle Id`) REFERENCES `Schedule Vehicle`(`Id`);
ALTER TABLE `Schedule General`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`);
ALTER TABLE `Schedule Appointment`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`);
ALTER TABLE `Schedule Emergency`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`);
ALTER TABLE `Schedule Maintenance`
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Schedule Vehicle`
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`);
ALTER TABLE `Document Directive`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`);
ALTER TABLE `Document Invoice`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Issuer Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Recipient Id`) REFERENCES `Profile Profile`(`Id`);
ALTER TABLE `Document Invoice Expanded`
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`),
	ADD FOREIGN KEY (`Consumable Id`) REFERENCES `Consumable Consumable`(`Id`),
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`);
ALTER TABLE `Document Prescription`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Issuer Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Invoice Id`) REFERENCES `Document Invoice`(`Id`);
ALTER TABLE `Document Prescription Expanded`
	ADD FOREIGN KEY (`Consumable Id`) REFERENCES `Consumable Consumable`(`Id`),
	ADD FOREIGN KEY (`Prescription Id`) REFERENCES `Document Prescription`(`Id`);
ALTER TABLE `Document Consent Form`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Consenter Profile Id`) REFERENCES `Profile Profile`(`Id`);
ALTER TABLE `Document Emergency Report`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Schedule Id`) REFERENCES `Schedule Schedule`(`Id`);
ALTER TABLE `Document Patient Medical Record`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Schedule Id`) REFERENCES `Schedule Schedule`(`Id`);
ALTER TABLE `Document Lab Report`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`),
	ADD FOREIGN KEY (`Schedule Id`) REFERENCES `Schedule Schedule`(`Id`);
ALTER TABLE `Document Report`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Issuer Id`) REFERENCES `Staff Staff`(`Id`);
ALTER TABLE `Document Insurance`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Holder Profile Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Provider Representative Profile Id`) REFERENCES `Profile Profile`(`Id`);
ALTER TABLE `Document Attendance`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Schedule Id`) REFERENCES `Schedule Schedule`(`Id`);
ALTER TABLE `Document Contracts`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Department Id`) REFERENCES `Management Department`(`Id`),
	ADD FOREIGN KEY (`Issuer Id`) REFERENCES `Profile Profile`(`Id`),
	ADD FOREIGN KEY (`Signee Id`) REFERENCES `Profile Profile`(`Id`);
ALTER TABLE `Document Meeting Minutes`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Schedule Id`) REFERENCES `Schedule Schedule`(`Id`);
ALTER TABLE `Document Medical Equipment Logs`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Patient Id`) REFERENCES `Patient Patient`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`),
	ADD FOREIGN KEY (`Schedule Id`) REFERENCES `Schedule Schedule`(`Id`);
ALTER TABLE `Document Maintenance Logs`
	ADD FOREIGN KEY (`Approved By Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Staff Id`) REFERENCES `Staff Staff`(`Id`),
	ADD FOREIGN KEY (`Report Id`) REFERENCES `Document Report`(`Id`),
	ADD FOREIGN KEY (`Room Id`) REFERENCES `Room Room`(`Id`),
	ADD FOREIGN KEY (`Inventory Id`) REFERENCES `Inventory Inventory`(`Id`),
	ADD FOREIGN KEY (`Schedule Id`) REFERENCES `Schedule Schedule`(`Id`);
