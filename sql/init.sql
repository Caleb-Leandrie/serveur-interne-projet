CREATE DATABASE IF NOT EXISTS inventaire;
USE inventaire;

CREATE TABLE IF NOT EXISTS machines (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom_machine VARCHAR(100) NOT NULL,
  os VARCHAR(100) NOT NULL,
  version_os VARCHAR(50),
  ram_go INT,
  disque_go INT,
  adresse_ip VARCHAR(45),
  utilisateur_responsable VARCHAR(100)
);

INSERT INTO machines (nom_machine, os, version_os, ram_go, disque_go, adresse_ip, utilisateur_responsable)
VALUES
('parrot-serveur', 'Parrot OS', '6.x', 8, 256, '192.168.X.X', 'Leandrie'),
('windows-Koto', 'Windows 11', '11', 8, 512, '192.168.X.Y', 'Benjamin');