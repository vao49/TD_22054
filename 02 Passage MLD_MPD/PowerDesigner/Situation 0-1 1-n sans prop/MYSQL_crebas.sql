/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  28/02/2023 14:27:02                      */
/*==============================================================*/


drop table if exists ADRESSE;


alter table PERSONNE 
   drop foreign key FK_PERSONNE_HABITER_ADRESSE;

drop table if exists PERSONNE;

/*==============================================================*/
/* Table : ADRESSE                                              */
/*==============================================================*/
create table ADRESSE
(
   CODE_ADRESSE         numeric(8,0) not null auto_increment  comment '',
   CODE_POSTAL          bigint not null  comment '',
   VILLE                varchar(50) not null  comment '',
   primary key (CODE_ADRESSE)
);

/*==============================================================*/
/* Table : PERSONNE                                             */
/*==============================================================*/
create table PERSONNE
(
   CODE_PERSONNE        numeric(8,0) not null auto_increment  comment '',
   CODE_ADRESSE         numeric(8,0)  comment '',
   NOM                  varchar(50) not null  comment '',
   primary key (CODE_PERSONNE)
);

