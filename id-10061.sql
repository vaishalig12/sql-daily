select location, total/emp  from
(select sum(popularity) as total, count(id) as emp, location from facebook_employees fe
join facebook_hack_survey fhs on fe.id = fhs.employee_id
group by location)
