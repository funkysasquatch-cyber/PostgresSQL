select * from pg_tables where schemaname='public'; 

MEMBUAT DATABASE
create database belajar;

MEMBUAT TABLE
create table barang(
	kode int,
	NAME VARCHAR(100),
	harga int,
	jumlah int
)

MELIHAT TABLE
SELECT * FROM barang;

NAMBAH COLUM TABLE
alter table barang
add column deskripsi text;

HAPUS COLUM TABLE
alter table barang
drop column deskripsi;

EDIT NAMA COLUM
alter table barang 
rename column name to nama;
