create table cd.facilities (facid integer,
                            name varchar(100),
                            membercost numeric,
                            guestcost numeric,
                            initialoutlay numeric,
                            monthlymaintenance numeric);

insert into cd.facilities (facid, name, membercost, guestcost, initialoutlay, monthlymaintenance)
values (0, 'Tennis Court 1', 5, 25, 10000, 200),
       (1, 'Tennis Court 2', 5, 25, 8000, 200),
       (2, 'Badminton Court', 0, 15.5, 4000, 50),
       (3, 'Table Tennis', 0, 5, 320, 10),
       (4, 'Massage Room 1', 35, 80, 4000, 3000),
       (5, 'Massage Room 2', 35, 80, 4000, 3000),
       (6, 'Squash Court', 3.5, 17.5, 5000, 80),
       (7, 'Snooker Table', 0, 5, 450, 15),
       (8, 'Pool Table', 0, 5, 400, 15);

select 	facs.name as name,
          facs.initialoutlay/((sum(case
                                       when memid = 0 then slots * facs.guestcost
                                       else slots * membercost
              end)/3) - facs.monthlymaintenance) as months
from cd.bookings bks
         inner join cd.facilities facs
                    on bks.facid = facs.facid
group by facs.facid
order by name;