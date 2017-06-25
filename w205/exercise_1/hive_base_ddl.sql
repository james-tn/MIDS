DROP TABLE HOSPITALS;

CREATE EXTERNAL TABLE HOSPITALS (Provider_ID string, Hospital_Name string, Address string, City string, State string, Zip_Code string, County_Name string, Phone_Number string, Hospital_Type string, Hospital_Ownership string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"',  "escapeChar" = '\\')
STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/hospitals';

DROP TABLE EFFECTIVE_CARE;
CREATE EXTERNAL TABLE EFFECTIVE_CARE (Provider_ID string, Hospital_Name string, Address string, City string, State string, Zip_Code string, County_Name string, Phone_Number string, Condition string, 
Measure_ID string, Measure_Name string, Score string, Sample string, Foot_Note string, Measure_Start_Date Date, Measure_End_Date Date )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"',  "escapeChar" = '\\')
STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/effective_care';


DROP TABLE READMISSIONS;
CREATE EXTERNAL TABLE READMISSIONS (Provider_ID string, Hospital_Name string, Address string, City string, State string, Zip_Code string, County_Name string, Phone_Number string, Measure_Name string, 
Measure_ID string,Compared_To_National string, Denominator string,  Score string,Lower_Estimate string, Higher_Estimate string,  Foot_Note string, Measure_Start_Date Date, Measure_End_Date Date )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"',  "escapeChar" = '\\')
STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/readmissions';


DROP TABLE MEASURES;
CREATE EXTERNAL TABLE MEASURES (Measure_Name string, Measure_ID string, Measure_Start_Quarter string,  Measure_Start_Date Date, Measure_End_Quarter string, Measure_End_Date Date )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"',  "escapeChar" = '\\')
STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/measures';


DROP TABLE SURVEYS_RESPONSES;
CREATE EXTERNAL TABLE SURVEYS_RESPONSES (Provider_ID string, Hospital_Name string, Address string, City string, State string, Zip_Code string, County_Name string,Nurse_Achievment string, Nurse_Improvement string, Nurse_Dimension string, Doctor_Achievement string, Doctor_Improvement string, Doctor_Dimension string, Staff_Achievement string, Staff_Improvement string, Staff_Dimension string, Management_Achivement string, Management_Improvement string, Management_Dimension string, Med_Achivement string, Med_Improvement string, Med_Dimension string, Env_Achievement string, Env_Improvement string, Env_Dimension string, Discharge_Achivement string, Discharge_Improvement string, Discharge_Dimension string, Overall_Achivement string, Overall_Improvement string, Overall_Dimension string )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"',  "escapeChar" = '\\')
STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/surveys_responses';

