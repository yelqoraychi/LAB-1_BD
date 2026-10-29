CREATE DATABASE testdb 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;
USE testdb;
SHOW DATABASES;
CREATE TABLE utilisateur (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  nom   VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;
INSERT INTO utilisateur (nom, email) VALUES 
('Alice Dupont', 'alice@example.com'),
('Bob Martin', 'bob@example.com'),
('Charlie Leroy', 'charlie@test.org');
SELECT * FROM utilisateur;
SELECT nom, email
FROM utilisateur
WHERE email LIKE '%@example.com';
SELECT COUNT(*) AS total_utilisateurs
FROM utilisateur;
SELECT nom, email
FROM utilisateur
ORDER BY nom ASC;
SELECT nom, email
FROM utilisateur
ORDER BY id DESC
LIMIT 2;
DELETE FROM utilisateur
WHERE nom = 'Charlie Leroy';
SELECT * FROM utilisateur;
CREATE INDEX idx_email ON utilisateur(email);
SHOW INDEX FROM utilisateur;
EXPLAIN SELECT * FROM utilisateur WHERE email = 'alice@example.com';
DROP INDEX idx_email ON utilisateur;
mysqldump -u root -p testdb > testdb_full_dump.sql