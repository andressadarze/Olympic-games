-- Active: 1663621767455@@35.226.146.116@3306@alves-andressa-darze
create table OG_Competitions(
    id varchar(255) primary key,
    name varchar(255) not null,
    modality enum('100 metros rasos', 'Lançamento de dardos') not null,
    unit varchar(255) not null,
    status enum('Em andamento', 'Encerrada') not null
);

create table OG_Results_Rasos(
    id varchar(255) primary key,
    competition varchar(255) not null,
    athlete varchar(255) not null,
    value float not null
);

create table OG_Results_Dardos(
    id varchar(255) primary key,
    competition varchar(255) not null,
    athlete varchar(255) not null,
    value float not null
);


select * from `OG_Competitions`;
select * from `OG_Results_Rasos`;
select * from `OG_Results_Dardos`;

