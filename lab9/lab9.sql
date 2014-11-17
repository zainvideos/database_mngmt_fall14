-- Zain Qayyum
--11/17/14

DROP TABLE IF EXISTS Teams under 10 yrs old;
CREATE TABLE Teams under 10 yrs old(
   team name  text not null, 
   Player name text not null,
   Coach name text not null,
   Coach type text not null,
 primary key(team name)
);

DROP TABLE IF EXISTS Teams 10-14 yrs old;
CREATE TABLE Teams 10-14 yrs old(
   team name  text not null, 
   Player name text not null,
   Coach name text not null,
   Coach type text not null,
 primary key(team name)
);

DROP TABLE IF EXISTS Teams over 14 yrs old;
CREATE TABLE Teams over 14 yrs old(
   team name  text not null, 
   Player name text not null,
   Coach name text not null,
   Coach type text not null,
 primary key(team name)
);

CREATE TABLE player info(
   player phone number  int not null, 
   Player address text not null,
   Player name text not null,
    primary key(player phone number)
);

CREATE TABLE coach info(
   coach phone number int not null, 
   Coach address text not null,
   Coach name text not null,
   Coach type text not null,
 primary key(coach phone number)
);

CREATE TABLE coach # yrs coaching(
   coach phone number int not null, 
   coach name text not null,
   # years coaching int not null,
   Coach type text not null,
 primary key(coach phone number)
);

--The database is in 3NF because info that is not always present is split into different tables with least redundancy.

