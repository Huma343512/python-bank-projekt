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
    ssn  text not null
        unique,
    approved boolean not null default false
);

create table accounts
(
    id    serial
        primary key,
    customer int not null,
    bank int not null,
    type text not null,
    nr text not null
        unique,
    credit int not null default 0
);

create table transactions
(
    id    serial
        primary key,
    amount  int not null default 0,
    account_nr text not null,
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