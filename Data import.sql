use metric_spike;
create table email_events (
user_id int,
occured_at varchar(100),
action varchar(100),
user_type int
);
use metric_spike;
show variables like 'secure_file_priv';
load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/email_events.csv"
into table email_events
fields terminated by','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
alter table email_events add column temp_occured_at DATETIME;
update email_events set temp_occured_at = str_to_date(occured_at, '%d-%m-%y %H:%i');
alter table email_events drop column occured_at;
alter table email_events change column temp_occured_at occured_at datetime;

create table events(
user_id int,
occured_at varchar(100),
event_type varchar (50),
event_name varchar (100),
location varchar (50),
device varchar (50),
user_type int
);
show variables like 'secure_file_priv';
load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/events.csv"
into table events
fields terminated by','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
alter table events add column temp_occured_at datetime;
update events set temp_occured_at = str_to_date(occured_at, '%d-%m-%y-%h-%i');
alter table events drop column occured_at;
alter table events change column temp_occured_at occured_at datetime;

create table users(
user_id int,
created_at varchar (100),
company_id int,
language varchar (50),
activated_at varchar (100),
state varchar (50));
show variables like 'secure_file_priv';
load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv"
into table users
fields terminated by','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
alter table users add column temp_created_at datetime;
update users set temp_created_at = STR_TO_DATE(created_at, '%d-%m-%y-%h-%i');
alter table users drop column created_at;
alter table users change column temp_created_at created_at datetime;
alter table users drop column temp_created_at ;
















