create database healthcare;
use healthcare;

CREATE TABLE Patient (
  PatientID INT PRIMARY KEY,
  Name VARCHAR(100),
  Address VARCHAR(100),
  DateOfBirth DATE,
  ContactNumber VARCHAR(20)
);

CREATE TABLE MedicalHistory (
  MedicalHistoryID INT PRIMARY KEY,
  PatientID INT,
  Diagnosis VARCHAR(100),
  Treatment VARCHAR(100),
  Surgery VARCHAR(100),
  Medication VARCHAR(100),
  FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE LabResults (
  LabResultID INT PRIMARY KEY,
  PatientID INT,
  TestType VARCHAR(100),
  TestResult VARCHAR(100),
  FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE Prescriptions (
  PrescriptionID INT PRIMARY KEY,
  PatientID INT,
  MedicationName VARCHAR(100),
  Dosage VARCHAR(50),
  Frequency VARCHAR(50),
  FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE Outcome (
  OutcomeID INT PRIMARY KEY,
  PatientID INT,
  ReadmissionRate FLOAT,
  MedicationAdherence FLOAT,
  FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

SELECT * FROM Patient;


SELECT * FROM MedicalHistory WHERE PatientID = 1;


SELECT * FROM LabResults WHERE PatientID = 1;


SELECT * FROM Prescriptions WHERE PatientID = 1;


SELECT * FROM Outcome WHERE PatientID = 1;
