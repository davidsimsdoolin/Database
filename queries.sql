--------------------------------------
--Names of Swords dropped my monsters 
--named.
--------------------------------------
CREATE VIEW AllData AS
SELECT Sname, Sid, Mname, Monid
FROM
(
SELECT *
	FROM Swords s
	RIGHT JOIN (
		SELECT *
			FROM Drops d
				LEFT JOIN Monsters m
			WHERE d.Monid = m.Monid
		) j
	WHERE s.Sid = j.Sid
)

--------------------------------------
-- Swords with highest attack value
--------------------------------------
SELECT Sname, Satt
FROM
(
SELECT *
	FROM Swords a
		INNER JOIN Bone b
	ON a.Sid = b.Sid
UNION 
SELECT a.Sname i.Satt
	FROM Swords a
		INNER JOIN Iron i
	ON a.Sid = i.Sid
UNION
SELECT a.Sname, v.Satt
	FROM Swords a
		INNER JOIN Vile v
	ON a.Sid = v.Sid
)
HAVING Satt = MAX(Satt); 

--------------------------------------
--Count of each Sharpness type
--------------------------------------
SELECT Sshar,COUNT(Sshar) AS NumberOfSharpness
FROM (
	SELECT * FROM Iron
	UNION ALL
	SELECT * FROM Bone
	UNION ALL
	SELECT * FROM Vile
)
GROUP BY Sshar;

--------------------------------------
--Show Number of monsters that dont 
--drop any swords
--------------------------------------
SELECT Count(Mname)
FROM Monsters
WHERE Monid NOT IN (SELECT Monid FROM Drops);
