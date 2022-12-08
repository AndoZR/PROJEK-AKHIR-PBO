create table daftar_transaksi (
	id_daftar_transaksi serial primary key,
	tanggal date not null,
	nama_produk varchar(25) not null,
	harga int not null,
	qty int not null,
	jenis_pembayaran varchar not null, 
	jumlah int not null,
	total_harga int not null
)

create table coba(
	idCoba serial primary key,
	namaCoba varchar(10) not null
)


create table daftar_transaksi(
	id_daftar_transaksi serial primary key,
	tanggal date not null,
	nama_produk varchar(25) not null,
	harga int not null,
	qty int not null,
	jenis_pembayaran varchar not null,
	jumlah int not null,
	total_harga int not null
)

select * from coba
select * from jenis_pembayaran
BANK BCA
BANK MANDIRI
BANK BRI
DANA
OVO
TUNAI


SELECT * from jenis_pembayaran
where metode_pembayaran = 'OVO'

insert into jenis_pembayaran(metode_pembayaran)
values('BANK BCA');

insert into coba(namaCoba)
values('oke');


update produk
set stok = stok + 2 
where id_produk = 2

select* from produk


select * from detail_transaksi

select * from transaksi
select * from produk

alter table transaksi 
drop column id_jenis_pembayaran

alter table transaksi
add metode_pembayaran varchar(25) not null

alter table detail_transaksi
add total_harga int not null

insert into detail_transaksi(id_transaksi, id_produk, kuantitas)
select id_transaksi from transaksi, 1, 1, 1, 1;

insert into detail_transaksi(id_transaksi, id_produk, kuantitas)
select id_transaksi from transaksi, 1, 1, 1, 1;

select id_transaksi from transaksi

select metode_pembayaran from jenis_pembayaran

select * from daftar_transaksi


create table pengeluaran (
	id_pengeluaran serial PRIMARY key,
	tanggal date not null,
	keterangan varchar(255) not null,
	biaya int not null
)
select * from pengeluaran

create table rekapitulasi_keuangan (
	id_rekapitulasi_keuangan serial primary key,
	id_transaksi int not null,
	id_pengeluaran int not null,
	constraint fk_transaksi foreign key (id_transaksi) REFERENCES transaksi (id_transaksi),
	constraint fk_pengeluaran foreign key (id_pengeluaran) references pengeluaran (id_pengeluaran)
)

select * from rekapitulasi_keuangan


