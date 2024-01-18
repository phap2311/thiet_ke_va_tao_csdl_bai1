drop database if exists quan_ly_ban_hang_p;
create database if not exists quan_ly_ban_hang_p;
use quan_ly_ban_hang_p;
create table phieu_xuat(
so_px int primary key auto_increment,
ngay_xuat date not null
);
create table vat_tu(
ma_vtu int primary key auto_increment,
ten_vtu varchar(50) not null
);
create table chi_tiet_px(
so_px int,
ma_vtu int,
dg_xuat int ,
sl_xuat int,
primary key (so_px,ma_vtu),
foreign key (so_px) references phieu_xuat(so_px) ,
foreign key (ma_vtu) references vat_tu(ma_vtu) 
);
create table phieu_nhap(
so_pn int primary key auto_increment,
ngay_nhap date not null
);
create table chi_tiet_pn(
dg_nhap int,
sl_nhap int,
so_pn int,
ma_vtu int,
primary key (ma_vtu,so_pn),
foreign key (ma_vtu) references vat_tu(ma_vtu),
foreign key (so_pn) references phieu_nhap(so_pn)
);
create table nha_cc(
ma_ncc varchar(50) primary key ,
ten_ncc varchar(50) not null,
dia_chi varchar(100) not null
);
create table don_dh(
so_dh int primary key auto_increment,
ngay_dh int,
ma_ncc varchar(50),
foreign key (ma_ncc) references nha_cc(ma_ncc)

);
create table chi_tiet_dh(
ma_vtu int,
so_dh int,
primary key (ma_vtu,so_dh),
foreign key (ma_vtu) references vat_tu(ma_vtu),
foreign key(so_dh) references don_dh (so_dh)
);
create table nha_cc_sdt(
ma_ncc varchar(50) not null,
sdt int ,
primary key (ma_ncc,sdt),
foreign key (ma_ncc) references nha_cc(ma_ncc)
);
