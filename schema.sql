--------------------------------------
--Creates all tabels needed 
--------------------------------------

CREATE TABLE Swords (
  Sid INT,
  Sname VARCHAR(45),
  PRIMARY KEY (Sid));

CREATE TABLE Monsters (
  Monid Var(2) ,
  Mname VARCHAR(45),
  Melement VARCHAR(45),
  Mweakness VARCHAR(45),
  PRIMARY KEY (Monid));

CREATE TABLE Iron  (
  Sid INT,
  Satt INT,
  Sspe VARCHAR(45),
  Sshar VARCHAR(45),
  Saff INT,
  FOREIGN KEY(Sid)
    REFERENCES Swords(Sid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  PRIMARY KEY (Sid));

CREATE TABLE Bone  (
  Sid INT,
  Satt INT,
  Sspe VARCHAR(45),
  Sshar VARCHAR(45),
  Saff INT,
  FOREIGN KEY(Sid)
    REFERENCES Swords(Sid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  PRIMARY KEY (Sid));

CREATE TABLE Vile  (
  Sid INT,
  Satt INT,
  Sspe VARCHAR(45),
  Sshar VARCHAR(45),
  Saff INT,
  FOREIGN KEY(Sid)
    REFERENCES Swords(Sid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  PRIMARY KEY (Sid));

CREATE TABLE Drops (
  Sid INT,
  Monid VAR(2),
  DropChance INT,
  FOREIGN KEY(Sid)
    REFERENCES Swords(Sid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY(Monid)
    REFERENCES Monsters(Monid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  PRIMARY KEY (Sid, Monid));

--------------------------------------
-- Data for table Swords
--------------------------------------
START TRANSACTION;

INSERT INTO Swords (Sid, Sname) VALUES (1, 'Iron Sword');
INSERT INTO Swords (Sid, Sname) VALUES (2, 'Iron Sword+');
INSERT INTO Swords (Sid, Sname) VALUES (3, 'Buster Sword');
INSERT INTO Swords (Sid, Sname) VALUES (4, 'Buster Sword+');
INSERT INTO Swords (Sid, Sname) VALUES (5, 'Ravager Blade');
INSERT INTO Swords (Sid, Sname) VALUES (6, 'Ravager Blade+');
INSERT INTO Swords (Sid, Sname) VALUES (7, 'Lacerator Blade');
INSERT INTO Swords (Sid, Sname) VALUES (8, 'Eviscerator Blade');
INSERT INTO Swords (Sid, Sname) VALUES (9, 'Chrome Razor');
INSERT INTO Swords (Sid, Sname) VALUES (10, 'Chrome Death Razor');
INSERT INTO Swords (Sid, Sname) VALUES (11, 'Khezu Shock Sword');
INSERT INTO Swords (Sid, Sname) VALUES (12, 'Khezu Shock Blade');
INSERT INTO Swords (Sid, Sname) VALUES (13, 'Khezu Shock Full');
INSERT INTO Swords (Sid, Sname) VALUES (14, 'Crude Cleaver');
INSERT INTO Swords (Sid, Sname) VALUES (15, 'Fish Cleaver');
INSERT INTO Swords (Sid, Sname) VALUES (16, 'Toad Cleaver ');
INSERT INTO Swords (Sid, Sname) VALUES (17, 'Wild Toad Cleaer');
INSERT INTO Swords (Sid, Sname) VALUES (18, 'Brazenwall');
INSERT INTO Swords (Sid, Sname) VALUES (19, 'Crimsonwall');
INSERT INTO Swords (Sid, Sname) VALUES (20, 'Cragscliff');
INSERT INTO Swords (Sid, Sname) VALUES (21, 'Rugged Great Sword');
INSERT INTO Swords (Sid, Sname) VALUES (22, 'Chieftains Grt Swd');
INSERT INTO Swords (Sid, Sname) VALUES (23, 'Pride of Shadow');
INSERT INTO Swords (Sid, Sname) VALUES (24, 'Pride of Dark');
INSERT INTO Swords (Sid, Sname) VALUES (25, 'Pride of Doom');
INSERT INTO Swords (Sid, Sname) VALUES (26, 'The Apocalypse');
INSERT INTO Swords (Sid, Sname) VALUES (27, 'Usurpers Storm');
INSERT INTO Swords (Sid, Sname) VALUES (28, 'Despots Blackstorm');
INSERT INTO Swords (Sid, Sname) VALUES (29, 'Brimstren Drakepride');
INSERT INTO Swords (Sid, Sname) VALUES (30, 'Demon Rod');
INSERT INTO Swords (Sid, Sname) VALUES (31, 'Great Demon Rod');
INSERT INTO Swords (Sid, Sname) VALUES (32, 'Ludroth Bone Sword');
INSERT INTO Swords (Sid, Sname) VALUES (33, 'Ludroth Bone Sword+');
INSERT INTO Swords (Sid, Sname) VALUES (34, 'Cataclysm Sword');
INSERT INTO Swords (Sid, Sname) VALUES (35, 'Cataclysm Blade');
INSERT INTO Swords (Sid, Sname) VALUES (36, 'Bone Blade');
INSERT INTO Swords (Sid, Sname) VALUES (37, 'Bone Blade+');
INSERT INTO Swords (Sid, Sname) VALUES (38, 'Jaw Blade');
INSERT INTO Swords (Sid, Sname) VALUES (39, 'Giant Jawblade');
INSERT INTO Swords (Sid, Sname) VALUES (40, 'Golem Blade');
INSERT INTO Swords (Sid, Sname) VALUES (41, 'Tiger Agito');
INSERT INTO Swords (Sid, Sname) VALUES (42, 'Tigrex Great Sword');
INSERT INTO Swords (Sid, Sname) VALUES (43, 'Kasasu Blade');
INSERT INTO Swords (Sid, Sname) VALUES (44, 'Red Tigrex Grt Swd');
INSERT INTO Swords (Sid, Sname) VALUES (45, 'Dios Blade');
INSERT INTO Swords (Sid, Sname) VALUES (46, 'Dios Blade+');
INSERT INTO Swords (Sid, Sname) VALUES (47, 'Demolition Sword');
INSERT INTO Swords (Sid, Sname) VALUES (48, 'Valkyrie Blade');
INSERT INTO Swords (Sid, Sname) VALUES (49, 'Sieglinde');
INSERT INTO Swords (Sid, Sname) VALUES (50, 'Titania');
INSERT INTO Swords (Sid, Sname) VALUES (51, 'Blushing Dame');
INSERT INTO Swords (Sid, Sname) VALUES (52, 'Auberon');
INSERT INTO Swords (Sid, Sname) VALUES (53, 'Red Wing');
INSERT INTO Swords (Sid, Sname) VALUES (54, 'Rathalos iresword');
INSERT INTO Swords (Sid, Sname) VALUES (55, 'Rathalos Flamesword');
INSERT INTO Swords (Sid, Sname) VALUES (56, 'Rathalos Gleamsword');
INSERT INTO Swords (Sid, Sname) VALUES (57, 'Rathalos Fglinsword');
INSERT INTO Swords (Sid, Sname) VALUES (58, 'Hybrid Sword');
INSERT INTO Swords (Sid, Sname) VALUES (59, 'Hybrid Sword+');
INSERT INTO Swords (Sid, Sname) VALUES (60, 'Hybrid Blade');
INSERT INTO Swords (Sid, Sname) VALUES (61, 'The Hybrid Blade');
INSERT INTO Swords (Sid, Sname) VALUES (62, 'Broad Blade');
INSERT INTO Swords (Sid, Sname) VALUES (63, 'Broad Blader ');
INSERT INTO Swords (Sid, Sname) VALUES (64, 'Scylla Blader');
INSERT INTO Swords (Sid, Sname) VALUES (65, 'Scylla Rushaba');
INSERT INTO Swords (Sid, Sname) VALUES (66, 'Vile Serpentblade');
INSERT INTO Swords (Sid, Sname) VALUES (67, 'Vile Serpent blade+');
INSERT INTO Swords (Sid, Sname) VALUES (68, 'Fanged Serpentblade');
INSERT INTO Swords (Sid, Sname) VALUES (69, 'Deadly Srpentblade');
INSERT INTO Swords (Sid, Sname) VALUES (70, 'Poison Serpentblade');
INSERT INTO Swords (Sid, Sname) VALUES (71, 'Chick Decapitator');
INSERT INTO Swords (Sid, Sname) VALUES (72, 'Rooster Decapitator');
INSERT INTO Swords (Sid, Sname) VALUES (73, 'Sentoryu Raven');
INSERT INTO Swords (Sid, Sname) VALUES (74, 'Sentoryu Wolf');
INSERT INTO Swords (Sid, Sname) VALUES (75, 'Sentoryu Crow');
INSERT INTO Swords (Sid, Sname) VALUES (76, 'Hidden Blade');
INSERT INTO Swords (Sid, Sname) VALUES (77, 'Dark of Night');

COMMIT;


--------------------------------------
-- Data for table Bone 
--------------------------------------
START TRANSACTION;

INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (Sid, Satt, 'Sspe', 'Sshar', Saff);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (36, 384, '', 'Orange/Yellow', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (37, 432, '', 'Yellow/Yellow', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (38, 480, '', 'Yellow/Yellow', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (39, 528, '', 'Yellow/Green', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (40, 576, '', 'Green/Green', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (41, 6722, '', 'Blue/Blue', -15);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (42, 864, '', 'Blue/Blue', -10);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (43, 912, 'Blastblight', 'Blue/Blue', -5);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (44, 960, 'Blastblight', 'Blue/Blue', 10);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (45, 720, 'Blastblight', 'Green/Blue', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (46, 768, 'Blastblight', 'Blue/Blue', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (47, 864, 'Blastblight', 'Blue/Blue', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (48, 576, 'Poisin ', 'Green/Green', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (49, 672, 'Poisin ', 'Green/Green', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (50, 816, 'Poisin ', 'Blue/Blue', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (51, 864, 'Poisin ', 'Blue/White', 5);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (52, 864, 'Fire', 'White/White', 10);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (53, 672, 'Fire', 'Green/Blue', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (54, 720, 'Fire', 'Blue/White', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (55, 768, 'Fire', 'Blue/White', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (56, 912, 'Fire', 'Blue/White', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (57, 816, 'Fire', 'Blue/White', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (58, 480, 'Water', 'Green/Green', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (59, 576, 'Water', 'Green/Blue', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (60, 624, 'Water', 'Blue/Blue', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (61, 720, 'Water', 'Blue/White', 0);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (62, 528, '', 'Green/Green', 10);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (63, 576, '', 'Blue/Blue', 15);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (64, 624, 'Sleep', 'White/White', 30);
INSERT INTO Bone  (Sid, Satt, Sspe, Sshar, Saff) VALUES (65, 672, 'Sleep', 'White/White', 35);

COMMIT;

--------------------------------------
-- Data for table Iron 
--------------------------------------
START TRANSACTION;

INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (Sid, Satt, 'Sspe', 'Sshar', Saff);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (1, 288, '', 'Yellow/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (2, 336, '', 'Yelow/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (3, 384, '', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (4, 480, '', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (5, 528, '', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (6, 624, '', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (7, 720, 'Fire', 'Green/Blue', 5);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (8, 768, 'Fire', 'Green/White', 5);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (9, 720, 'Poisin ', 'Green/White', 15);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (10, 768, 'Poisin ', 'Blue/White', 20);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (11, 528, 'Paralysis', 'Green/Blue', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (12, 720, 'Paralysis', 'White/White', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (13, 816, 'Paralysis', 'White/White', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (14, 624, '', 'Green/Green', -10);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (15, 720, '', 'Green/Green', -10);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (16, 864, 'Water', 'Green/Blue', -20);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (17, 912, 'Water', 'Green/Blue', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (18, 768, '', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (19, 960, 'Fire', 'Green/Blue', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (20, 1008, 'Fire', 'Green/White', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (21, 480, '', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (22, 528, '', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (23, 576, 'Dragon', 'Green/White', 25);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (24, 624, 'Dragon', 'Blue/White', 35);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (25, 672, 'Dragon', 'White/White', 45);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (26, 768, 'Dragon', 'White/White', 65);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (27, 672, 'Paralysis', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (28, 768, 'Paralysis', 'Blue/White', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (29, 816, 'Dragon', 'Blue/White', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (30, 864, 'Paralysis', 'Green/Blue', 20);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (31, 912, 'Paralysis', 'Green/White', 25);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (32, 480, 'Water', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (33, 528, 'Water', 'Green/Green', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (34, 720, 'Water', 'Green/Blue', 0);
INSERT INTO Iron  (Sid, Satt, Sspe, Sshar, Saff) VALUES (35, 816, 'Water', 'Blue/Blue', 0);


--------------------------------------
-- Data for table Vile 
--------------------------------------
START TRANSACTION;

INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (66, 480, '', 'Yellow/Green', 0);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (67, 528, '', 'Green/Green', 0);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (68, 576, 'Poisin ', 'Green/Blue', 0);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (69, 672, 'Poisin ', 'Blue/Blue', 0);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (70, 720, 'Poisin ', 'Blue/Blue', 0);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (71, 528, 'Fire', 'Green/Green', 0);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (72, 576, 'Fire', 'Green/Green', 0);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (73, 672, '', 'Green/Blue', 5);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (74, 768, 'Poisin ', 'Blue/White', 10);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (75, 816, 'Poisin ', 'Blue/White', 15);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (76, 576, '', 'Blue/White', 35);
INSERT INTO Vile  (Sid, Satt, Sspe, Sshar, Saff) VALUES (77, 768, 'Paralysis', 'White/White', 45);

COMMIT;


--------------------------------------
-- Data for table Monsters
--------------------------------------
START TRANSACTION;

INSERT INTO Monsters (Monid, Mname, Melement, Mweakness) VALUES (AA, 'Jaggi', '', 'Fire');
INSERT INTO Monsters (Monid, Mname, Melement, Mweakness) VALUES (AB, 'Uragaan', 'Fire', 'Dragon');
INSERT INTO Monsters (Monid, Mname, Melement, Mweakness) VALUES (AC, 'Khezu', 'Thunder', 'Fire');
INSERT INTO Monsters (Monid, Mname, Melement, Mweakness) VALUES (AD, 'Desert Seltas Queen', 'Water', 'Water');
INSERT INTO Monsters (Monid, Mname, Melement, Mweakness) VALUES (AE, 'Rathian', 'Fire', 'Thunder');
INSERT INTO Monsters (Monid, Mname, Melement, Mweakness) VALUES (AF, 'Kirin', 'Thunder', 'Fire');
INSERT INTO Monsters (Monid, Mname, Melement, Mweakness) VALUES (AG, 'Teostra', 'Fire', 'Water');

COMMIT;


--------------------------------------
-- Data for table Drops
--------------------------------------
START TRANSACTION;

INSERT INTO Drops (Sid, Monid, DropChance) VALUES (21, 'AA', '60');
INSERT INTO Drops (Sid, Monid, DropChance) VALUES (20, 'AB', '20');
INSERT INTO Drops (Sid, Monid, DropChance) VALUES (38, 'AC', '40');
INSERT INTO Drops (Sid, Monid, DropChance) VALUES (51, 'AE', '35');
INSERT INTO Drops (Sid, Monid, DropChance) VALUES (11, 'AG', '12');

COMMIT;

