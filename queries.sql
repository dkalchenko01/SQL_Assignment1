use pa01;
/*
This query returns top 3 teams from dance studio, that are trained by most experienced coaches and
belong to junior age category. It means that the average team age is between 14 and 18. 

I union three members tables to have all data about members at once, then I join this CTE result with other tables in order to retrieve
additional info about coaches and teams. Then by using subquery in where condition I select coaches, 
whose experience is bigger that the average, then I group all members by their team name, select the ones with average 
age between 14 and 18, order by average age from the biggest to lowest and select top 3.
 */
with all_members as(
select * from members_pro
union all
select * from members_middle
union all
select * from members_beginners
)
select 
	t.team_name ,
    round(avg(age), 0) as avg_age
    from all_members a
	left join teams t on a.team_name = t.team_name
    left join coaches c on t.coach_id = c.id
    where experience_years >= (
    select avg(experience_years) from coaches
    )
    group by t.team_name
    having avg_age between 14 and 18
    order by avg_age desc
    limit 3;
    
/*
Result:
 team_name ,avg_age
'New Flame','18'
'In Motion','16'
'AllForOne','14'
*/
