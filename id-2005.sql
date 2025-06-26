select sum(total) filter (where country = 'USA' and status = 'open')*100/sum(total) from
(select count(user_id) total, country, status from fb_active_users
group by country, status)
