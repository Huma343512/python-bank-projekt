create table banks
(
    id    serial
        primary key,
    name  text not null,
    banknr text not null
        unique
);

create table customers
(
    id    serial
        primary key,
name  text not null,

nr varchar(255) not null
    unique,
    credit int not null default 0
);

create table transactions
(
    id    serial
        primary key,
    amount  int not null default 0,
    account_nr text not null
        references accounts(nr),
    time TIMESTAMP DEFAULT now()
);

CREATE TABLE fun_characters (
    name TEXT NOT NULL,
    slogan TEXT NOT NULL,
    sillyness INTEGER CHECK (sillyness >= 0 AND sillyness <= 10)
);

DROP TABLE IF EXISTS fun_characters;
CREATE TABLE fun_characters (
    name TEXT NOT NULL,
    slogan TEXT NOT NULL
);