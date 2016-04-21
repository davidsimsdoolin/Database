SELECT s.Sname, b.Satt
	FROM Swords a
		JOIN Bone b
	ON a.Sid = b.Sid
UNION ALL
SELECT a.Sname i.Satt
	FROM Swords a
		JOIN Iron i
	ON a.Sid = i.Sid;
