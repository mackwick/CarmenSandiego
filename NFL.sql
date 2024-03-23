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

-------------------------------------------------------------
-- 5. The team names and head coaches of the NFC North and AFC East
-------------------------------------------------------------
SELECT name, head_coach, FROM teams WHERE conference = 'NFC' AND division = 'North' OR conference = 'AFC' AND division = 'East'

-------------------------------------------------------------
-- 6. The 50 players with the highest salaries
-------------------------------------------------------------
SELECT * FROM players ORDER BY salary DESC LIMIT 50

-------------------------------------------------------------
-- 7. The average salary of all NFL players
-------------------------------------------------------------
SELECT AVG(salary) FROM players
Answer: $1,579,692.54

-------------------------------------------------------------
-- 8. The names and positions of players with a salary above 10_000_000
-------------------------------------------------------------
SELECT name, position FROM players WHERE salary > 10000000


