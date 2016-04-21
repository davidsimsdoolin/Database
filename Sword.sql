SELECT Swords.*, Iron.*, Bone.*, Vile.*, Other.* 
FROM Swords
	JOIN Iron
		ON Swords.Sid = Iron.Sid
	JOIN Bone
		ON Swords.Sid = Bone.Sid
	JOIN Vile
		ON Swords.Sid = Vile.Sid
	JOIN Other
		ON Swords.Sid = Other.Sid
Where Other.Satt >= 600