------- T?o b?ng
create table canbo
( macb nvarchar2(5)
CONSTRAINT     cb_pk    PRIMARY KEY,
  tencb nvarchar2(20),
  quequan nvarchar2(16), 
  luong number);
----
create table detai
(madetai nvarchar2(5)
CONSTRAINT     dt_pk    PRIMARY KEY,
tendetai nvarchar2(25),
macb nvarchar2(5),
ngaydau date,
ngaycuoi date ,
CONSTRAINT  dtcb_fk FOREIGN KEY (macb) REFERENCES canbo(macb));
----
create table ngoaingu
(macb nvarchar2(5),
 tenngoaingu nvarchar2(17),
 trinhdo   nvarchar2(2),
CONSTRAINT     nn_pk    PRIMARY KEY (macb,tenngoaingu),
CONSTRAINT  nncb_fk FOREIGN KEY (macb)  REFERENCES    canbo(macb)  ) ;    
?
----- Nh?p d? li?u
insert into canbo(macb, tencb, quequan,luong)
   values ('cb1', 'Vu Thi Binh', 'Ha Noi',2000000); 
insert into canbo(macb, tencb, quequan,luong)
   values ('cb2', 'Luu Ngoc Duc', 'Ha Nam',3000000); 
insert into canbo(macb, tencb, quequan,luong)
   values ('cb3', 'Tran Thu Ha', 'Nam Dinh',2800000);    
insert into canbo(macb, tencb, quequan,luong)
   values ('cb4', 'Dang Thi Hang','Cao Bang',4000000);    
insert into canbo(macb, tencb, quequan,luong)
   values ('cb5', 'Ha Thi Hien', 'Thanh Hoa',5000000);    
insert into canbo(macb, tencb, quequan,luong)
   values ('cb6', 'Dinh Thuy Hien', 'Bac Ninh',3500000); 
insert into canbo(macb, tencb, quequan,luong)
   values ('cb7', 'Vu Thi Hoa', 'Ha Noi',7000000);  
insert into canbo(macb, tencb, quequan,luong)
   values ('cb8', 'Hoang Thi Hue','Ha Noi',8000000);  
insert into canbo(macb, tencb, quequan,luong)
   values ('cb9', 'Le Viet Hung', 'Ninh Binh',3400000); 
insert into canbo(macb, tencb, quequan,luong)
   values ('cb10', 'Tran Viet Hung','Lang Son',null); 
insert into canbo(macb, tencb, quequan,luong)
   values ('cb11', 'Vu Viet Hung', 'Hai Duong',null); 
insert into canbo(macb, tencb, quequan,luong)
   values ('cb12', 'Pham Quang Huy', 'Hai Duong',null);    
insert into canbo(macb, tencb, quequan,luong)
   values ('cb13', 'Bui Thi Thuong Huyen', '',null);    
insert into canbo(macb, tencb, quequan,luong)
   values ('cb14', 'Do Thi Huyen', 'Lao Cai',2000000);    
insert into canbo(macb, tencb, quequan,luong)
   values ('cb15', 'Vu Thi Ngoc Huyen', 'Hai Phong',3000000);    
insert into canbo(macb, tencb, quequan,luong)
   values ('cb16', 'Dinh Van Hung', '',7000000);    
-------------
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt1', 'Quan Ly sinh vien','cb1',to_date('16/1/2012','dd/mm/yyyy'),to_date('16/7/2012','dd/mm/yyyy')) ; 
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt2', 'Quan Ly Tien Gui', 'cb2',to_date('1/1/2013','dd/mm/yyyy'),to_date('16/7/2013','dd/mm/yyyy')) ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt3', 'Quan Ly Ky tuc xa','cb5',to_date('8/9/2013','dd/mm/yyyy'),to_date('20/11/2013','dd/mm/yyyy')) ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt4', 'Quan Ly Ban Hang','cb1',to_date('18/3/2011','dd/mm/yyyy'),to_date('19/8/2011','dd/mm/yyyy')) ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt5', 'Quan Ly Diem Thi','cb8',to_date('18/3/2012','dd/mm/yyyy'),to_date('20/11/2013','dd/mm/yyyy')) ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt9', 'Tim hieu Core Banking','cb9',('23-APR-2013'),'23-DEC-2013') ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt10', 'Tim hieu DSS','cb10',('17-JUL-2013'),'23-JAN-2014') ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt11', 'Quan ly rui ro','cb13',('17-JUL-2015'),'23-JAN-2016') ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt12', 'Mo hinh du doan no xau','cb15',('20-may-2013'),'20-may-2014') ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt16', 'Datamining','cb10',('1-april-2015'),'1-JAN-2016') ;     
insert into detai(madetai,tendetai,macb,ngaydau,ngaycuoi) 
   values ('dt6', 'ERP cho doanh nghiep','',(''),'') ;     
-----------------
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb1', 'Anh', 'B1'); 
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb1', 'Phap', 'TC');    
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb2', 'Anh', 'B2');  
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb3', 'Anh', 'C');   
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb4', 'Trung Quoc', 'H4');      
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb5','Nga','T2');   
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb6','Anh',null);  
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb9','Anh','C');     
insert into ngoaingu(macb,tenngoaingu,trinhdo)
   values ('cb7','Nga','T3');        
   --------------
create table chucvu
(macv nvarchar2(5),
 tencv  nvarchar2(30),
 macb   nvarchar2(5),
 ngaydau date,
ngaycuoi date ,
constraint pk_cv_cb primary key(macb,macv),
constraint fk_cv_cb foreign key (macb) references canbo
);

insert into chucvu(macv,tencv,macb,ngaydau,ngaycuoi)
    values('cv1','truong phong','cb1',('17-JUL-2013'),'23-JAN-2015');
insert into chucvu(macv,tencv,macb,ngaydau,ngaycuoi)
    values('cv2','pho phong','cb2',('17-JUL-2013'),'23-JAN-2016');
insert into chucvu(macv,tencv,macb,ngaydau,ngaycuoi)
    values('cv3','giam doc','cb3',('1-april-2013'),'1-JAN-2016');
insert into chucvu(macv,tencv,macb,ngaydau,ngaycuoi)
    values('cv4','tro ly','cb4',('1-april-2014'),'1-JAN-2016');
insert into chucvu(macv,tencv,macb,ngaydau,ngaycuoi)
    values('cv5','pho giam doc','cb5',('1-april-2012'),'1-JAN-2014');

--L?i gi?i tr?n v?n ?? 3 v? sql/pl-sql trong oracle trong csdl 
--c1--
delete from chucvu

--c2--

insert into chucvu(macb,macv,tencv,ngaydau,ngaycuoi)
    values('cb8','GD','giam doc',to_date('15/10/2013','dd/mm/yyyy'),to_date('15/10/2021','dd/mm/yyyy'));
    insert into chucvu(macb,macv,tencv,ngaydau,ngaycuoi)
    values('cb1','GD','giam doc',to_date('15/10/2013','dd/mm/yyyy'),to_date('15/10/2021','dd/mm/yyyy'));
insert into chucvu(macb,macv,tencv,ngaydau,ngaycuoi)
    values('cb5','PGD','pho giam doc',to_date('1/02/2016','dd/mm/yyyy'),to_date('1/01/2020','dd/mm/yyyy'));
insert into chucvu(macb,macv,tencv,ngaydau,ngaycuoi)
    values('cb16','TPNS','truong phong nhan su',to_date('10/03/2012','dd/mm/yyyy'),to_date('10/03/2016','dd/mm/yyyy'));
insert into chucvu(macb,macv,tencv,ngaydau,ngaycuoi)
    values('cb5','TPTC','truong phong tai chinh',to_date('1/02/2009','dd/mm/yyyy'),to_date('1/02/2016','dd/mm/yyyy'));
--c3--

select count(macb) from chucvu


--4--
 

set serveroutput on
begin
    for ds in (select canbo.macb ,canbo.tencb from canbo join detai on detai.macb=canbo.macb join chucvu on chucvu.macb=canbo.macb)
    loop
    dbms_output.put_line('Ma '||ds.macb||
                                'Ten '||ds.tencb);
    end loop;
end;

--5--
set serveroutput on
create or replace procedure dscanbo(
    mcb in canbo.macb%type)
as
begin
    for ds in (select a.macb, a.luong, b.tencv 
        from canbo a left join chucvu b  on a.macb=b.macb
        where a.macb=mcb)
    loop
        dbms_output.put_line('Ma can bo: '||ds.macb||ds.tencv);
    end loop;
end;
EXEC dscanbo('&mcb');

--c6--
set SERVEROUTPUT ON
begin
    for ds in (select canbo.macb,tencb,count(madetai) as a from canbo join detai on canbo.macb=detai.macb group by canbo.macb,tencb)
    loop
    dbms_output.put_line('Ma can bo: '||ds.macb||ds.tencb||ds.a);
    end loop;
end;
--c7--
create or replace function
song(
    ma_dt detai.madetai%type
)
return number
as
ngay_cuoi detai.ngaycuoi%type;
ngay_dau detai.ngaycuoi%type;
dem number;
begin
    select ngaydau into ngay_dau from detai where madetai=ma_dt;
    select ngaycuoi into ngay_cuoi from detai where madetai=ma_dt;
    dem:=ngay_cuoi-ngay_dau;
    return dem;
end;
select song('dt1') from dual

--?? 1 ch? l�m c�c c�u v? pl/sql
--4.Cho bi?t danh s�ch c�c c�n b? v?a c� ch?c v? v?a c� tr�nh ?? ngo?i ng?. do ?? h?i danh s�ch n�n d�ng con tr?
4.
set serveroutput on
begin
    for dscb in(select distinct c.macb,c.tencb from canbo c join chucvu v on c.macb=v.macb join ngoaingu n on n.macb=c.macb)
    loop
    dbms_output.put_line(dscb.macb||dscb.tencb);
    end loop;
end;
--Nh?p v�o m� c�n b? cho bi?t qu� qu�n v� l??ng c?a c�n b? ?�. do ?? h?i l� nh?p gi� tr? truy?n v�o m� tr? v? 2 gi� tr? n�n d�ng th? t?c
5.
set serveroutput on
create or replace procedure
trave
(
    ma canbo.macb%type
)
as
que canbo.quequan%type;
lg canbo.luong%type;       
begin
    select quequan,luong into que,lg from canbo where macb=ma;
    dbms_output.put_line(que||lg);
end;
execute trave('cb5')

--Nh?p v�o m?t n?m b?t k?, cho bi?t MaCB, TenCB, TenCV c?a nh?ng c�n b? c� ng�y k?t th�c nhi?m k? v�o n?m ?� (n?u c� ch?c v?).
--?? h?i nh?p 1 gi� tr? truy?n v�o m� tr? v? nhi?u gi� tr? ho?c tr? v? danh s�ch n�n d�ng th? t?c v� con tr? do ph?i tr? v? danh s�ch
6.
set serveroutput on
create or replace procedure
xuat(
    nam number
)
as
begin
    for dscb in (select c.macb,c.tencb,v.tencv from canbo c join chucvu v on c.macb=v.macb where extract(year from (v.ngaycuoi))=nam)
    loop
    dbms_output.put_line(dscb.macb||dscb.tencb||dscb.tencv);
    end loop;
end;
execute xuat(2016)

--Cho bi?t s? ngo?i ng? theo m� c�n b? nh?p v�o. do nh?p v�o 1 tham s? truy?n v�o tr? v? 1 gi� tr? s? l??ng n�n d�ng h�m
7.

create or replace function
son(
    ma ngoaingu.macb%type
)
return number
as
so number;
begin
    select count(tenngoaingu) into so from ngoaingu where macb=ma;
    return so;
end;
select son('cb1') from dual
8.
set serveroutput on
begin
    for dscb in(select count(tenngoaingu) as a,macb from ngoaingu group by macb)
    loop
     dbms_output.put_line('so ngoaingu:'||dscb.a||'cua can bo co ma'||dscb.macb);   
    end loop;
end;
-- ?� 2:
--Cho bi?t c�n b? ?ang gi? ch?c v? gi�m ??c ?� c� nh?ng ?? t�i n�o. Do trong ?? c� nhi?u gi�m ??c n�n d�ng con tr? v� d�ng kh?i l?nh pl/sql
c4.
set serveroutput on
declare cv chucvu.tencv%type:='giam doc';
begin
    for dscb in(select t.tendetai as a,t.madetai as b,c.tencb as d from detai t join canbo c on t.macb=c.macb join chucvu v on c.macb=v.macb where v.tencv=cv)
    loop
        dbms_output.put_line('detai:'||dscb.a||' co ma'||dscb.b||dscb.d);  
    end loop;
end;

--c5.Nh?p v�o t�n ngo?i ng?, cho bi?t th�ng tin c?a c�c c�n b? c� tr�nh ?? ngo?i ng? ?�. th�ng tin c�c ngo?i ng? n�n mk d�ng con tr? v� kh?i l?nh
c5
set SERVEROUTPUT ON
declare tnn ngoaingu.tenngoaingu%type:='&tnn';
begin
    for dscb in (select c.macb,c.tencb,n.trinhdo,n.tenngoaingu from canbo c join ngoaingu n on c.macb=n.macb where tenngoaingu=tnn)
    loop
    dbms_output.put_line('can bo:'||dscb.macb||' co ten'||dscb.tencb||dscb.tenngoaingu||dscb.trinhdo); 
    end loop;
end;
--Cho bi?t t�n ?? t�i v� s? ng�y th?c hi?n ?? t�i (NgayCuoi-NgayDau) theo m� ?? t�i nh?p v�o. d�ng th? t?c do tr? v? nhi?u th�ng tin
c6
set serveroutput on
create or replace procedure
abc
(
    m detai.madetai%type
)
as
d detai.ngaydau%type;
c detai.ngaycuoi%type;
dem number;
ten detai.tendetai%type;
begin
    select (ngaycuoi-ngaydau) ,tendetai into dem,ten from detai where madetai=m;
    DBMS_OUTPUT.PUT_LINE(dem||ten);
end;

execute abc('dt1')

--c7.C� bao nhi�u c�n b? h?t nhi?m k? (d?a v�o ng�y k?t th�c) trong n?m nh?p t? b�n ph�m.d�ng kh?i l?nh ho?c h�m.
c7
set serveroutput on
declare dem number;
begin
    select count(macb) into dem from chucvu where ngaycuoi-(SELECT CURRENT_DATE
FROM DUAL)<0;
    dbms_output.put_line('so can bo het nhiem ki la:'||dem);
end;

de 3.
--c4.Cho bi?t danh s�ch c�c c�n b? v?a c� ch?c v? v?a c� ?? t�i. d�ng con tr? v� kh?i l?nh pl/sql.
c4
set serveroutput on
begin
    for dscb in(select distinct c.tencb,c.macb from canbo c join chucvu v on c.macb=v.macb join detai d on d.macb=c.macb)
    loop
    dbms_output.put_line(dscb.tencb||dscb.macb);
    end loop;
end;

--c5.Nh?p v�o m� c�n b? cho bi?t l??ng v� ch?c v? c�n b? ?�. d�ng procedure
c5


set serveroutput on
create or replace procedure duy(ma in canbo.macb%type)
as 
begin
    for dscb in (select c.luong, v.tencv from canbo c left join chucvu v on c.macb=v.macb where c.macb=ma)
    loop
        dbms_output.put_line('Ma can bo: '||dscb.luong||dscb.tencv);
    end loop;
end;
execute duy('cb1')



set serveroutput on
create or replace procedure dscanbo(
    mcb in canbo.macb%type)
as
begin
    for ds in (select a.macb, a.luong, b.tencv 
        from canbo a left join chucvu b  on a.macb=b.macb
        where a.macb=mcb)
    loop
        dbms_output.put_line('Ma can bo: '||ds.macb||ds.tencv);
    end loop;
end;
EXEC dscanbo('&mcb');


--c6.Cho danh s�ch c�c c�n b? v?i s? l??ng ?? t�i m� c�n b? ?� th?c hi?n, th�ng tin g?m: M� c�n b?, t�n c�n b?, s? l??ng ?? t�i.
c6.
set serveroutput on
begin
    for dscb in(select c.tencb,c.macb, count( d.madetai) as k from canbo c join detai d on c.macb=d.macb group by c.tencb,c.macb)
    loop
        dbms_output.put_line(dscb.macb||dscb.tencb||dscb.k);
    end loop;
end;

--c7.Tr? v? th?i gian th?c hi?n ?? t�i d?a v�o ng�y ??u v� ng�y cu?i (ngaycuoi-ngaydau)theo m� ?? t�i.
c7.
create or replace function
song(
    ma_dt detai.madetai%type
)
return number
as
ngay_cuoi detai.ngaycuoi%type;
ngay_dau detai.ngaycuoi%type;
dem number;
begin
    select ngaydau into ngay_dau from detai where madetai=ma_dt;
    select ngaycuoi into ngay_cuoi from detai where madetai=ma_dt;
    dem:=ngay_cuoi-ngay_dau;
    return dem;
end;
select song('dt1') from dual






