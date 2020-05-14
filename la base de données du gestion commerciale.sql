--creation de la base de donnée
CREATE DATABASE Gestion_Commerciale

--create des tables

CREATE TABLE Client
(
ID_Client int NOT NULL IDENTITY(1,1),
Nom_Client nvarchar(250) NOT NULL,
Prenom_Client nvarchar(250) NOT NULL,
Adresse_Client nvarchar(250) NOT NULL,
Telephone_Client nvarchar(250) NOT NULL, 

--clé primaire
CONSTRAINT PK_ClIENT PRIMARY KEY(ID_Client)
)

CREATE TABLE Article
(
ID_Article int NOt null identity (1,1),
Reference_Article nvarchar (250) not null,
Libelle_Article nvarchar (250) not null,
Prix_Article int  not null,
Stock_Article int  not null,
ID_CATEGORIE int not null, --clé etrangere de la table catégories	

--clé primaire
CONSTRAINT PK_Article PRIMARY KEY(ID_Article)
)

CREATE TABLE Categorie
(
ID_CATEGORIE int NOt null identity (1,1),
Nom_Categorie nvarchar(250) not null,

--clé primaire
CONSTRAINT PK_Categorie PRIMARY KEY(ID_CATEGORIE)
)


CREATE TABLE Commande
(
ID_Commande int NOt null identity (1,1),
Numero_Commande int not null,
Date_commande date not null,
TotalTTC nvarchar(250) not null,
ID_Client int NOT NULL -- cle etrangere

--clé primaire
CONSTRAINT PK_Commande PRIMARY KEY(ID_Commande)
)

CREATE TABLE Details_Commande
(
ID_DetailCommande int NOt null identity (1,1),
ID_Commande int NOt null ,
ID_Article int NOt null ,
Libelle_Article nvarchar(250) not null,
Quantite int  not null,
Prix nvarchar(250)  not null,
Montant nvarchar(250) not null,
--clé primaire
CONSTRAINT PK_Details PRIMARY KEY(ID_DetailCommande)
)


CREATE TABLE Utilisateur
(
ID_Utilisateur int NOt null identity (1,1),
Login_Utilisateur nvarchar(250) not null,
Mot_De_Passe nvarchar(250) not null,
Nom_Utilisateur nvarchar(250) NOT NULL,
Prenom_Utilisateur nvarchar(250) NOT NULL,
ID_Profil int not null,
--clé primaire
CONSTRAINT PK_Utilisateur PRIMARY KEY(ID_Utilisateur)
)

CREATE TABLE Profil
(
ID_Profil int NOt null identity (1,1),
Nom_Profil nvarchar(250) not null,

--clé primaire
CONSTRAINT PK_Profil PRIMARY KEY(ID_Profil)
)

