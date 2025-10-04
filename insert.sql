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
