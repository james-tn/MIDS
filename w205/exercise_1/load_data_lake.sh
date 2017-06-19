tail -n+2 /data/’Hospital General Information.csv' >   /data/hospital.csv
tail -n+2  /data/'Timely and Effective Care - Hospital.csv' >  /data/effective_care.csv
tail -n+2  /data/'Readmissions and Deaths - Hospital.csv' >  /data/readmissions.csv
tail -n+2 'hvbp_hcahps_05_28_2015.csv' > surveys_responses.csv

hdfs dfs -mkdir /user/w205/hospital_compare

hdfs dfs -put  /data/hospital.csv /user/w205/hospital_compare
hdfs dfs -put  /data/effective_care.csv /user/w205/hospital_compare

hdfs dfs -put  /data/readmissions.csv /user/w205/hospital_compare

hdfs dfs -put  /data/surveys_responses.csv /user/w205/hospital_compare
