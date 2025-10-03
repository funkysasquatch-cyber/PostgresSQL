select * from pg_tables where schemaname='public'; 

-- MEMBUAT DATABASE
create database belajar;

-- MEMBUAT TABLE
create table barang(
	kode int,
	NAME varchar(100),
	harga int,
	jumlah int
);

-- NOT NULL (JIKA DI ISI TIDAK BOLEH KOSONG)
--contoh
create table barang(
	kode int not null,
	nama varchar(100) not null,
	harga int not null,
	jumlah int not null
);


-- MELIHAT TABLE
select * from barang;

-- NAMBAH COLUM TABLE
alter table barang add column deskripsi text;

-- HAPUS COLUM TABLE
alter table barang drop column deskripsi;

-- EDIT NAMA COLUM
alter table barang rename column name to nama;
