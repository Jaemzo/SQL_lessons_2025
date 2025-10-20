create table saved_dates(
	my_date date,
    my_time time,
    my_date_time datetime
);

select * from saved_dates;

-- just a taste of a few built in mysql functions
insert into saved_dates values (current_date(), current_time(), now());

insert into saved_dates values (current_date() - interval 1 day, current_time() - interval 1 hour, now());