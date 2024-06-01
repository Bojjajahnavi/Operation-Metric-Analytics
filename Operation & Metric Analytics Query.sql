use job_analysis;

/*Case Study 1: Job Data Analysis: 
A. Jobs Reviewed Over Time: */
select avg(t) as jobs_reviewed_per_hour, avg(p) as jobs_reviewed_per_second
from
(select ds,
((count(job_id)*3600)/sum(time_spent)) as t,
((count(job_id))/sum(time_spent)) as p
from
job_data
where month(ds)=11
group by ds)a;
select round(count(event)/sum(time_spent),2) as weekly_throughput
from
job_data;

/*B. Throughput Analysis: */
select ds as dates, round(count(event)/sum(time_spent),2) as daily_metric
from
job_data
group by ds
order by ds;

/*C. Language Share Analysis: */
select language, round(100*count(*)/total,2) as percentage,sub.total
from job_data
cross join (select count(*) as total from job_data) as sub
group by language, sub.total;

/*D. Duplicate Rows Detection: */   
select actor_id, count(*) as duplicates
from 
job_data
group by actor_id
having count(*)>1;

/*Case Study 2: Investigating Metric Spike:
A. Weekly User Engagement: */
select extract(week from occured_at)as weeks, count(distinct user_id) as users 
from events
where event_type="engagement"
group by weeks
order by weeks;

/*B. User Growth Analysis: */
select year,  week_num, active_users, 
sum(active_users) over(order by year, week_num rows between unbounded preceding and current row) as cum_users
from
(select extract(week from activated_at) as week_num,
extract(year from activated_at) as year,
count(distinct user_id) as active_users from users
where  state = "active"
group by year, week_num
order by year, week_num)a;

/*D. Weekly Engagement Per Device: */
select extract(week from occured_at) as weeknum, device, count(distinct
user_id) as usercnt
from events
where event_type = "engagement"
group by weeknum, device
order by weeknum;

/*E. Email Engagement Analysis: */
select 100*sum(case when email_category='email_open' then 1 else 0 end)/
sum(case when email_category='email_sent' then 1 else 0 end)as email_open_rate,
100*sum(case when email_category='email_clicked' then 1 else 0 end)/
sum(case when email_category='email_sent' then 1 else 0 end) as email_click_rate
from
(
select *,
case
when action in ('sent_weekly_digest', 'sent_reengagement_ email') then 'email_sent'
when action in ('email_open') then 'email_open'
when action in ('email_clickthrough') then 'email_clicked'
end as email_category
from email_events) a;














