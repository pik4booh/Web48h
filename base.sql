CREATE database regime; 
use regime;

CREATE TABLE `user` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `nom` VARCHAR(20),
  `email` VARCHAR(50),
  `mdp` VARCHAR(20)
);

CREATE table objectif (
  idOjectif int AUTO_INCREMENT PRIMARY key,
  nom VARCHAR(100)
);

CREATE TABLE profilUser (
  idProfilUser int PRIMARY key AUTO_INCREMENT,
  idUser int references user(id),
  genre char not null,
  taille decimal,
  poids decimal,
  idOjectif int references objectif(idOjectif)
);