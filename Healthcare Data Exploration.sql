-- Retrieve the top 5 rows of data to understand the structure and data types
SELECT TOP 5 *
FROM healthcare_dataset;

-- Calculate basic summary statistics for numeric columns
SELECT 
    AVG(Age) AS avg_age,
    MIN(Age) AS min_age,
    MAX(Age) AS max_age,
    AVG(Billing_Amount) AS avg_billing_amount,
    MIN(Billing_Amount) AS min_billing_amount,
    MAX(Billing_Amount) AS max_billing_amount
FROM healthcare_dataset;

-- To know the number of patients by gender and medical condition
SELECT 
    Gender, 
    Medical_Condition, 
    COUNT(*) AS patient_count
FROM healthcare_dataset
GROUP BY Gender, Medical_Condition
ORDER BY patient_count DESC;

-- Calculate the average billing amount for each medical condition
SELECT 
    Medical_Condition, 
    AVG(Billing_Amount) AS avg_billing_amount
FROM healthcare_dataset
GROUP BY Medical_Condition
ORDER BY avg_billing_amount DESC;

-- Calculate the length of stay for each patient
SELECT 
    Name, 
	Discharge_Date,
	Date_of_Admission,
    DATEDIFF(day, Date_of_Admission, Discharge_Date) AS length_of_stay
FROM healthcare_dataset;

-- Calculate by Average billing amount per Hospitals
SELECT Hospital, 
    AVG(Billing_Amount) AS avg_billing_amount
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY avg_billing_amount DESC 


-- Count the number of patients for each blood type
SELECT 
    Blood_Type, 
    COUNT(*) AS patient_count
FROM healthcare_dataset
GROUP BY Blood_Type
ORDER BY patient_count DESC;

-- Count of patients by admission type and their test results
SELECT 
    Admission_Type, 
    Test_Results, 
    COUNT(*) AS patient_count
FROM healthcare_dataset
GROUP BY Admission_Type, Test_Results
ORDER BY patient_count DESC;


--To know the type of medications given to patients with differnt medical conditions
SELECT Medication, Medical_Condition, count (*) as Prescription_count
FROM healthcare_dataset
GROUP BY Medication, Medical_Condition
ORDER BY Prescription_count DESC;

--To know the number of Dcotors available per medical conditions in different hospitals
SELECT Hospital,Medical_Condition, Doctor, Count (*) 
FROM healthcare_dataset
GROUP BY Hospital,Medical_Condition, Doctor;

