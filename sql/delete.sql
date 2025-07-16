-- Script pour réinitialiser la base de données bibliotheque
-- Ce script supprime toutes les données des tables en respectant les contraintes de clés étrangères

USE bibliotheque;

-- Désactiver les vérifications de clés étrangères temporairement
SET FOREIGN_KEY_CHECKS = 0;

-- Supprimer les données des tables de liaison d'abord
DELETE FROM LivreCategorie;
DELETE FROM TypeAdherant_Livre;
DELETE FROM StatutReservation;

-- Supprimer les données des tables dépendantes
DELETE FROM Penalite;
DELETE FROM Retour;
DELETE FROM DemandeProlongement;
DELETE FROM Reservation;
DELETE FROM Pret;
DELETE FROM Abonnement;
DELETE FROM Inscription;

-- Supprimer les données des tables intermédiaires
DELETE FROM Adherant;
DELETE FROM Exemplaire;
DELETE FROM Admin;

-- Supprimer les données des tables de règles
DELETE FROM RegleDuree;
DELETE FROM RegleNbLivre;

-- Supprimer les données des tables principales
DELETE FROM Personne;
DELETE FROM Livre;
DELETE FROM Categorie;
DELETE FROM TypePret;
DELETE FROM Statut;
DELETE FROM TypeAdherant;

-- Réactiver les vérifications de clés étrangères
SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE TypeAdherant AUTO_INCREMENT = 1;
ALTER TABLE Personne AUTO_INCREMENT = 1;
ALTER TABLE Admin AUTO_INCREMENT = 1;
ALTER TABLE Livre AUTO_INCREMENT = 1;
ALTER TABLE Categorie AUTO_INCREMENT = 1;
ALTER TABLE Exemplaire AUTO_INCREMENT = 1;
ALTER TABLE TypePret AUTO_INCREMENT = 1;
ALTER TABLE Statut AUTO_INCREMENT = 1;
ALTER TABLE RegleDuree AUTO_INCREMENT = 1;
ALTER TABLE RegleNbLivre AUTO_INCREMENT = 1;
ALTER TABLE Adherant AUTO_INCREMENT = 1;
ALTER TABLE Inscription AUTO_INCREMENT = 1;
ALTER TABLE Abonnement AUTO_INCREMENT = 1;
ALTER TABLE Pret AUTO_INCREMENT = 1;
ALTER TABLE DemandeProlongement AUTO_INCREMENT = 1;
ALTER TABLE Reservation AUTO_INCREMENT = 1;
ALTER TABLE Retour AUTO_INCREMENT = 1;
ALTER TABLE Penalite AUTO_INCREMENT = 1;
COMMIT;

-- Message de confirmation
SELECT 'Base de données réinitialisée avec succès!' AS Message;
