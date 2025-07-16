-- Données de test pour le login et logout
USE bibliotheque;

-- Insertion des types d'adhérants
INSERT INTO TypeAdherant (idTypeAdherant, nomTypeAdherant) VALUES 
(1, 'Etudiant'),
(2, 'Enseignant'),
(3, 'Personnel'),
(4, 'Externe');

-- Insertion des personnes (utilisateurs de test)
INSERT INTO Personne (idPersonne, nom, dateNaissance, adresse, mail, password) VALUES 
-- Administrateurs
(1, 'Admin System', '1980-01-01', '123 Rue Admin', 'admin@biblio.dev', 'admin123'),
(2, 'Marie Dupont', '1975-05-15', '456 Avenue Centrale', 'marie.dupont@biblio.dev', 'marie456'),

-- Adhérents étudiants
(3, 'Jean Martin', '2000-03-20', '789 Boulevard Étudiant', 'jean.martin@etudiant.mg', 'jean789'),
(4, 'Sophie Bernard', '1999-07-10', '321 Rue Campus', 'sophie.bernard@etudiant.mg', 'sophie321'),
(5, 'Pierre Rakoto', '2001-12-05', '654 Avenue Université', 'pierre.rakoto@etudiant.mg', 'pierre654'),

-- Adhérents enseignants
(6, 'Dr. Paul Andry', '1970-09-25', '987 Rue Professeur', 'paul.andry@univ.mg', 'paul987'),
(7, 'Mme. Lisa Razana', '1978-11-30', '147 Avenue Enseignant', 'lisa.razana@univ.mg', 'lisa147'),

-- Adhérents personnel
(8, 'Marc Rabe', '1985-04-18', '258 Rue Personnel', 'marc.rabe@biblio.mg', 'marc258'),

-- Adhérents externes
(9, 'Alice Randria', '1992-08-12', '369 Boulevard Externe', 'alice.randria@external.mg', 'alice369'),
(10, 'Bob Rasolofo', '1988-02-28', '741 Rue Visiteur', 'bob.rasolofo@external.mg', 'bob741');

-- Insertion des administrateurs
INSERT INTO Admin (idAdmin, idPersonne) VALUES 
(1, 1),  -- Admin System
(2, 2);  -- Marie Dupont

-- Insertion des adhérents
INSERT INTO Adherant (idAdherant, idPersonne, idTypeAdherant) VALUES 
-- Étudiants
(1, 3, 1),  -- Jean Martin - Etudiant
(2, 4, 1),  -- Sophie Bernard - Etudiant
(3, 5, 1),  -- Pierre Rakoto - Etudiant

-- Enseignants
(4, 6, 2),  -- Dr. Paul Andry - Enseignant
(5, 7, 2),  -- Mme. Lisa Razana - Enseignant

-- Personnel
(6, 8, 3),  -- Marc Rabe - Personnel

-- Externes
(7, 9, 4),  -- Alice Randria - Externe
(8, 10, 4); -- Bob Rasolofo - Externe

-- Insertion des inscriptions (pour les adhérents)
INSERT INTO Inscription (idInscription, dateInscription, idAdherant) VALUES 
(1, '2024-01-15 09:00:00', 1),  -- Jean Martin
(2, '2024-01-16 10:30:00', 2),  -- Sophie Bernard
(3, '2024-01-17 14:15:00', 3),  -- Pierre Rakoto
(4, '2024-01-18 11:45:00', 4),  -- Dr. Paul Andry
(5, '2024-01-19 16:20:00', 5),  -- Mme. Lisa Razana
(6, '2024-01-20 08:30:00', 6),  -- Marc Rabe
(7, '2024-01-21 13:10:00', 7),  -- Alice Randria
(8, '2024-01-22 15:45:00', 8);  -- Bob Rasolofo

-- Insertion des abonnements actifs
INSERT INTO Abonnement (idAbonnement, dateDebut, dateFin, idAdherant) VALUES 
-- Abonnements valides jusqu'à fin 2024
(1, '2024-01-15', '2024-12-31', 1),  -- Jean Martin
(2, '2024-01-16', '2024-12-31', 2),  -- Sophie Bernard
(3, '2024-01-17', '2024-12-31', 3),  -- Pierre Rakoto
(4, '2024-01-18', '2024-12-31', 4),  -- Dr. Paul Andry
(5, '2024-01-19', '2024-12-31', 5),  -- Mme. Lisa Razana
(6, '2024-01-20', '2024-12-31', 6),  -- Marc Rabe

-- Abonnements expirés (pour test)
(7, '2023-01-21', '2023-12-31', 7),  -- Alice Randria - Expiré
(8, '2023-01-22', '2023-12-31', 8);  -- Bob Rasolofo - Expiré

COMMIT;

-- ==============================================
-- COMPTES DE TEST POUR LOGIN/LOGOUT
-- ==============================================
-- 
-- ADMINISTRATEURS:
-- Email: admin@biblio.dev          | Password: admin123
-- Email: marie.dupont@biblio.dev   | Password: marie456
-- 
-- ADHÉRENTS ÉTUDIANTS:
-- Email: jean.martin@etudiant.mg   | Password: jean789
-- Email: sophie.bernard@etudiant.mg | Password: sophie321
-- Email: pierre.rakoto@etudiant.mg | Password: pierre654
-- 
-- ADHÉRENTS ENSEIGNANTS:
-- Email: paul.andry@univ.mg        | Password: paul987
-- Email: lisa.razana@univ.mg       | Password: lisa147
-- 
-- ADHÉRENTS PERSONNEL:
-- Email: marc.rabe@biblio.mg       | Password: marc258
-- 
-- ADHÉRENTS EXTERNES (abonnements expirés):
-- Email: alice.randria@external.mg | Password: alice369
-- Email: bob.rasolofo@external.mg  | Password: bob741
-- 
-- ==============================================