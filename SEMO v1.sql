/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     21/04/2017 09:03:01      
/* By Johan Ustua xD                                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.BRECHA_INDICADOR') and o.name = 'FK_BRECHA_I_REFERENCE_BRECHA')
alter table dbo.BRECHA_INDICADOR
   drop constraint FK_BRECHA_I_REFERENCE_BRECHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.BRECHA_INDICADOR') and o.name = 'FK_BRECHA_I_REFERENCE_INDICADO')
alter table dbo.BRECHA_INDICADOR
   drop constraint FK_BRECHA_I_REFERENCE_INDICADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.BRECHA_INDICADOR') and o.name = 'FK_BRECHA_I_REFERENCE_SERV_PUB')
alter table dbo.BRECHA_INDICADOR
   drop constraint FK_BRECHA_I_REFERENCE_SERV_PUB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.DIVISION_FUNCIONAL') and o.name = 'FK_DIVISION_REFERENCE_FUNCION')
alter table dbo.DIVISION_FUNCIONAL
   drop constraint FK_DIVISION_REFERENCE_FUNCION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.ENTIDAD') and o.name = 'FK_ENTIDAD_REFERENCE_SECTOR')
alter table dbo.ENTIDAD
   drop constraint FK_ENTIDAD_REFERENCE_SECTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.FUENTE_FINANCIAMIENTO_PI') and o.name = 'FK_FUENTE_F_REFERENCE_FUENTE_F')
alter table dbo.FUENTE_FINANCIAMIENTO_PI
   drop constraint FK_FUENTE_F_REFERENCE_FUENTE_F
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.GRUPO_FUNCIONAL') and o.name = 'FK_GRUPO_FU_REFERENCE_DIVISION')
alter table dbo.GRUPO_FUNCIONAL
   drop constraint FK_GRUPO_FU_REFERENCE_DIVISION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.GRUPO_FUNCIONAL') and o.name = 'FK_GRUPO_FU_REFERENCE_SECTOR')
alter table dbo.GRUPO_FUNCIONAL
   drop constraint FK_GRUPO_FU_REFERENCE_SECTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.MODALIDAD_FORMULACION_PI') and o.name = 'FK_MODALIDA_REFERENCE_MODALIDA')
alter table dbo.MODALIDAD_FORMULACION_PI
   drop constraint FK_MODALIDA_REFERENCE_MODALIDA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROGRAMACION') and o.name = 'FK_PROGRAMA_REFERENCE_BRECHA')
alter table dbo.PROGRAMACION
   drop constraint FK_PROGRAMA_REFERENCE_BRECHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROGRAMACION') and o.name = 'FK_PROGRAMA_REFERENCE_CARTERA_')
alter table dbo.PROGRAMACION
   drop constraint FK_PROGRAMA_REFERENCE_CARTERA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROGRAMACION') and o.name = 'FK_PROGRAMA_REFERENCE_PROYECTO')
alter table dbo.PROGRAMACION
   drop constraint FK_PROGRAMA_REFERENCE_PROYECTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_ESTADO_C')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_ESTADO_C
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_FUENTE_F')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_FUENTE_F
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_GRUPO_FU')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_GRUPO_FU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_MODALIDA')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_MODALIDA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_NATURALE')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_NATURALE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_NIVEL_GO')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_NIVEL_GO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_RUBRO_EJ')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_RUBRO_EJ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_TIPOLOGI')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_TIPOLOGI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_TIPO_INV')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_TIPO_INV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_INVERSION') and o.name = 'FK_PROYECTO_REFERENCE_UNIDAD_E')
alter table dbo.PROYECTO_INVERSION
   drop constraint FK_PROYECTO_REFERENCE_UNIDAD_E
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_UBIGEO') and o.name = 'FK_PROYECTO_REFERENCE_PROYECTO')
alter table dbo.PROYECTO_UBIGEO
   drop constraint FK_PROYECTO_REFERENCE_PROYECTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.PROYECTO_UBIGEO') and o.name = 'FK_PROYECTO_REFERENCE_UBIGEO')
alter table dbo.PROYECTO_UBIGEO
   drop constraint FK_PROYECTO_REFERENCE_UBIGEO
go

alter table dbo.BRECHA
   drop constraint PK_BRECHA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_BRECHA')
            and   type = 'U')
   drop table dbo.tmp_BRECHA
go

execute sp_rename BRECHA, tmp_BRECHA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_BRECHA_INDICADOR')
            and   type = 'U')
   drop table dbo.tmp_BRECHA_INDICADOR
go

execute sp_rename BRECHA_INDICADOR, tmp_BRECHA_INDICADOR
go

alter table dbo.CARTERA_INVERSION
   drop constraint PK_CARTERA_INVERSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_CARTERA_INVERSION')
            and   type = 'U')
   drop table dbo.tmp_CARTERA_INVERSION
go

execute sp_rename CARTERA_INVERSION, tmp_CARTERA_INVERSION
go

alter table dbo.DIVISION_FUNCIONAL
   drop constraint PK_DIVISION_FUNCIONAL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_DIVISION_FUNCIONAL')
            and   type = 'U')
   drop table dbo.tmp_DIVISION_FUNCIONAL
go

execute sp_rename DIVISION_FUNCIONAL, tmp_DIVISION_FUNCIONAL
go

alter table dbo.ENTIDAD
   drop constraint PK_ENTIDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_ENTIDAD')
            and   type = 'U')
   drop table dbo.tmp_ENTIDAD
go

execute sp_rename ENTIDAD, tmp_ENTIDAD
go

alter table dbo.ESTADO_CICLO_INVERSION
   drop constraint PK_ESTADO_CICLO_INVERSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_ESTADO_CICLO_INVERSION')
            and   type = 'U')
   drop table dbo.tmp_ESTADO_CICLO_INVERSION
go

execute sp_rename ESTADO_CICLO_INVERSION, tmp_ESTADO_CICLO_INVERSION
go

alter table dbo.FUENTE_FINANCIAMIENTO
   drop constraint PK_FUENTE_FINANCIAMIENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_FUENTE_FINANCIAMIENTO')
            and   type = 'U')
   drop table dbo.tmp_FUENTE_FINANCIAMIENTO
go

execute sp_rename FUENTE_FINANCIAMIENTO, tmp_FUENTE_FINANCIAMIENTO
go

alter table dbo.FUENTE_FINANCIAMIENTO_PI
   drop constraint PK_FUENTE_FINANCIAMIENTO_PI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_FUENTE_FINANCIAMIENTO_PI')
            and   type = 'U')
   drop table dbo.tmp_FUENTE_FINANCIAMIENTO_PI
go

execute sp_rename FUENTE_FINANCIAMIENTO_PI, tmp_FUENTE_FINANCIAMIENTO_PI
go

alter table dbo.FUNCION
   drop constraint PK_FUNCION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_FUNCION')
            and   type = 'U')
   drop table dbo.tmp_FUNCION
go

execute sp_rename FUNCION, tmp_FUNCION
go

alter table dbo.GRUPO_FUNCIONAL
   drop constraint PK_GRUPO_FUNCIONAL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_GRUPO_FUNCIONAL')
            and   type = 'U')
   drop table dbo.tmp_GRUPO_FUNCIONAL
go

execute sp_rename GRUPO_FUNCIONAL, tmp_GRUPO_FUNCIONAL
go

alter table dbo.INDICADOR
   drop constraint PK_INDICADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_INDICADOR')
            and   type = 'U')
   drop table dbo.tmp_INDICADOR
go

execute sp_rename INDICADOR, tmp_INDICADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.MODALIDAD_FORMULACION')
            and   type = 'U')
   drop table dbo.MODALIDAD_FORMULACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.MODALIDAD_FORMULACION_PI')
            and   type = 'U')
   drop table dbo.MODALIDAD_FORMULACION_PI
go

alter table dbo.NATURALESA_INVERSION
   drop constraint PK_NATURALESA_INVERSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_NATURALESA_INVERSION')
            and   type = 'U')
   drop table dbo.tmp_NATURALESA_INVERSION
go

execute sp_rename NATURALESA_INVERSION, tmp_NATURALESA_INVERSION
go

alter table dbo.NIVEL_GOBIERNO
   drop constraint PK_NIVEL_GOBIERNO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_NIVEL_GOBIERNO')
            and   type = 'U')
   drop table dbo.tmp_NIVEL_GOBIERNO
go

execute sp_rename NIVEL_GOBIERNO, tmp_NIVEL_GOBIERNO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_PROGRAMACION')
            and   type = 'U')
   drop table dbo.tmp_PROGRAMACION
go

execute sp_rename PROGRAMACION, tmp_PROGRAMACION
go

alter table dbo.PROYECTO_INVERSION
   drop constraint PK_PROYECTO_INVERSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_PROYECTO_INVERSION')
            and   type = 'U')
   drop table dbo.tmp_PROYECTO_INVERSION
go

execute sp_rename PROYECTO_INVERSION, tmp_PROYECTO_INVERSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_PROYECTO_UBIGEO')
            and   type = 'U')
   drop table dbo.tmp_PROYECTO_UBIGEO
go

execute sp_rename PROYECTO_UBIGEO, tmp_PROYECTO_UBIGEO
go

alter table dbo.RUBRO_EJECUCION
   drop constraint PK_RUBRO_EJECUCION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_RUBRO_EJECUCION')
            and   type = 'U')
   drop table dbo.tmp_RUBRO_EJECUCION
go

execute sp_rename RUBRO_EJECUCION, tmp_RUBRO_EJECUCION
go

alter table dbo.SECTOR
   drop constraint PK_SECTOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_SECTOR')
            and   type = 'U')
   drop table dbo.tmp_SECTOR
go

execute sp_rename SECTOR, tmp_SECTOR
go

alter table dbo.SERV_PUB_ASOC
   drop constraint PK_SERV_PUB_ASOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_SERV_PUB_ASOC')
            and   type = 'U')
   drop table dbo.tmp_SERV_PUB_ASOC
go

execute sp_rename SERV_PUB_ASOC, tmp_SERV_PUB_ASOC
go

alter table dbo.TIPOLOGIA_INVERSION
   drop constraint PK_TIPOLOGIA_INVERSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_TIPOLOGIA_INVERSION')
            and   type = 'U')
   drop table dbo.tmp_TIPOLOGIA_INVERSION
go

execute sp_rename TIPOLOGIA_INVERSION, tmp_TIPOLOGIA_INVERSION
go

alter table dbo.TIPO_INVERSION
   drop constraint PK_TIPO_INVERSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_TIPO_INVERSION')
            and   type = 'U')
   drop table dbo.tmp_TIPO_INVERSION
go

execute sp_rename TIPO_INVERSION, tmp_TIPO_INVERSION
go

alter table dbo.UBIGEO
   drop constraint PK_UBIGEO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_UBIGEO')
            and   type = 'U')
   drop table dbo.tmp_UBIGEO
go

execute sp_rename UBIGEO, tmp_UBIGEO
go

alter table dbo.UNIDAD_EJECUTORA
   drop constraint PK_UNIDAD_EJECUTORA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.tmp_UNIDAD_EJECUTORA')
            and   type = 'U')
   drop table dbo.tmp_UNIDAD_EJECUTORA
go

execute sp_rename UNIDAD_EJECUTORA, tmp_UNIDAD_EJECUTORA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.sysdiagrams')
            and   type = 'U')
   drop table dbo.sysdiagrams
go

drop schema dbo
go

/*==============================================================*/
/* Table: BRECHA                                                */
/*==============================================================*/
create table BRECHA (
   ID_BRECHA            integer              identity,
   DESCRIPCION_BRECHA   varchar(200)         null,
   NOMBRE_BRECHA        varchar(200)         null,
   DESC2                varchar(100)         null
)
go

set identity_insert BRECHA on
go

insert into BRECHA (ID_BRECHA, DESCRIPCION_BRECHA, NOMBRE_BRECHA)
select ID_BRECHA, DESCRIPCION_BRECHA, NOMBRE_BRECHA
from dbo.tmp_BRECHA
go

set identity_insert BRECHA off
go

alter table BRECHA
   add constraint PK_BRECHA primary key (ID_BRECHA)
go

/*==============================================================*/
/* Table: BRECHA_INDICADOR                                      */
/*==============================================================*/
create table BRECHA_INDICADOR (
   ID_BRECHA            integer              null,
   ID_INDICADOR         integer              null,
   ID_SERV_PUB_ASOC     integer              null,
   FECHA_INDICADOR      date                 null,
   VALOR_INDICADOR      varchar(100)         null,
   LINEA_BASE_INDICADOR varchar(10)          null
)
go

insert into BRECHA_INDICADOR (ID_BRECHA, ID_INDICADOR, ID_SERV_PUB_ASOC, FECHA_INDICADOR, VALOR_INDICADOR, LINEA_BASE_INDICADOR)
select ID_BRECHA, ID_INDICADOR, ID_SERV_PUB_ASOC, FECHA_INDICADOR, VALOR_INDICADOR, LINEA_BASE_INDICADOR
from dbo.tmp_BRECHA_INDICADOR
go

/*==============================================================*/
/* Table: CARTERA_INVERSION                                     */
/*==============================================================*/
create table CARTERA_INVERSION (
   ID_CARTERA           integer              identity,
   CODIGO_INVERSION     varchar(50)          null,
   ANO_APERTURA         date                 null
)
go

set identity_insert CARTERA_INVERSION on
go

insert into CARTERA_INVERSION (ID_CARTERA, CODIGO_INVERSION, ANO_APERTURA)
select ID_CARTERA, CODIGO_INVERSION, ANO_APERTURA
from dbo.tmp_CARTERA_INVERSION
go

set identity_insert CARTERA_INVERSION off
go

alter table CARTERA_INVERSION
   add constraint PK_CARTERA_INVERSION primary key (ID_CARTERA)
go

/*==============================================================*/
/* Table: DIVISION_FUNCIONAL                                    */
/*==============================================================*/
create table DIVISION_FUNCIONAL (
   ID_DIVISION_FUNCIONAL integer              identity,
   ID_FUNCION           integer              null,
   DESCRIPCION          varchar(200)         null
)
go

set identity_insert DIVISION_FUNCIONAL on
go

insert into DIVISION_FUNCIONAL (ID_DIVISION_FUNCIONAL, ID_FUNCION, DESCRIPCION)
select ID_DIVISION_FUNCIONAL, ID_FUNCION, DESCRIPCION
from dbo.tmp_DIVISION_FUNCIONAL
go

set identity_insert DIVISION_FUNCIONAL off
go

alter table DIVISION_FUNCIONAL
   add constraint PK_DIVISION_FUNCIONAL primary key (ID_DIVISION_FUNCIONAL)
go

/*==============================================================*/
/* Table: ENTIDAD                                               */
/*==============================================================*/
create table ENTIDAD (
   ID_ENTIDAD           integer              identity,
   ID_SECTOR            integer              null,
   DENOMINACION_ENTIDAD varchar(100)         null,
   NOMBRE_ENTIDAD       varchar(100)         null
)
go

set identity_insert ENTIDAD on
go

insert into ENTIDAD (ID_ENTIDAD, ID_SECTOR, DENOMINACION_ENTIDAD, NOMBRE_ENTIDAD)
select ID_ENTIDAD, ID_SECTOR, DENOMINACION_ENTIDAD, NOMBRE_ENTIDAD
from dbo.tmp_ENTIDAD
go

set identity_insert ENTIDAD off
go

alter table ENTIDAD
   add constraint PK_ENTIDAD primary key (ID_ENTIDAD)
go

/*==============================================================*/
/* Table: ESTADO_CICLO_INVERSION                                */
/*==============================================================*/
create table ESTADO_CICLO_INVERSION (
   ID_ESTADO_CICLO      integer              identity,
   NOMBRE_ESTADO        varchar(200)         null,
   DESCRIPCION_ESTADO   varchar(200)         null
)
go

set identity_insert ESTADO_CICLO_INVERSION on
go

insert into ESTADO_CICLO_INVERSION (ID_ESTADO_CICLO, NOMBRE_ESTADO, DESCRIPCION_ESTADO)
select ID_ESTADO_CICLO, NOMBRE_ESTADO, DESCRIPCION_ESTADO
from dbo.tmp_ESTADO_CICLO_INVERSION
go

set identity_insert ESTADO_CICLO_INVERSION off
go

alter table ESTADO_CICLO_INVERSION
   add constraint PK_ESTADO_CICLO_INVERSION primary key (ID_ESTADO_CICLO)
go

/*==============================================================*/
/* Table: FUENTE_FINANCIAMIENTO                                 */
/*==============================================================*/
create table FUENTE_FINANCIAMIENTO (
   ID_FUENTE_FINANCIAMIENTO integer              identity,
   DESCRIPCION_FUENTE_FINAN varchar(100)         null
)
go

set identity_insert FUENTE_FINANCIAMIENTO on
go

insert into FUENTE_FINANCIAMIENTO (ID_FUENTE_FINANCIAMIENTO, DESCRIPCION_FUENTE_FINAN)
select ID_FUENTE_FINANCIAMIENTO, DESCRIPCION_FUENTE_FINAN
from dbo.tmp_FUENTE_FINANCIAMIENTO
go

set identity_insert FUENTE_FINANCIAMIENTO off
go

alter table FUENTE_FINANCIAMIENTO
   add constraint PK_FUENTE_FINANCIAMIENTO primary key (ID_FUENTE_FINANCIAMIENTO)
go

/*==============================================================*/
/* Table: FUENTE_FINANCIAMIENTO_PI                              */
/*==============================================================*/
create table FUENTE_FINANCIAMIENTO_PI (
   ID_FUENTE_FINANCIAMIENTO_PI integer              identity,
   ID_FUENTE_FINANCIAMIENTO integer              null,
   ID_PROYECTO_INVERSION integer              null,
   FECHA_FUENTE_FINANCIAMIENTO date                 null
)
go

set identity_insert FUENTE_FINANCIAMIENTO_PI on
go

insert into FUENTE_FINANCIAMIENTO_PI (ID_FUENTE_FINANCIAMIENTO_PI, ID_FUENTE_FINANCIAMIENTO, FECHA_FUENTE_FINANCIAMIENTO)
select ID_FUENTE_FINANCIAMIENTO_PI, ID_FUENTE_FINANCIAMIENTO, FECHA_FUENTE_FINANCIAMIENTO
from dbo.tmp_FUENTE_FINANCIAMIENTO_PI
go

set identity_insert FUENTE_FINANCIAMIENTO_PI off
go

alter table FUENTE_FINANCIAMIENTO_PI
   add constraint PK_FUENTE_FINANCIAMIENTO_PI primary key (ID_FUENTE_FINANCIAMIENTO_PI)
go

/*==============================================================*/
/* Table: FUNCION                                               */
/*==============================================================*/
create table FUNCION (
   ID_FUNCION           integer              identity,
   DESCRIPCION_FUNCION  varchar(200)         null
)
go

set identity_insert FUNCION on
go

insert into FUNCION (ID_FUNCION, DESCRIPCION_FUNCION)
select ID_FUNCION, DESCRIPCION_FUNCION
from dbo.tmp_FUNCION
go

set identity_insert FUNCION off
go

alter table FUNCION
   add constraint PK_FUNCION primary key (ID_FUNCION)
go

/*==============================================================*/
/* Table: GRUPO_FUNCIONAL                                       */
/*==============================================================*/
create table GRUPO_FUNCIONAL (
   ID_GRUPO_FUNCIONAL   integer              identity,
   ID_DIVISION_FUNCIONAL integer              null,
   ID_SECTOR            integer              null,
   DESCRIPCION          varchar(200)         null
)
go

set identity_insert GRUPO_FUNCIONAL on
go

insert into GRUPO_FUNCIONAL (ID_GRUPO_FUNCIONAL, ID_DIVISION_FUNCIONAL, ID_SECTOR, DESCRIPCION)
select ID_GRUPO_FUNCIONAL, ID_DIVISION_FUNCIONAL, ID_SECTOR, DESCRIPCION
from dbo.tmp_GRUPO_FUNCIONAL
go

set identity_insert GRUPO_FUNCIONAL off
go

alter table GRUPO_FUNCIONAL
   add constraint PK_GRUPO_FUNCIONAL primary key (ID_GRUPO_FUNCIONAL)
go

/*==============================================================*/
/* Table: INDICADOR                                             */
/*==============================================================*/
create table INDICADOR (
   ID_INDICADOR         integer              identity,
   NOMBRE_INDICADOR     varchar(100)         null,
   DEFINICION_INDICADOR varchar(100)         null,
   UNIDAD_MEDIDA_INDICADOR varchar(50)          null
)
go

set identity_insert INDICADOR on
go

insert into INDICADOR (ID_INDICADOR, NOMBRE_INDICADOR, DEFINICION_INDICADOR, UNIDAD_MEDIDA_INDICADOR)
select ID_INDICADOR, NOMBRE_INDICADOR, DEFINICION_INDICADOR, UNIDAD_MEDIDA_INDICADOR
from dbo.tmp_INDICADOR
go

set identity_insert INDICADOR off
go

alter table INDICADOR
   add constraint PK_INDICADOR primary key (ID_INDICADOR)
go

/*==============================================================*/
/* Table: MODALIDAD_EJECUCION                                   */
/*==============================================================*/
create table MODALIDAD_EJECUCION (
   ID_MODALIDAD_EJEC    integer              identity,
   DESC_MODALIDAD_EJEC  varchar(100)         null
)
go

alter table MODALIDAD_EJECUCION
   add constraint PK_MODALIDAD_EJECUCION primary key (ID_MODALIDAD_EJEC)
go

/*==============================================================*/
/* Table: MODALIDAD_EJECUCION_PI                                */
/*==============================================================*/
create table MODALIDAD_EJECUCION_PI (
   ID_MODALIDAD_EJEC_PI integer              identity,
   ID_MODALIDAD_EJEC    integer              null,
   ID_PROYECTO_INVERSION integer              null,
   FECHA_MODALIDAD_EJEC_PI date                 null
)
go

alter table MODALIDAD_EJECUCION_PI
   add constraint PK_MODALIDAD_EJECUCION_PI primary key (ID_MODALIDAD_EJEC_PI)
go

/*==============================================================*/
/* Table: NATURALESA_INVERSION                                  */
/*==============================================================*/
create table NATURALESA_INVERSION (
   ID_NATURALESA_INVERSION integer              identity,
   DESCRIPCION_NATURALESA varchar(200)         null
)
go

set identity_insert NATURALESA_INVERSION on
go

insert into NATURALESA_INVERSION (ID_NATURALESA_INVERSION, DESCRIPCION_NATURALESA)
select ID_NATURALESA_INVERSION, DESCRIPCION_NATURALESA
from dbo.tmp_NATURALESA_INVERSION
go

set identity_insert NATURALESA_INVERSION off
go

alter table NATURALESA_INVERSION
   add constraint PK_NATURALESA_INVERSION primary key (ID_NATURALESA_INVERSION)
go

/*==============================================================*/
/* Table: NIVEL_GOBIERNO                                        */
/*==============================================================*/
create table NIVEL_GOBIERNO (
   ID_NIVEL_GOBIERNO    integer              identity,
   DESC_NIVEL_GOB       varchar(100)         null
)
go

set identity_insert NIVEL_GOBIERNO on
go

insert into NIVEL_GOBIERNO (ID_NIVEL_GOBIERNO, DESC_NIVEL_GOB)
select ID_NIVEL_GOBIERNO, DESC_NIVEL_GOB
from dbo.tmp_NIVEL_GOBIERNO
go

set identity_insert NIVEL_GOBIERNO off
go

alter table NIVEL_GOBIERNO
   add constraint PK_NIVEL_GOBIERNO primary key (ID_NIVEL_GOBIERNO)
go

/*==============================================================*/
/* Table: PROGRAMACION                                          */
/*==============================================================*/
create table PROGRAMACION (
   ID_CARTERA           integer              null,
   ID_BRECHA            integer              null,
   ID_PROYECTO_INVERSION integer              null,
   MONTO_PROGRAMADO     decimal(16,2)        null,
   ANO_PROGRAMADO       date                 null
)
go

insert into PROGRAMACION (ID_CARTERA, ID_BRECHA, ID_PROYECTO_INVERSION, MONTO_PROGRAMADO, ANO_PROGRAMADO)
select ID_CARTERA, ID_BRECHA, ID_PROYECTO_INVERSION, MONTO_PROGRAMADO, ANO_PROGRAMADO
from dbo.tmp_PROGRAMACION
go

/*==============================================================*/
/* Table: PROYECTO_INVERSION                                    */
/*==============================================================*/
create table PROYECTO_INVERSION (
   ID_PROYECTO_INVERSION integer              identity,
   ID_RUBRO_EJECUCION   integer              null,
   ID_UE                integer              null,
   ID_NATURALESA_INVERSION integer              null,
   ID_TIPOLOGIA_INVERSION integer              null,
   ID_ESTADO_CICLO      integer              null,
   ID_TIPO_INVERSION    integer              null,
   ID_GRUPO_FUNCIONAL   integer              null,
   ID_NIVEL_GOBIERNO    integer              null,
   CODIGO_UNICO_PI      varchar(50)          null,
   ESTADO_TIPO_PI       varchar(50)          null,
   NOMBRE_PI            varchar(50)          null,
   COSTO_PI             decimal(16,2)        null,
   DEVENGADO_AC_PI      decimal(16,2)        null,
   FECHA_INICIO_FOR_EVA date                 null,
   FECHA_FIN_FOR_EV     date                 null,
   FECHA_INICIO_EJEC    date                 null,
   FECHA_FIN_EJEC       date                 null
)
go

set identity_insert PROYECTO_INVERSION on
go

insert into PROYECTO_INVERSION (ID_PROYECTO_INVERSION, ID_RUBRO_EJECUCION, ID_UE, ID_NATURALESA_INVERSION, ID_TIPOLOGIA_INVERSION, ID_ESTADO_CICLO, ID_TIPO_INVERSION, ID_GRUPO_FUNCIONAL, ID_NIVEL_GOBIERNO, CODIGO_UNICO_PI, ESTADO_TIPO_PI, NOMBRE_PI, COSTO_PI, DEVENGADO_AC_PI, FECHA_INICIO_FOR_EVA, FECHA_FIN_FOR_EV, FECHA_INICIO_EJEC, FECHA_FIN_EJEC)
select ID_PROYECTO_INVERSION, ID_RUBRO_EJECUCION, ID_UE, ID_NATURALESA_INVERSION, ID_TIPOLOGIA_INVERSION, ID_ESTADO_CICLO, ID_TIPO_INVERSION, ID_GRUPO_FUNCIONAL, ID_NIVEL_GOBIERNO, CODIGO_UNICO_PI, ESTADO_TIPO_PI, NOMBRE_PI, COSTO_PI, DEVENGADO_AC_PI, FECHA_INICIO_FOR_EVA, FECHA_FIN_FOR_EV, FECHA_INICIO_EJEC, FECHA_FIN_EJEC
from dbo.tmp_PROYECTO_INVERSION
go

set identity_insert PROYECTO_INVERSION off
go

alter table PROYECTO_INVERSION
   add constraint PK_PROYECTO_INVERSION primary key (ID_PROYECTO_INVERSION)
go

/*==============================================================*/
/* Table: PROYECTO_UBIGEO                                       */
/*==============================================================*/
create table PROYECTO_UBIGEO (
   ID_UBIGEO            varchar(6)           null,
   ID_PROYECTO_INVERSION integer              null,
   DESCRIPCION_PRO_UBI  varchar(100)         null
)
go

insert into PROYECTO_UBIGEO (ID_UBIGEO, ID_PROYECTO_INVERSION, DESCRIPCION_PRO_UBI)
select ID_UBIGEO, ID_PROYECTO_INVERSION, DESCRIPCION_PRO_UBI
from dbo.tmp_PROYECTO_UBIGEO
go

/*==============================================================*/
/* Table: RUBRO_EJECUCION                                       */
/*==============================================================*/
create table RUBRO_EJECUCION (
   ID_RUBRO_EJECUCION   integer              identity,
   DESCRIPCION_RUBRO    varchar(200)         null
)
go

set identity_insert RUBRO_EJECUCION on
go

insert into RUBRO_EJECUCION (ID_RUBRO_EJECUCION, DESCRIPCION_RUBRO)
select ID_RUBRO_EJECUCION, DESCRIPCION_RUBRO
from dbo.tmp_RUBRO_EJECUCION
go

set identity_insert RUBRO_EJECUCION off
go

alter table RUBRO_EJECUCION
   add constraint PK_RUBRO_EJECUCION primary key (ID_RUBRO_EJECUCION)
go

/*==============================================================*/
/* Table: SECTOR                                                */
/*==============================================================*/
create table SECTOR (
   ID_SECTOR            integer              identity,
   NOMBRE_SECTOR        varchar(100)         null
)
go

set identity_insert SECTOR on
go

insert into SECTOR (ID_SECTOR, NOMBRE_SECTOR)
select ID_SECTOR, NOMBRE_SECTOR
from dbo.tmp_SECTOR
go

set identity_insert SECTOR off
go

alter table SECTOR
   add constraint PK_SECTOR primary key (ID_SECTOR)
go

/*==============================================================*/
/* Table: SERV_PUB_ASOC                                         */
/*==============================================================*/
create table SERV_PUB_ASOC (
   ID_SERV_PUB_ASOC     integer              identity,
   NOMBRE_SERV_PUB_ASOC varchar(50)          null
)
go

set identity_insert SERV_PUB_ASOC on
go

insert into SERV_PUB_ASOC (ID_SERV_PUB_ASOC, NOMBRE_SERV_PUB_ASOC)
select ID_SERV_PUB_ASOC, NOMBRE_SERV_PUB_ASOC
from dbo.tmp_SERV_PUB_ASOC
go

set identity_insert SERV_PUB_ASOC off
go

alter table SERV_PUB_ASOC
   add constraint PK_SERV_PUB_ASOC primary key (ID_SERV_PUB_ASOC)
go

/*==============================================================*/
/* Table: TIPOLOGIA_INVERSION                                   */
/*==============================================================*/
create table TIPOLOGIA_INVERSION (
   ID_TIPOLOGIA_INVERSION integer              identity,
   DESCRIPCION_TIPOLOGIA varchar(200)         null
)
go

set identity_insert TIPOLOGIA_INVERSION on
go

insert into TIPOLOGIA_INVERSION (ID_TIPOLOGIA_INVERSION, DESCRIPCION_TIPOLOGIA)
select ID_TIPOLOGIA_INVERSION, DESCRIPCION_TIPOLOGIA
from dbo.tmp_TIPOLOGIA_INVERSION
go

set identity_insert TIPOLOGIA_INVERSION off
go

alter table TIPOLOGIA_INVERSION
   add constraint PK_TIPOLOGIA_INVERSION primary key (ID_TIPOLOGIA_INVERSION)
go

/*==============================================================*/
/* Table: TIPO_INVERSION                                        */
/*==============================================================*/
create table TIPO_INVERSION (
   ID_TIPO_INVERSION    integer              identity,
   DESCRIPCION_TIPO_INVERSION varchar(200)         null
)
go

set identity_insert TIPO_INVERSION on
go

insert into TIPO_INVERSION (ID_TIPO_INVERSION, DESCRIPCION_TIPO_INVERSION)
select ID_TIPO_INVERSION, DESCRIPCION_TIPO_INVERSION
from dbo.tmp_TIPO_INVERSION
go

set identity_insert TIPO_INVERSION off
go

alter table TIPO_INVERSION
   add constraint PK_TIPO_INVERSION primary key (ID_TIPO_INVERSION)
go

/*==============================================================*/
/* Table: UBIGEO                                                */
/*==============================================================*/
create table UBIGEO (
   ID_UBIGEO            varchar(6)           not null,
   DEPARTAMENTO         varchar(70)          null,
   PROVINCIA            varchar(70)          null,
   DISTRITO             varchar(70)          null
)
go

insert into UBIGEO (ID_UBIGEO, DEPARTAMENTO, PROVINCIA, DISTRITO)
select ID_UBIGEO, DEPARTAMENTO, PROVINCIA, DISTRITO
from dbo.tmp_UBIGEO
go

alter table UBIGEO
   add constraint PK_UBIGEO primary key (ID_UBIGEO)
go

/*==============================================================*/
/* Table: UNIDAD_EJECUTORA                                      */
/*==============================================================*/
create table UNIDAD_EJECUTORA (
   ID_UE                integer              identity,
   NOMBRE_UE            varchar(200)         null
)
go

set identity_insert UNIDAD_EJECUTORA on
go

insert into UNIDAD_EJECUTORA (ID_UE, NOMBRE_UE)
select ID_UE, NOMBRE_UE
from dbo.tmp_UNIDAD_EJECUTORA
go

set identity_insert UNIDAD_EJECUTORA off
go

alter table UNIDAD_EJECUTORA
   add constraint PK_UNIDAD_EJECUTORA primary key (ID_UE)
go

alter table BRECHA_INDICADOR
   add constraint FK_BRECHA_I_REFERENCE_BRECHA foreign key (ID_BRECHA)
      references BRECHA (ID_BRECHA)
go

alter table BRECHA_INDICADOR
   add constraint FK_BRECHA_I_REFERENCE_INDICADO foreign key (ID_INDICADOR)
      references INDICADOR (ID_INDICADOR)
go

alter table BRECHA_INDICADOR
   add constraint FK_BRECHA_I_REFERENCE_SERV_PUB foreign key (ID_SERV_PUB_ASOC)
      references SERV_PUB_ASOC (ID_SERV_PUB_ASOC)
go

alter table DIVISION_FUNCIONAL
   add constraint FK_DIVISION_REFERENCE_FUNCION foreign key (ID_FUNCION)
      references FUNCION (ID_FUNCION)
go

alter table ENTIDAD
   add constraint FK_ENTIDAD_REFERENCE_SECTOR foreign key (ID_SECTOR)
      references SECTOR (ID_SECTOR)
go

alter table FUENTE_FINANCIAMIENTO_PI
   add constraint FK_FUENTE_F_REFERENCE_FUENTE_F foreign key (ID_FUENTE_FINANCIAMIENTO)
      references FUENTE_FINANCIAMIENTO (ID_FUENTE_FINANCIAMIENTO)
go

alter table FUENTE_FINANCIAMIENTO_PI
   add constraint FK_FUENTE_F_REFERENCE_PROYECTO foreign key (ID_PROYECTO_INVERSION)
      references PROYECTO_INVERSION (ID_PROYECTO_INVERSION)
go

alter table GRUPO_FUNCIONAL
   add constraint FK_GRUPO_FU_REFERENCE_SECTOR foreign key (ID_SECTOR)
      references SECTOR (ID_SECTOR)
go

alter table GRUPO_FUNCIONAL
   add constraint FK_GRUPO_FU_REFERENCE_DIVISION foreign key (ID_DIVISION_FUNCIONAL)
      references DIVISION_FUNCIONAL (ID_DIVISION_FUNCIONAL)
go

alter table MODALIDAD_EJECUCION_PI
   add constraint FK_MODALIDA_REFERENCE_MODALIDA foreign key (ID_MODALIDAD_EJEC)
      references MODALIDAD_EJECUCION (ID_MODALIDAD_EJEC)
go

alter table MODALIDAD_EJECUCION_PI
   add constraint FK_MODALIDA_REFERENCE_PROYECTO foreign key (ID_PROYECTO_INVERSION)
      references PROYECTO_INVERSION (ID_PROYECTO_INVERSION)
go

alter table PROGRAMACION
   add constraint FK_PROGRAMA_REFERENCE_CARTERA_ foreign key (ID_CARTERA)
      references CARTERA_INVERSION (ID_CARTERA)
go

alter table PROGRAMACION
   add constraint FK_PROGRAMA_REFERENCE_BRECHA foreign key (ID_BRECHA)
      references BRECHA (ID_BRECHA)
go

alter table PROGRAMACION
   add constraint FK_PROGRAMA_REFERENCE_PROYECTO foreign key (ID_PROYECTO_INVERSION)
      references PROYECTO_INVERSION (ID_PROYECTO_INVERSION)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_GRUPO_FU foreign key (ID_GRUPO_FUNCIONAL)
      references GRUPO_FUNCIONAL (ID_GRUPO_FUNCIONAL)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_NIVEL_GO foreign key (ID_NIVEL_GOBIERNO)
      references NIVEL_GOBIERNO (ID_NIVEL_GOBIERNO)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_RUBRO_EJ foreign key (ID_RUBRO_EJECUCION)
      references RUBRO_EJECUCION (ID_RUBRO_EJECUCION)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_UNIDAD_E foreign key (ID_UE)
      references UNIDAD_EJECUTORA (ID_UE)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_NATURALE foreign key (ID_NATURALESA_INVERSION)
      references NATURALESA_INVERSION (ID_NATURALESA_INVERSION)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_TIPOLOGI foreign key (ID_TIPOLOGIA_INVERSION)
      references TIPOLOGIA_INVERSION (ID_TIPOLOGIA_INVERSION)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_ESTADO_C foreign key (ID_ESTADO_CICLO)
      references ESTADO_CICLO_INVERSION (ID_ESTADO_CICLO)
go

alter table PROYECTO_INVERSION
   add constraint FK_PROYECTO_REFERENCE_TIPO_INV foreign key (ID_TIPO_INVERSION)
      references TIPO_INVERSION (ID_TIPO_INVERSION)
go

alter table PROYECTO_UBIGEO
   add constraint FK_PROYECTO_REFERENCE_UBIGEO foreign key (ID_UBIGEO)
      references UBIGEO (ID_UBIGEO)
go

alter table PROYECTO_UBIGEO
   add constraint FK_PROYECTO_REFERENCE_PROYECTO foreign key (ID_PROYECTO_INVERSION)
      references PROYECTO_INVERSION (ID_PROYECTO_INVERSION)
go

