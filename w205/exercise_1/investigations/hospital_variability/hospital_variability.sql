select format_number(stddev_samp(score),2) stddev, measure_name from readmissions_transformed a, measures_transformed b where  a.measure_id = b.measure_id group by measure_name order by stddev_pop(score) desc limit 10;


select stddev_samp(score), measure_name from effective_care_transformed a, measures_transformed b where  a.measure_id = b.measure_id and b.measure_name!='Emergency Department Volume' group by measure_name order by stddev_pop(score) desc limit 10;

