CREATE TRIGGER pavilhaoVerify
BEFORE INSERT ON PAVILHAO
FOR EACH ROW
BEGIN
    DELETE FROM Pavilhao WHERE nome_clube = new.nome_clube;
END;