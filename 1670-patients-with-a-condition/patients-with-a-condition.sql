# Write your MySQL query statement below
SELECT  patient_id , patient_name , conditions 
from Patients 
where conditions REGEXP '(^| )DIAB1';