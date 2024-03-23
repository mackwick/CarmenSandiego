create table teams(
	id serial primary key,
	name varchar(255) not null,
	stadium varchar(255),
	division varchar(255),
	conference varchar(255),
	head_coach varchar(255),
	active boolean
);

create table players(
	id serial primary key,
	name varchar(255) not null,
	position varchar(255),
	salary integer,
	team_id integer references teams
);

-------------------------------------------------------------
-- 1. List the names of all NFL teams
-------------------------------------------------------------
SELECT name FROM teams

-------------------------------------------------------------
-- 2. List the stadium name and head coach of all NFC teams
-------------------------------------------------------------
SELECT stadium, head_coach FROM teams

-------------------------------------------------------------
-- 3. List the head coaches of the AFC South
-------------------------------------------------------------
SELECT head_coach FROM teams WHERE conference = 'AFC' AND division = 'South'

-------------------------------------------------------------
-- 4. The total number of players in the NFL
-------------------------------------------------------------
SELECT * FROM players 
Answer: 1532 (there are that many rows)