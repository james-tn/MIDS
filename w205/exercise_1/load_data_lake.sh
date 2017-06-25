tail -n+2 /data/'Hospital General Information.csv' > /data/hospital.csv
tail -n+2  /data/'Timely and Effective Care - Hospital.csv' > /data/effective_care.csv
tail -n+2  /data/'Readmissions and Deaths - Hospital.csv' > /data/readmissions.csv
tail -n+2  /data/'Measure Dates.csv' > /data/measures.csv
tail -n+2 /data/'hvbp_hcahps_05_28_2015.csv' > /data/surveys_responses.csv

hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -mkdir /user/w205/hospital_compare/measures
hdfs dfs -mkdir /user/w205/hospital_compare/surveys_reponses






hdfs dfs -put  /data/hospital.csv /user/w205/hospital_compare/hospitals
hdfs dfs -put  /data/effective_care.csv /user/w205/hospital_compare/effective_care
hdfs dfs -put /data/measures.csv /user/w205/hospital_compare/measures
hdfs dfs -put  /data/readmissions.csv /user/w205/hospital_compare/readmissions

hdfs dfs -put  /data/surveys_responses.csv /user/w205/hospital_compare/surveys_responses
