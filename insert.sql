create table product(
id varchar(10) not null,
name varchar(100) not null,
description text,
price int not null,
quantity int not null default 0,
created_at timestamp not null default current_timestamp
)

insert into product (id, name, description, price, quantity)
values ('P001', 'Laptop Lenovo', 'Laptop untuk kebutuhan kerja', 8500000, 10);

insert into product (id, name, description, price, quantity)
values ('P002', 'Mouse Logitech', 'Mouse wireless', 250000, 50);

insert into product (id, name, description, price, quantity)
values
('P003', 'Keyboard Mechanical', 'Keyboard dengan switch biru', 750000, 20),
('P004', 'Monitor Samsung 24"', 'Monitor Full HD', 1800000, 15),
('P005', 'Headset Razer', 'Headset gaming RGB', 1250000, 12),
('P006', 'Flashdisk Sandisk 32GB', 'USB 3.0 cepat', 120000, 100),
('P007', 'Printer Epson L3110', 'Printer multifungsi', 2100000, 5);


select * from product;

select id, name, price, quantity, created_at
from product;

--pake primarykey 
create table product (
    id varchar(10) not null,
    name varchar(100) not null,
    description text,
    price int not null,
    quantity int not null default 0,
    created_at timestamp not null default current_timestamp,
    primary key (id)
);

--cari sesuatu di table
select * from product
where price > 1000000;

select * from product
where quantity = 0;

select * from product
where name like '%Laptop%';

select * from product
where price between 500000 and 2000000;

select * from product
where id in ('P001', 'P005', 'P010');

select * from product
where date(created_at) = current_date;

--update pake whereclouse
update product
set price = 9000000
where id = 'P001';

update product
set quantity = 5
where quantity = 0;

update product
set price = price * 1.1
where price > 1000000;

update product
set name = 'Laptop Lenovo ThinkPad'
where id = 'P001';

-- untuk data table
delete from product
where id = 'P010';

-- alias
select 
    id as kode_produk,
    name as nama_produk,
    price as harga,
    quantity as stok
from product;


select p.id, p.name, p.price
from product p;

select 
    name,
    price,
    quantity,
    price * quantity as total_nilai
from product;

select p.name as produk, s.name as supplier
from product p
join supplier s on p.id = s.product_id;


