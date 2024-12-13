CREATE TABLE "Room"."Room" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Administrative" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Doctor" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Emergency" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Inpatient" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Outpatient" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Diagnosis" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Surgical" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Treatment" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Support" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Pharmacy" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Residential" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Visitor" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Utility" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Room"."Misc" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Consumable"."Consumable" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Consumable"."Pharmaceutical" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Consumable"."Medical Supplies" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Inventory"."Inventory" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Inventory"."Edible" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Inventory"."Medical Equipment" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Inventory"."Supplies" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Inventory"."Electronic" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Inventory"."Vehicle" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Budget"."Budget" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Budget"."Department Budget" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Budget"."Expense" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Budget"."Compensations" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Budget"."Revenue" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Budget"."Cash Flow" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Management"."Board" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Management"."Research Team" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Management"."Department" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Management"."Position" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Staff" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Director" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Administration" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Doctor" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Nurse" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Medical Technician" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Therapist" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Clinical Support" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Non-Medical Support" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Pharmacy" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Transport" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Teacher" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Staff"."Volunteer" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Profile"."Profile" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Patient"."Patient" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Patient"."Consent Form" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Patient"."Prescription" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Patient"."Invoice" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Patient"."Lab Report" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Patient"."Medical Record" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Schedule"."Shift" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Schedule"."Schedule" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Schedule"."General" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Schedule"."Appointment" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Schedule"."Emergency" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Schedule"."Maintenance" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Schedule"."Vehicle" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Directive" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Invoice" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Invoice Expanded" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Prescription" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Prescription Expanded" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Consent Form" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Emergency Report" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Patient Medical Record" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Lab Report" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Report" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Insurance" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Attendance" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Contracts" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Meeting Minutes" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Medical Equipment Logs" (
"Id" SERIAL PRIMARY KEY
);
CREATE TABLE "Document"."Maintenance Logs" (
"Id" SERIAL PRIMARY KEY
);
