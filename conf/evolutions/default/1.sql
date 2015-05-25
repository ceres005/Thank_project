# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table login (
  id                        integer not null,
  name                      varchar(255),
  constraint pk_login primary key (id))
;

create table permission (
  permission_id             integer not null,
  permission_name           varchar(255),
  constraint pk_permission primary key (permission_id))
;

create table section (
  section_id                integer not null,
  section_name              varchar(255),
  constraint pk_section primary key (section_id))
;

create table thankyou (
  thankyou_id               integer not null,
  date                      timestamp,
  section_id                varchar(255),
  you_name                  varchar(255),
  employee_number           varchar(255),
  vote_number               integer,
  help_contents             varchar(255),
  check_id                  integer,
  constraint pk_thankyou primary key (thankyou_id))
;

create sequence login_seq;

create sequence permission_seq;

create sequence section_seq;

create sequence thankyou_seq;




# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists login;

drop table if exists permission;

drop table if exists section;

drop table if exists thankyou;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists login_seq;

drop sequence if exists permission_seq;

drop sequence if exists section_seq;

drop sequence if exists thankyou_seq;

