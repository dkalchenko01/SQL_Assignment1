use pa01;
-- inserting relevant data into all tables

insert into coaches values
(1, 'Alyona Solomka', 10),
(2, 'Oleksandr Yershov', 7),
(3, 'Mariia Mamaeva', 3),
(4, 'Illya Romanenko', 2),
(5, 'Alyona Bondareva', 4);

insert into teams values
(1, 'New Flame', 13, 1, 'pro'),
(2, 'Global Force', 9, 2, 'pro'),
(3, 'AllForOne', 11, 1, 'pro'),
(4, 'Powerful crew', 11, 3, 'beginners'),
(5, 'Lil Beats', 8, 5, 'middle'),
(6, 'Raze crew', 12 , 4, 'middle'),
(7, 'BBoys', 7, 2, 'middle'),
(8, 'Wild crew', 16, 3, 'beginners'),
(9, 'In Motion', 17, 1, 'middle')
;

insert into members_pro(full_name, age, sex,team_name, years_in_team) values
('Diana Chuhai', 13, 'F','AllForOne' , 6),
('Kiril Kurasov', 14, 'M', 'AllForOne', 2),
('Milena Plaksienko', 14, 'F', 'AllForOne', 3),
('Valentyn Pazyha', 16, 'M', 'AllForOne', 6),
('Alyona Avramenko', 17, 'F', 'New Flame',  2),
('Illya Romanenko', 19, 'M', 'New Flame' , 4),
('Mariia Mamaeva', 19, 'F', 'New Flame', 8),
('Alyona Bondareva', 18, 'F', 'New Flame' , 3),
('Mark Kucher', 13, 'M','Global Force' , 6),
('Denis Tkachenko', 12, 'M','Global Force' , 5)
;

insert into members_middle(full_name, age, sex, team_name, years_in_team) values
('Arina Kolesnik', 16, 'F', 'In Motion', 2),
('Mariia Molhamova', 17, 'F', 'In Motion', 4),
('Polina Shalatonova', 16, 'F', 'In Motion', 3),
('Anastasiia Khazova', 15, 'F', 'In Motion', 3),
('Maryna Volkova', 15, 'F', 'Raze crew', 1),
('Solomiia Nazarenko', 13, 'F', 'Raze crew', 3),
('Viktoriia Malyshko', 14, 'F', 'Raze crew', 2),
('Yelyzaveta Marchenko', 9, 'F','Lil Beats', 2),
('Olaksandra Chaika', 8, 'F','Lil Beats', 2),
('Andrii Melnik', 10, 'M', 'BBoys', 3),
('Matvii Bondar', 9, 'M', 'BBoys', 2),
('Nikita Bukatov', 12, 'M', 'BBoys', 3)
;


insert into members_beginners(full_name, age, sex, team_name, years_in_team) values
('Anastasiia Butrim', 12, 'F', 'Powerful crew', 2),
('Ekateryna Barvinko', 14, 'F', 'Powerful crew', 1),
('Sofiia Kolos', 12, 'F', 'Powerful crew', 1),
('Nazar Kuzmenko', 15, 'F', 'Powerful crew', 2),
('Maryna Skalska', 7, 'F', 'Wild crew', 1),
('Illya Lushcik', 9 , 'M', 'Wild crew', 3),
('Anna Kroitor', 9, 'F', 'Wild crew', 2),
('Dariia Larchenko', 8, 'F','Wild crew', 2)
;