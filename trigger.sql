DELIMITER //
--------------------------------------
-- If sword is added into drops that 
-- Doesn't exist in Swords, a null is
-- Adedd into it.
--------------------------------------
CREATE TRIGGER NewSword
AFTER INSERT ON Drops
FOR EACH ROW BEGIN
	IF NEW.Sid NOT IN (SELECT Sid FROM Swords) THEN
		INSERT INTO Swords(Sid) Values(NEW.Sid);
	END IF;
END;//
--------------------------------------
-- If a Sword is deleted from Swords 
-- Then all info relating to the sword
-- is deleated from other tables.
--------------------------------------
CREATE TRIGGER DeleteSword
AFTER DELETE ON Swords
FOR EACH ROW BEGIN
	IF (OLD.Sid IN (SELECT Sid FROM Iron)) THEN
		DELETE FROM Iron WHERE Sid = OLD.Sid;
	END IF;
	IF (OLD.Sid IN (SELECT Sid FROM Bone)) THEN
		DELETE FROM Bone WHERE Sid = OLD.Sid;
	END IF;
	IF (OLD.Sid IN (SELECT Sid FROM Vile)) THEN
		DELETE FROM Vile WHERE Sid = OLD.Sid;
	END IF;
	IF (OLD.Sid IN (SELECT Sid FROM Drops)) THEN
		DELETE FROM Drops WHERE Sid = OLD.Sid;
	END IF;
End;//