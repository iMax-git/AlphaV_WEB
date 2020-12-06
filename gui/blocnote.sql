CREATE TABLE report
(
    id INT PRIMARY KEY NOT NULL,
    hour VARCHAR(15),
    agentname VARCHAR(20),
    civname VARCHAR(20),
    title VARCHAR(255),
    content VARCHAR(255)
)

INSERT INTO report (hour, agentname, civname, title, content)
 VALUES
 ('Rébecca', 'Armand', 'Saint-Didier-des-Bois', 24),
 ('Aimée', 'Hebert', 'Marigny-le-Châtel', 36),
 ('Marielle', 'Ribeiro', 'Maillères', 27),
 ('Hilaire', 'Savary', 'Conie-Molitard', 58);


 