use pa01;
/*
QUERY 1.
This query returns the whole data(personal data, the group the person attends, the level of the group,
 the coach of this group) about the youngest dance studio members.
 I union three members tables to have all members at once, then join other tables in order to retrieve
 additional info, then order members by their age and then select the 10 youngest.
 */
select 
	u.full_name as member_name,
    u.age,
    u.team_name,
    t.team_level,
    c.full_name as coach_name
    from (select * from members_pro
		  union all
		  select * from members_middle
		  union all
		  select * from members_beginners)
          as u
	left join teams t on u.team_name = t.team_name
    left join coaches c on t.coach_id = c.id
    order by age
    limit 10;
/*
RESULT:
'Maryna Skalska','7','Wild crew','beginners','Mariia Mamaeva'
'Dariia Larchenko','8','Wild crew','beginners','Mariia Mamaeva'
'Olaksandra Chaika','8','Lil Beats','middle','Alyona Bondareva'
'Illya Lushcik','9','Wild crew','beginners','Mariia Mamaeva'
'Yelyzaveta Marchenko','9','Lil Beats','middle','Alyona Bondareva'
'Matvii Bondar','9','BBoys','middle','Oleksandr Yershov'
'Anna Kroitor','9','Wild crew','beginners','Mariia Mamaeva'
'Andrii Melnik','10','BBoys','middle','Oleksandr Yershov'
'Sofiia Kolos','12','Powerful crew','beginners','Mariia Mamaeva'
'Anastasiia Butrim','12','Powerful crew','beginners','Mariia Mamaeva'
*/


/*
QUERY 2.
This query returns the coaches that are older than 18 and who are current members of pro level dance groups.
In CTE I select only matching full names between members_pro and coaches tables and then I selects those, whose age is equql or bigger than 18.
*/
with members_in_coaches as(
select m.full_name, m.age, m.sex, m.team_name from members_pro m
inner join coaches c on m.full_name = c.full_name
)
select full_name, age, sex, team_name from members_in_coaches
where age >= 18;
/*
RESULT:
'Mariia Mamaeva','19','F','New Flame'
'Illya Romanenko','19','M','New Flame'
'Alyona Bondareva','18','F','New Flame'
*/


/*
QUERY 3.
This query returns the teams with age category described as juniors. It means that the average team age is between 12 and 15 years.
In CTE I union three members tables to have all members at once, then I group them by their team_names and choose those, whose average 
age correspends the age gap.
*/
with all_members as(
select * from members_pro
union all
select * from members_middle
union all
select * from members_beginners
)
select team_name , round(avg(age), 0) as avg_age  from all_members
group by team_name
having avg_age between 12 and 15;
/*
RESULT:
'AllForOne','14'
'Global Force','13'
'Raze crew','14'
'Powerful crew','13'
*/