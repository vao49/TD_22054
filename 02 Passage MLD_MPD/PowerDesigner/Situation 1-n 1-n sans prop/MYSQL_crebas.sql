/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  01/03/2023 14:50:31                      */
/*==============================================================*/


drop table if exists EQUIPE;


alter table JOUER 
   drop foreign key FK_JOUER_JOUER_EQUIPE;

alter table JOUER 
   drop foreign key FK_JOUER_JOUER2_JOUEUR;

drop table if exists JOUER;

drop table if exists JOUEUR;

/*==============================================================*/
/* Table : EQUIPE                                               */
/*==============================================================*/
create table EQUIPE
(
   NO_EQUIPE            numeric(8,0) not null auto_increment  comment '',
   NOM_EQUIPE           varchar(50) not null  comment '',
   primary key (NO_EQUIPE)
);

/*==============================================================*/
/* Table : JOUER                                                */
/*==============================================================*/
create table JOUER
(
   NO_EQUIPE            numeric(8,0) not null  comment '',
   CODE_JOUEUR          numeric(8,0) not null  comment '',
   primary key (NO_EQUIPE, CODE_JOUEUR)
);

/*==============================================================*/
/* Table : JOUEUR                                               */
/*==============================================================*/
create table JOUEUR
(
   CODE_JOUEUR          numeric(8,0) not null auto_increment  comment '',
   NOM_JOUEUR           varchar(50) not null  comment '',
   primary key (CODE_JOUEUR)
);

