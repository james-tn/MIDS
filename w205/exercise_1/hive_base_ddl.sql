DROP TABLE HOSPITALS;

CREATE EXTERNAL TABLE HOSPITALS (Provider_ID string, Hospital_Name string, Address string, City string, State string, Zip_Code string, County_Name string, Phone_Number string, Hospital_Type string, Hospital_Ownership string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( "separatorChar" = ",",  "quoteChar" = '"',  "escapeChar" = '\\' ) 
STORED AS TEXTFILE LOCATION ‘/user/w205/hospital_compare/hospital.csv’; 
