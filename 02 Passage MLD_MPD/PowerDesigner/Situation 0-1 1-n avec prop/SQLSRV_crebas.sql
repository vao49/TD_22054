/*==============================================================*/
/* Nom de SGBD :  Microsoft SQL Server 2008                     */
/* Date de création :  11/10/2016 09:01:38                      */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('ADRESSE')
            and   type = 'U')
   drop table ADRESSE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERSONNE')
            and   name  = 'HABITER_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERSONNE.HABITER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERSONNE')
            and   type = 'U')
   drop table PERSONNE
go

/*==============================================================*/
/* Table : ADRESSE                                              */
/*==============================================================*/
create table ADRESSE (
   CODE_ADRESSE         numeric              identity,
   CODE_POSTAL          bigint               not null,
   VILLE                varchar(50)          not null,
   constraint PK_ADRESSE primary key nonclustered (CODE_ADRESSE)
)
go

/*==============================================================*/
/* Table : PERSONNE                                             */
/*==============================================================*/
create table PERSONNE (
   CODE_PERSONNE        numeric              identity,
   CODE_ADRESSE         numeric              null,
   NOM_PERSONNE         varchar(50)          not null,
   DATE_DEBUT           datetime             not null,
   constraint PK_PERSONNE primary key nonclustered (CODE_PERSONNE)
)
go

/*==============================================================*/
/* Index : HABITER_FK                                           */
/*==============================================================*/
create index HABITER_FK on PERSONNE (
CODE_ADRESSE ASC
)
go

