CREATE TABLE "Room"."Room" (
	"Id" SERIAL PRIMARY KEY,
	"Administrative Id" SERIAL, FOREIGN KEY ("Administrative Id") REFERENCES "Room"."Administrative"(Id),
	"Doctor Id" SERIAL, FOREIGN KEY ("Doctor Id") REFERENCES "Room"."Doctor"(Id),
	"Emergency Id" SERIAL, FOREIGN KEY ("Emergency Id") REFERENCES "Room"."Emergency"(Id),
	"Inpatient Id" SERIAL, FOREIGN KEY ("Inpatient Id") REFERENCES "Room"."Inpatient"(Id),
	"Outpatient Id" SERIAL, FOREIGN KEY ("Outpatient Id") REFERENCES "Room"."Outpatient"(Id),
	"Diagnosis Id" SERIAL, FOREIGN KEY ("Diagnosis Id") REFERENCES "Room"."Diagnosis"(Id),
	"Surgical Id" SERIAL, FOREIGN KEY ("Surgical Id") REFERENCES "Room"."Surgical"(Id),
	"Treatment Id" SERIAL, FOREIGN KEY ("Treatment Id") REFERENCES "Room"."Treatment"(Id),
	"Support Id" SERIAL, FOREIGN KEY ("Support Id") REFERENCES "Room"."Support"(Id),
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Room"."Pharmacy"(Id),
	"Residential Id" SERIAL, FOREIGN KEY ("Residential Id") REFERENCES "Room"."Residential"(Id),
	"Visitor Id" SERIAL, FOREIGN KEY ("Visitor Id") REFERENCES "Room"."Visitor"(Id),
	"Utility Id" SERIAL, FOREIGN KEY ("Utility Id") REFERENCES "Room"."Utility"(Id),
	"Misc Id" SERIAL, FOREIGN KEY ("Misc Id") REFERENCES "Room"."Misc"(Id),
);
CREATE TABLE "Room"."Administrative" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Executive Level" INTEGER,
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Management"."Department"(Id),
);
CREATE TABLE "Room"."Doctor" (
	"Id" SERIAL PRIMARY KEY,
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
);
CREATE TABLE "Room"."Emergency" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Critical Level" INTEGER,
	"Description" TEXT,
);
CREATE TABLE "Room"."Inpatient" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"INTEGERensive Care" BOOLEAN,
	"Description" TEXT,
);
CREATE TABLE "Room"."Outpatient" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
);
CREATE TABLE "Room"."Diagnosis" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Facilities List" TEXT[],
	"Description" TEXT,
);
CREATE TABLE "Room"."Surgical" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Surgery Type" VARCHAR(255),
	"Attached Teaching Area" BOOLEAN,
);
CREATE TABLE "Room"."Treatment" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Availability" BOOLEAN,
	"Facilities List" TEXT[],
);
CREATE TABLE "Room"."Support" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
);
CREATE TABLE "Room"."Pharmacy" (
	"Id" SERIAL PRIMARY KEY,
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
);
CREATE TABLE "Room"."Residential" (
	"Id" SERIAL PRIMARY KEY,
	"Type" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
);
CREATE TABLE "Room"."Visitor" (
	"Id" SERIAL PRIMARY KEY,
	"Type" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
);
CREATE TABLE "Room"."Utility" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Utility Type" INTEGER,
	"Utility Output Unit" NUMERIC(5, 2),
);
CREATE TABLE "Room"."Misc" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Type" VARCHAR(255),
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Capacity" INTEGER,
	"Area Unit" NUMERIC(5, 2),
);
CREATE TABLE "Consumable"."Consumable" (
	"Id" SERIAL PRIMARY KEY,
	"Pharmaceutical Id" SERIAL, FOREIGN KEY ("Pharmaceutical Id") REFERENCES "Consumable"."Pharmaceutical"(Id),
	"Medical Supplies Id" SERIAL, FOREIGN KEY ("Medical Supplies Id") REFERENCES "Consumable"."Medical Supplies"(Id),
);
CREATE TABLE "Consumable"."Pharmaceutical" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Quantity" INTEGER,
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Room"."Pharmacy"(Id),
	"Brand" TEXT,
	"Type" VARCHAR(255),
	"Volume Unit" NUMERIC(5, 2),
	"Weight Unit" NUMERIC(5, 2),
	"Package Size Unit" NUMERIC(5, 2),
);
CREATE TABLE "Consumable"."Medical Supplies" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Quantity" INTEGER,
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Room"."Pharmacy"(Id),
);
CREATE TABLE "Inventory"."Inventory" (
	"Id" SERIAL PRIMARY KEY,
	"Edible Id" SERIAL, FOREIGN KEY ("Edible Id") REFERENCES "Inventory"."Edible"(Id),
	"Medical Equipment Id" SERIAL, FOREIGN KEY ("Medical Equipment Id") REFERENCES "Inventory"."Medical Equipment"(Id),
	"Supplies Id" SERIAL, FOREIGN KEY ("Supplies Id") REFERENCES "Inventory"."Supplies"(Id),
	"Electronic Id" SERIAL, FOREIGN KEY ("Electronic Id") REFERENCES "Inventory"."Electronic"(Id),
	"Vehicle Id" SERIAL, FOREIGN KEY ("Vehicle Id") REFERENCES "Inventory"."Vehicle"(Id),
);
CREATE TABLE "Inventory"."Edible" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Quantity" INTEGER,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
);
CREATE TABLE "Inventory"."Medical Equipment" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Availability" BOOLEAN,
	"Maintenance Schedule Id" SERIAL, FOREIGN KEY ("Maintenance Schedule Id") REFERENCES "Schedule"."Maintenance Schedule"(Id),
	"Maintenance Logs Id" SERIAL, FOREIGN KEY ("Maintenance Logs Id") REFERENCES "Document"."Maintenance Logs"(Id),
);
CREATE TABLE "Inventory"."Supplies" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Quantity" INTEGER,
);
CREATE TABLE "Inventory"."Electronic" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Medical" BOOLEAN,
);
CREATE TABLE "Inventory"."Vehicle" (
	"Id" SERIAL PRIMARY KEY,
	"Type" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Availability" BOOLEAN,
	"Maintenance Schedule Id" SERIAL, FOREIGN KEY ("Maintenance Schedule Id") REFERENCES "Schedule"."Maintenance Schedule"(Id),
	"Maintenance Logs Id" SERIAL, FOREIGN KEY ("Maintenance Logs Id") REFERENCES "Document"."Maintenance Logs"(Id),
	"Model" TEXT,
	"Purpose" VARCHAR(255),
	"Capacity" INTEGER,
);
CREATE TABLE "Budget"."Budget" (
	"Id" SERIAL PRIMARY KEY,
	"Total Amount" NUMERIC(12, 2) NOT NULL,
	"Allocated Amount" NUMERIC(12, 2) NOT NULL,
	"Remaining Amount" NUMERIC(12, 2) NOT NULL,
	"Year" INTEGER,
	"Description" TEXT,
);
CREATE TABLE "Budget"."Department Budget" (
	"Id" SERIAL PRIMARY KEY,
	"Total Amount" NUMERIC(12, 2) NOT NULL,
	"Allocated Amount" NUMERIC(12, 2) NOT NULL,
	"Remaining Amount" NUMERIC(12, 2) NOT NULL,
	"Year" INTEGER,
	"Description" TEXT,
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Management"."Department"(Id),
);
CREATE TABLE "Budget"."Expense" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Management"."Department"(Id),
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Cash Flow Id" SERIAL, FOREIGN KEY ("Cash Flow Id") REFERENCES "Budget"."Cash Flow"(Id),
);
CREATE TABLE "Budget"."Compensations" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Cash Flow Id" SERIAL, FOREIGN KEY ("Cash Flow Id") REFERENCES "Budget"."Cash Flow"(Id),
);
CREATE TABLE "Budget"."Revenue" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Management"."Department"(Id),
	"Cash Flow Id" SERIAL, FOREIGN KEY ("Cash Flow Id") REFERENCES "Budget"."Cash Flow"(Id),
);
CREATE TABLE "Budget"."Cash Flow" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Balance" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
	"Record Editor Id" SERIAL, FOREIGN KEY ("Record Editor Id") REFERENCES "Staff"."Staff"(Id),
	"Flow" VARCHAR(255),
);
CREATE TABLE "Management"."Board" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Management"."Research Team" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Management"."Department"(Id),
);
CREATE TABLE "Management"."Department" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
);
CREATE TABLE "Management"."Position" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Management"."Department"(Id),
	"PayScale" INTEGER,
	"Compensation" NUMERIC(8, 2) NOT NULL,
	"Clearance Level" INTEGER,
);
CREATE TABLE "Staff"."Staff" (
	"Id" SERIAL PRIMARY KEY,
	"Director Id" SERIAL, FOREIGN KEY ("Director Id") REFERENCES "Staff"."Director"(Id),
	"Administration Id" SERIAL, FOREIGN KEY ("Administration Id") REFERENCES "Staff"."Administration"(Id),
	"Doctor Id" SERIAL, FOREIGN KEY ("Doctor Id") REFERENCES "Staff"."Doctor"(Id),
	"Nurse Id" SERIAL, FOREIGN KEY ("Nurse Id") REFERENCES "Staff"."Nurse"(Id),
	"Medical Technician Id" SERIAL, FOREIGN KEY ("Medical Technician Id") REFERENCES "Staff"."Medical Technician"(Id),
	"Therapist Id" SERIAL, FOREIGN KEY ("Therapist Id") REFERENCES "Staff"."Therapist"(Id),
	"Clinical Support Id" SERIAL, FOREIGN KEY ("Clinical Support Id") REFERENCES "Staff"."Clinical Support"(Id),
	"Non-Medical Support Id" SERIAL, FOREIGN KEY ("Non-Medical Support Id") REFERENCES "Staff"."Non-Medical Support"(Id),
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Staff"."Pharmacy"(Id),
	"Transport Id" SERIAL, FOREIGN KEY ("Transport Id") REFERENCES "Staff"."Transport"(Id),
	"Teacher Id" SERIAL, FOREIGN KEY ("Teacher Id") REFERENCES "Staff"."Teacher"(Id),
	"Volunteer Id" SERIAL, FOREIGN KEY ("Volunteer Id") REFERENCES "Staff"."Volunteer"(Id),
);
CREATE TABLE "Staff"."Director" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Staff"."Administration" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Medical" BOOLEAN,
);
CREATE TABLE "Staff"."Doctor" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" TEXT[],
	"Licenses" TEXT[],
	"Specializations" TEXT[],
);
CREATE TABLE "Staff"."Nurse" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
	"Trainings" TEXT[],
);
CREATE TABLE "Staff"."Medical Technician" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Therapist" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" TEXT[],
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Clinical Support" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Non-Medical Support" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Staff"."Pharmacy" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Transport" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Teacher" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" TEXT[],
	"Trainings" TEXT[],
	"Specializations" TEXT[],
);
CREATE TABLE "Staff"."Volunteer" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Position Id" SERIAL, FOREIGN KEY ("Position Id") REFERENCES "Management"."Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Document"."Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Profile"."Profile" (
	"Id" SERIAL PRIMARY KEY,
	"First Name" VARCHAR(255),
	"Last Name" VARCHAR(255),
	"Contact Number" VARCHAR(15),
	"Emergency Contact Number" VARCHAR(15),
	"Address 1" TEXT,
	"Address 2" TEXT,
	"Email" VARCHAR(30),
);
CREATE TABLE "Patient"."Patient" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Inpatient" BOOLEAN NOT NULL,
);
CREATE TABLE "Patient"."Consent Form" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Consent Form Id" SERIAL, FOREIGN KEY ("Consent Form Id") REFERENCES "Document"."Consent Form"(Id),
);
CREATE TABLE "Patient"."Prescription" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
);
CREATE TABLE "Patient"."Invoice" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
);
CREATE TABLE "Patient"."Lab Report" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Lab Report Id" SERIAL, FOREIGN KEY ("Lab Report Id") REFERENCES "Document"."Lab Report"(Id),
);
CREATE TABLE "Patient"."Medical Record" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Medical Record Id" SERIAL, FOREIGN KEY ("Medical Record Id") REFERENCES "Document"."Medical Record"(Id),
);
CREATE TABLE "Schedule"."Shift" (
	"Id" SERIAL PRIMARY KEY,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Shift Name" VARCHAR(255),
);
CREATE TABLE "Schedule"."Schedule" (
	"Id" SERIAL PRIMARY KEY,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Name" VARCHAR(255),
	"Shift Id" SERIAL, FOREIGN KEY ("Shift Id") REFERENCES "Schedule"."Shift"(Id),
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"General Id" SERIAL, FOREIGN KEY ("General Id") REFERENCES "Schedule"."General"(Id),
	"Appointment Id" SERIAL, FOREIGN KEY ("Appointment Id") REFERENCES "Schedule"."Appointment"(Id),
	"Emergency Id" SERIAL, FOREIGN KEY ("Emergency Id") REFERENCES "Schedule"."Emergency"(Id),
	"Maintenance Id" SERIAL, FOREIGN KEY ("Maintenance Id") REFERENCES "Schedule"."Maintenance"(Id),
	"Vahicle Id" SERIAL, FOREIGN KEY ("Vahicle Id") REFERENCES "Schedule"."Vahicle"(Id),
);
CREATE TABLE "Schedule"."General" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
);
CREATE TABLE "Schedule"."Appointment" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
);
CREATE TABLE "Schedule"."Emergency" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
);
CREATE TABLE "Schedule"."Maintenance" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
);
CREATE TABLE "Schedule"."Vehicle" (
	"Id" SERIAL PRIMARY KEY,
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Purpose" VARCHAR(255),
);
CREATE TABLE "Document"."Directive" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
);
CREATE TABLE "Document"."Invoice" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Issue Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Payment Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Profile"."Profile"(Id),
	"Currency" VARCHAR(5),
	"Total Amount" NUMERIC(12, 2) NOT NULL,
	"Tax Amount" NUMERIC(12, 2) NOT NULL,
	"Issuer Name" VARCHAR(255),
	"Recipient Id" SERIAL, FOREIGN KEY ("Recipient Id") REFERENCES "Profile"."Profile"(Id),
	"Recipient Name" VARCHAR(255),
	"Payment Status" BOOLEAN,
);
CREATE TABLE "Document"."Invoice Expanded" (
	"Id" SERIAL PRIMARY KEY,
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Consumable Id" SERIAL, FOREIGN KEY ("Consumable Id") REFERENCES "Consumable"."Consumable"(Id),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
);
CREATE TABLE "Document"."Prescription" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Profile"."Profile"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Document"."Invoice"(Id),
);
CREATE TABLE "Document"."Prescription Expanded" (
	"Id" SERIAL PRIMARY KEY,
	"Consumable Id" SERIAL, FOREIGN KEY ("Consumable Id") REFERENCES "Consumable"."Consumable"(Id),
	"Prescription Id" SERIAL, FOREIGN KEY ("Prescription Id") REFERENCES "Document"."Prescription"(Id),
);
CREATE TABLE "Document"."Consent Form" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Consenter Name" VARCHAR(255),
	"Consenter Profile Id" SERIAL, FOREIGN KEY ("Consenter Profile Id") REFERENCES "Profile"."Profile"(Id),
);
CREATE TABLE "Document"."Emergency Report" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Schedule Id" SERIAL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"."Schedule"(Id),
	"Emergency Type" VARCHAR(255),
	"Surgery Type" VARCHAR(255),
	"Critical Level" INTEGER,
);
CREATE TABLE "Document"."Patient Medical Record" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Schedule Id" SERIAL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"."Schedule"(Id),
	"Inpatient" BOOLEAN NOT NULL,
	"Diagnosis" TEXT,
	"Treatment" TEXT,
	"Additional Notes" TEXT,
);
CREATE TABLE "Document"."Lab Report" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Test  Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Result Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Schedule Id" SERIAL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"."Schedule"(Id),
);
CREATE TABLE "Document"."Report" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Profile"."Profile"(Id),
);
CREATE TABLE "Document"."Insurance" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Approval Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Policy Type" VARCHAR(255),
	"Holder Profile Id" SERIAL, FOREIGN KEY ("Holder Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Provider Name" VARCHAR(255),
	"Provider Representative Name" VARCHAR(255),
	"Provider Representative Profile Id" SERIAL, FOREIGN KEY ("Provider Representative Profile Id") REFERENCES "Profile"."Profile"(Id),
	"Coverage Amount" NUMERIC(12, 2) NOT NULL,
	"Premium Amount" NUMERIC(12, 2) NOT NULL,
	"Claim Limit" NUMERIC(12, 2),
	"Status" TEXT,
);
CREATE TABLE "Document"."Attendance" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Schedule Id" SERIAL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"."Schedule"(Id),
	"Attendance" BOOLEAN,
);
CREATE TABLE "Document"."Contracts" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Renew Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Contract Type" VARCHAR(255),
	"Status" TEXT,
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Management"."Department"(Id),
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Profile"."Profile"(Id),
	"Signee Id" SERIAL, FOREIGN KEY ("Signee Id") REFERENCES "Profile"."Profile"(Id),
	"Payment Amount" NUMERIC(12, 2) NOT NULL,
	"Terms and Conditions Link" TEXT NOT NULL,
);
CREATE TABLE "Document"."Meeting Minutes" (
	"Id" SERIAL PRIMARY KEY,
	"Agenda" TEXT,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Schedule Id" SERIAL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"."Schedule"(Id),
);
CREATE TABLE "Document"."Medical Equipment Logs" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Patient Id" SERIAL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"."Patient"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Schedule Id" SERIAL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"."Schedule"(Id),
);
CREATE TABLE "Document"."Maintenance Logs" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" INTEGER NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Staff"."Staff"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"."Staff"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Document"."Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"."Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"."Inventory"(Id),
	"Schedule Id" SERIAL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"."Schedule"(Id),
);
