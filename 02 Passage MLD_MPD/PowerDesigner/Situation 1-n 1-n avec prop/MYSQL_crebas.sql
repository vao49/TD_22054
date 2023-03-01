/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  01/03/2023 14:46:40                      */
/*==============================================================*/


alter table JOUER 
   drop foreign key FK_JOUER_JOUER_EQUIPE;

alter table JOUER 
   drop foreign key FK_JOUER_JOUER2_JOUEUR;

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
   NO_EQUIPE            int not null auto_increment  comment '',
   NOM_EQUIPE           varchar(50) not null  comment '',
   primary key (NO_EQUIPE)
);

/*==============================================================*/
/* Table : JOUER                                                */
/*==============================================================*/
create table JOUER
(
   NO_EQUIPE            int not null  comment '',
   CODE_JOUEUR          int not null  comment '',
   DATE_DEBUT           date not null  comment '',
   DATE_FIN             date  comment '',
   primary key (NO_EQUIPE, CODE_JOUEUR)
);

/*==============================================================*/
/* Table : JOUEUR                                               */
/*==============================================================*/
create table JOUEUR
(
   CODE_JOUEUR          int not null auto_increment  comment '',
   NOM_JOUEUR           varchar(50) not null  comment '',
   primary key (CODE_JOUEUR)
);

alter table JOUER add constraint FK_JOUER_JOUER_EQUIPE foreign key (NO_EQUIPE)
      references EQUIPE (NO_EQUIPE) on delete restrict on update restrict;

alter table JOUER add constraint FK_JOUER_JOUER2_JOUEUR foreign key (CODE_JOUEUR)
      references JOUEUR (CODE_JOUEUR) on delete restrict on update restrict;

