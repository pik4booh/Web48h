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
 CREATE table régime(
  idrégime int PRIMARY key AUTO_INCREMENT,
  nom VARCHAR ,
  durée INTERVAL ,
  prix numeric 
 );
 create table sport(
  idsport int primary key AUTO_INCREMENT,
  nomsport varchar,
  durée INTERVAL,
  calorie very DECIMAL,
  prise de masse DECIMAL
 );

 insert into 'user'('nom','email','mdp') values ('johnson_alice','alice.johnson@gmail.com','johnson132');
 insert into 'user'('nom','email','mdp') values ('Emily_davis','davis.emily@gmail.com','emily456');
 insert into 'user'('nom','email','mdp') values ('David_Wilson',' david.wilson@gmail.com','wilson789');
 insert into 'user'('nom','email','mdp') values ('John_Smith',' john.smith@gmail.com','smith321');
 insert into 'user'('nom','email','mdp') values ('Sarah_key','sarah.key@gmail.com','key654');

 insert into 'objectif'('idOjectif','nom') values ('perte de poids');
 insert into 'objectif'('idOjectif','nom') values ('prise de poids');
 
 insert into 'profilUser'(' idProfilUser','idUser',' genre','taille','poids',)values();
