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

-- NOT NULL TAPI DENGAN DEFAULT NILAI
--contoh
create table barang(
	kode int not null,
	nama VARCHAR(100) not null,
	harga int not null default 1000,
	jumlah int not null default 0,
	waktu_dibuat TIMESTAMP not null default current_timestamp
)

-- MELIHAT TABLE
select * from barang;

-- NAMBAH COLUM TABLE
alter table barang add column deskripsi text;

-- HAPUS COLUM TABLE
alter table barang drop column deskripsi;

-- EDIT NAMA COLUM
alter table barang rename column name to nama;

-- HAPUS ISI TABLE DAN MEMBUAT ULANG DENGAN SAMA (TABLENYA DI BUAT ULANG NAMUN ISINYA DI HAPUS)
truncate barang;

-- HAPUS TABLE
drop table barang;

--melihat detail table barang
select 
    column_name, 
    data_type, 
    is_nullable, 
    column_default
from information_schema.columns
where table_name = 'barang';

