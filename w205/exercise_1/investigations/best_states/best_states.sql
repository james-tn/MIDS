select * from (select format_number(avg(score),1) avg_score,format_number(stddev_pop(score),2) stddev, format_number(sum(score),1) agg_score, count(score) count_score, State from readmissions_transformed a, hospitals_transformed b where a.provider_id = b.provider_id group by State having count(score) >40) t order by avg_score asc, stddev desc  limit 15;

