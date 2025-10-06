create database pa01;
use pa01;

-- creating table that includes main information about coaches in certain dance studio
create table coaches(
	id int primary key,
    full_name varchar(50),
    experience_years int
);
-- creating table that includes information about all teams in certain dance studio
create table teams(
	id int primary key,
    team_name varchar(30),
    participants_number int,
    coach_id int,
    team_level varchar(10)
);

-- creating table that includes main information about students that are members of pro level groups 
create table members_pro(
	id int auto_increment primary key,
    full_name varchar(50),
    age int,
    sex varchar(2),
    team_name varchar(30),
    years_in_team int
);

-- creating table that includes main information about students that are members of middle level groups 
create table members_middle(
	id int auto_increment primary key,
    full_name varchar(50),
    age int,
    sex varchar(2),
    team_name varchar(30),
    years_in_team int
);

-- creating table that includes main information about students that are members of beginners level groups 
create table members_beginners(
	id int auto_increment primary key,
    full_name varchar(50),
    age int,
    sex varchar(2),
    team_name varchar(30),
    years_in_team int
);

