CREATE TABLE "Room"."Room" (
	"Id" SERIAL PRIMARY KEY,
	"Administrative Id" SERIAL, FOREIGN KEY ("Administrative Id") REFERENCES "Administrative"(Id),
	"Doctor Id" SERIAL, FOREIGN KEY ("Doctor Id") REFERENCES "Doctor"(Id),
	"Emergency Id" SERIAL, FOREIGN KEY ("Emergency Id") REFERENCES "Emergency"(Id),
	"Inpatient Id" SERIAL, FOREIGN KEY ("Inpatient Id") REFERENCES "Inpatient"(Id),
	"Outpatient Id" SERIAL, FOREIGN KEY ("Outpatient Id") REFERENCES "Outpatient"(Id),
	"Diagnosis Id" SERIAL, FOREIGN KEY ("Diagnosis Id") REFERENCES "Diagnosis"(Id),
	"Surgical Id" SERIAL, FOREIGN KEY ("Surgical Id") REFERENCES "Surgical"(Id),
	"Treatment Id" SERIAL, FOREIGN KEY ("Treatment Id") REFERENCES "Treatment"(Id),
	"Support Id" SERIAL, FOREIGN KEY ("Support Id") REFERENCES "Support"(Id),
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Pharmacy"(Id),
	"Residential Id" SERIAL, FOREIGN KEY ("Residential Id") REFERENCES "Residential"(Id),
	"Visitor Id" SERIAL, FOREIGN KEY ("Visitor Id") REFERENCES "Visitor"(Id),
	"Utility Id" SERIAL, FOREIGN KEY ("Utility Id") REFERENCES "Utility"(Id),
	"Misc Id" SERIAL, FOREIGN KEY ("Misc Id") REFERENCES "Misc"(Id),
);
CREATE TABLE "Room"."Administrative" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Executive Level" INTEGER,
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Department"(Id),
);
CREATE TABLE "Room"."Doctor" (
	"Id" SERIAL PRIMARY KEY,
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Room"."Emergency" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Critical Level" INTEGER,
	"Description" TEXT,
);
CREATE TABLE "Room"."Inpatient" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Intensive Care" BOOLEAN,
	"Description" TEXT,
);
CREATE TABLE "Room"."Outpatient" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Room"."Diagnosis" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Facilities List" TEXT[],
	"Description" TEXT,
);
CREATE TABLE "Room"."Surgical" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Availability" BOOLEAN,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Surgery Type" VARCHAR(255),
	"Attached Teaching Area" BOOLEAN,
);
CREATE TABLE "Room"."Treatment" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Availability" BOOLEAN,
	"Facilities List" TEXT[],
);
CREATE TABLE "Room"."Support" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Room"."Pharmacy" (
	"Id" SERIAL PRIMARY KEY,
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Room"."Residential" (
	"Id" SERIAL PRIMARY KEY,
	"Type" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Room"."Visitor" (
	"Id" SERIAL PRIMARY KEY,
	"Type" VARCHAR(255),
	"Floor" INTEGER,
	"Capacity" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Room"."Utility" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Floor" INTEGER,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Utility Type" VARCHAR(255),
	"Utility Output Unit" NUMERIC(5, 2),
);
CREATE TABLE "Room"."Misc" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Type" VARCHAR(255),
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Capacity" INTEGER,
	"Area Unit" NUMERIC(5, 2),
);
CREATE TABLE "Consumable"."Consumable" (
	"Id" SERIAL PRIMARY KEY,
	"Pharmaceutical Id" SERIAL, FOREIGN KEY ("Pharmaceutical Id") REFERENCES "Pharmaceutical"(Id),
	"Medical Supplies Id" SERIAL, FOREIGN KEY ("Medical Supplies Id") REFERENCES "Medical Supplies"(Id),
);
CREATE TABLE "Consumable"."Pharmaceutical" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Quantity" INTEGER,
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Pharmacy"(Id),
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
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Pharmacy"(Id),
);
CREATE TABLE "Inventory"."Inventory" (
	"Id" SERIAL PRIMARY KEY,
	"Edibles Id" SERIAL, FOREIGN KEY ("Edibles Id") REFERENCES "Edibles"(Id),
	"Medical Equipment Id" SERIAL, FOREIGN KEY ("Medical Equipment Id") REFERENCES "Medical Equipment"(Id),
	"Supplies Id" SERIAL, FOREIGN KEY ("Supplies Id") REFERENCES "Supplies"(Id),
	"Electronic Id" SERIAL, FOREIGN KEY ("Electronic Id") REFERENCES "Electronic"(Id),
	"Vehicle Id" SERIAL, FOREIGN KEY ("Vehicle Id") REFERENCES "Vehicle"(Id),
);
CREATE TABLE "Inventory"."Edible" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Quantity" INTEGER,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
);
CREATE TABLE "Inventory"."Medical Equipment" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Expiration Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Availability" BOOLEAN,
	"Maintenance Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Maintenance Schedule Id") REFERENCES "Maintenance Schedule"(Id),
	"Maintenance Logs Id" SERIAL, FOREIGN KEY ("Maintenance Logs Id") REFERENCES "Maintenance Logs"(Id),
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
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Medical" BOOLEAN,
);
CREATE TABLE "Inventory"."Vehicle" (
	"Id" SERIAL PRIMARY KEY,
	"Type" VARCHAR(255),
	"Purchase Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Availability" BOOLEAN,
	"Maintenance Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Maintenance Schedule Id") REFERENCES "Maintenance Schedule"(Id),
	"Maintenance Logs Id" SERIAL, FOREIGN KEY ("Maintenance Logs Id") REFERENCES "Maintenance Logs"(Id),
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
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Department"(Id),
);
CREATE TABLE "Budget"."Expense" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Department"(Id),
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Cashflow Id" SERIAL, FOREIGN KEY ("Cashflow Id") REFERENCES "Cashflow"(Id),
);
CREATE TABLE "Budget"."Compensations" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Cashflow Id" SERIAL, FOREIGN KEY ("Cashflow Id") REFERENCES "Cashflow"(Id),
);
CREATE TABLE "Budget"."Revenue" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Description" TEXT,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Department"(Id),
	"Cashflow Id" SERIAL, FOREIGN KEY ("Cashflow Id") REFERENCES "Cashflow"(Id),
);
CREATE TABLE "Budget"."Cash Flow" (
	"Id" SERIAL PRIMARY KEY,
	"Amount" NUMERIC(12, 2) NOT NULL,
	"Balance" NUMERIC(12, 2) NOT NULL,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Type" VARCHAR(255),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
	"Record Editor Id" SERIAL, FOREIGN KEY ("Record Editor Id") REFERENCES "Record Editor"(Id),
	"Flow" VARCHAR(255),
);
CREATE TABLE "Management"."Board" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Management"."Research Team" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Department"(Id),
);
CREATE TABLE "Management"."Department" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
);
CREATE TABLE "Management"."Position" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Description" TEXT,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Department"(Id),
	"PayScale" INTEGER,
	"Compensation" NUMERIC(8, 2) NOT NULL,
	"Clearance Level" INTEGER,
);
CREATE TABLE "Staff"."Staff" (
	"Id" SERIAL PRIMARY KEY,
	"Director Id" SERIAL, FOREIGN KEY ("Director Id") REFERENCES "Director"(Id),
	"Administration Id" SERIAL, FOREIGN KEY ("Administration Id") REFERENCES "Administration"(Id),
	"Doctors Id" SERIAL, FOREIGN KEY ("Doctors Id") REFERENCES "Doctors"(Id),
	"Nurses Id" SERIAL, FOREIGN KEY ("Nurses Id") REFERENCES "Nurses"(Id),
	"Medical Technicians Id" SERIAL, FOREIGN KEY ("Medical Technicians Id") REFERENCES "Medical Technicians"(Id),
	"Therapists Id" SERIAL, FOREIGN KEY ("Therapists Id") REFERENCES "Therapists"(Id),
	"Clinical Support Id" SERIAL, FOREIGN KEY ("Clinical Support Id") REFERENCES "Clinical Support"(Id),
	"Non-Medical Support Id" SERIAL, FOREIGN KEY ("Non-Medical Support Id") REFERENCES "Non-Medical Support"(Id),
	"Pharmacy Id" SERIAL, FOREIGN KEY ("Pharmacy Id") REFERENCES "Pharmacy"(Id),
	"Transport Id" SERIAL, FOREIGN KEY ("Transport Id") REFERENCES "Transport"(Id),
	"Teachers Id" SERIAL, FOREIGN KEY ("Teachers Id") REFERENCES "Teachers"(Id),
	"Volunteers Id" SERIAL, FOREIGN KEY ("Volunteers Id") REFERENCES "Volunteers"(Id),
);
CREATE TABLE "Staff"."Directors" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Staff"."Administration" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Medical" BOOLEAN,
);
CREATE TABLE "Staff"."Doctors" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" TEXT[],
	"Licenses" TEXT[],
	"Specializations" TEXT[],
);
CREATE TABLE "Staff"."Nurses" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
	"Trainings" TEXT[],
);
CREATE TABLE "Staff"."Medical Technicians" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Therapists" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" TEXT[],
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Clinical Support" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Non-Medical Support" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);
CREATE TABLE "Staff"."Pharmacy" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Transport" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Licenses" TEXT[],
);
CREATE TABLE "Staff"."Teachers" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
	"Active" BOOLEAN,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Qualifications" TEXT[],
	"Trainings" TEXT[],
	"Specializations" TEXT[],
);
CREATE TABLE "Staff"."Volunteers" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Position Id" SERIAL NOT NULL, FOREIGN KEY ("Position Id") REFERENCES "Position"(Id),
	"Attendance Id" SERIAL, FOREIGN KEY ("Attendance Id") REFERENCES "Attendance"(Id),
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
CREATE TABLE "Patients"."Patient" (
	"Id" SERIAL PRIMARY KEY,
	"Profile Id" SERIAL, FOREIGN KEY ("Profile Id") REFERENCES "Profile"(Id),
	"Inpatient" BOOLEAN NOT NULL,
);
CREATE TABLE "Patients"."Consent Forms" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Consent Form Id" SERIAL, FOREIGN KEY ("Consent Form Id") REFERENCES "Consent Form"(Id),
);
CREATE TABLE "Patients"."Prescriptions" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
);
CREATE TABLE "Patients"."Invoice" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
);
CREATE TABLE "Patients"."Lab Reports" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Lap Report Id" SERIAL, FOREIGN KEY ("Lap Report Id") REFERENCES "Lap Report"(Id),
);
CREATE TABLE "Patients"."Medical Records" (
	"Id" SERIAL PRIMARY KEY,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Medical Record Id" SERIAL NOT NULL, FOREIGN KEY ("Medical Record Id") REFERENCES "Medical Record"(Id),
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
	"Shift Id" SERIAL, FOREIGN KEY ("Shift Id") REFERENCES "Shift"(Id),
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"General Id" SERIAL, FOREIGN KEY ("General Id") REFERENCES "General"(Id),
	"Appointments Id" SERIAL, FOREIGN KEY ("Appointments Id") REFERENCES "Appointments"(Id),
	"Emergency Id" SERIAL, FOREIGN KEY ("Emergency Id") REFERENCES "Emergency"(Id),
	"Maintenance Id" SERIAL, FOREIGN KEY ("Maintenance Id") REFERENCES "Maintenance"(Id),
	"Vahicle Id" SERIAL, FOREIGN KEY ("Vahicle Id") REFERENCES "Vahicle"(Id),
);
CREATE TABLE "Schedule"."General" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
);
CREATE TABLE "Schedule"."Appointments" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
);
CREATE TABLE "Schedule"."Emergency" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
);
CREATE TABLE "Schedule"."Maintenance" (
	"Id" SERIAL PRIMARY KEY,
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Schedule"."Vehicle" (
	"Id" SERIAL PRIMARY KEY,
	"Purpose" VARCHAR(255),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
);
CREATE TABLE "Document"."Directives" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
);
CREATE TABLE "Document"."Invoice" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Issue Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Payment Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Issuer"(Id),
	"Currency" VARCHAR(5),
	"Total Amount" NUMERIC(12, 2) NOT NULL,
	"Tax Amount" NUMERIC(12, 2) NOT NULL,
	"Issuer Name" VARCHAR(255),
	"Recipient Id" SERIAL, FOREIGN KEY ("Recipient Id") REFERENCES "Recipient"(Id),
	"Recipient Name" VARCHAR(255),
	"Payment Status" BOOLEAN,
);
CREATE TABLE "Document"."Invoice Expanded" (
	"Id" SERIAL PRIMARY KEY,
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Consumable Id" SERIAL, FOREIGN KEY ("Consumable Id") REFERENCES "Consumable"(Id),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
);
CREATE TABLE "Document"."Prescription" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Issuer"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Invoice Id" SERIAL, FOREIGN KEY ("Invoice Id") REFERENCES "Invoice"(Id),
);
CREATE TABLE "Document"."Prescription Expanded" (
	"Id" SERIAL PRIMARY KEY,
	"Consumable Id" SERIAL, FOREIGN KEY ("Consumable Id") REFERENCES "Consumable"(Id),
	"Prescription Id" SERIAL, FOREIGN KEY ("Prescription Id") REFERENCES "Prescription"(Id),
);
CREATE TABLE "Document"."Consent Forms" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Consenter Name" VARCHAR(255),
	"Consenter Profile Id" SERIAL, FOREIGN KEY ("Consenter Profile Id") REFERENCES "Consenter Profile"(Id),
);
CREATE TABLE "Document"."Emergency Reports" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"(Id),
	"Emergency Type" VARCHAR(255),
	"Surgery Type" VARCHAR(255),
	"Critical Level" INTEGER,
);
CREATE TABLE "Document"."Patient Medical Records" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"(Id),
	"Inpatient" BOOLEAN NOT NULL,
	"Diagnosis" TEXT,
	"Treatment" TEXT,
	"Additional Notes" TEXT,
);
CREATE TABLE "Document"."Lab Report" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Test  Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Result Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"(Id),
);
CREATE TABLE "Document"."Report" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Issuer"(Id),
);
CREATE TABLE "Document"."Insurance" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Approval Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Policy Type" VARCHAR(255),
	"Holder Profile Id" SERIAL, FOREIGN KEY ("Holder Profile Id") REFERENCES "Holder Profile"(Id),
	"Provider Name" VARCHAR(255),
	"Provider Representative Name" VARCHAR(255),
	"Provider Representative Profile Id" SERIAL, FOREIGN KEY ("Provider Representative Profile Id") REFERENCES "Provider Representative Profile"(Id),
	"Coverage Amount" NUMERIC(12, 2) NOT NULL,
	"Premium Amount" NUMERIC(12, 2) NOT NULL,
	"Claim Limit" NUMERIC(12, 2),
	"Status" TEXT,
);
CREATE TABLE "Document"."Attendance" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"(Id),
	"Attendance" BOOLEAN,
);
CREATE TABLE "Document"."Contracts" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Renew Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Contract Type" VARCHAR(255),
	"Status" TEXT,
	"Department Id" SERIAL, FOREIGN KEY ("Department Id") REFERENCES "Department"(Id),
	"Issuer Id" SERIAL, FOREIGN KEY ("Issuer Id") REFERENCES "Issuer"(Id),
	"Signee Id" SERIAL, FOREIGN KEY ("Signee Id") REFERENCES "Signee"(Id),
	"Payment Amount" NUMERIC(12, 2) NOT NULL,
	"Terms and Conditions Link" TEXT NOT NULL,
);
CREATE TABLE "Document"."Meeting Minutes" (
	"Id" SERIAL PRIMARY KEY,
	"Agenda" TEXT,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"(Id),
);
CREATE TABLE "Document"."Medical Equipment Logs" (
	"Id" SERIAL PRIMARY KEY,
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Patient Id" SERIAL NOT NULL, FOREIGN KEY ("Patient Id") REFERENCES "Patient"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"(Id),
);
CREATE TABLE "Document"."Maintenance Logs" (
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(255),
	"Document Link" TEXT NOT NULL,
	"Approved By Id" SERIAL NOT NULL, FOREIGN KEY ("Approved By Id") REFERENCES "Approved By"(Id),
	"Description" TEXT,
	"Start Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"End Date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"Staff Id" SERIAL, FOREIGN KEY ("Staff Id") REFERENCES "Staff"(Id),
	"Report Id" SERIAL, FOREIGN KEY ("Report Id") REFERENCES "Report"(Id),
	"Room Id" SERIAL, FOREIGN KEY ("Room Id") REFERENCES "Room"(Id),
	"Inventory Id" SERIAL, FOREIGN KEY ("Inventory Id") REFERENCES "Inventory"(Id),
	"Schedule Id" SERIAL NOT NULL, FOREIGN KEY ("Schedule Id") REFERENCES "Schedule"(Id),
);
