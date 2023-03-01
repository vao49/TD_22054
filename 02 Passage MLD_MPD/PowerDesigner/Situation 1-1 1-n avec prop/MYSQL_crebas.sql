/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  01/03/2023 14:41:19                      */
/*==============================================================*/


alter table CANDIDAT 
   drop foreign key FK_CANDIDAT_INSCRIRE_CONCOURS;


alter table CANDIDAT 
   drop foreign key FK_CANDIDAT_INSCRIRE_CONCOURS;

drop table if exists CANDIDAT;

drop table if exists CONCOURS;

/*==============================================================*/
/* Table : CANDIDAT                                             */
/*==============================================================*/
create table CANDIDAT
(
   NO_CANDIDAT          int not null auto_increment  comment '',
   CODE_CONCOURS        int not null  comment '',
   NOM_CANDIDAT         varchar(25) not null  comment '',
   DATE_INSCRIPTION     date not null  comment '',
   primary key (NO_CANDIDAT)
);

/*==============================================================*/
/* Table : CONCOURS                                             */
/*==============================================================*/
create table CONCOURS
(
   CODE_CONCOURS        int not null auto_increment  comment '',
   NOM_CONCOURS         varchar(50) not null  comment '',
   primary key (CODE_CONCOURS)
);

alter table CANDIDAT add constraint FK_CANDIDAT_INSCRIRE_CONCOURS foreign key (CODE_CONCOURS)
      references CONCOURS (CODE_CONCOURS) on delete restrict on update restrict;

