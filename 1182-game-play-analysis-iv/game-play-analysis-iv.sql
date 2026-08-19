SELECT Round(count(distinct a1.player_id)/(select count(distinct player_id)from Activity) ,2)fraction 
from Activity a1 join
(select player_id,Min(event_date) fdate 
from Activity group by player_id) f 
on a1.event_date = date_add(f.fdate,INTERVAL 1 day)
and a1.player_id= f.player_id
