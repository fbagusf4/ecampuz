CREATE DATABASE ecampuz;

USE ecampuz;

CREATE TABLE tb_mahasiswa (
mhs_id CHAR(3) PRIMARY KEY,
mhs_nim CHAR(8),
mhs_nama VARCHAR(50),
mhs_angkatan CHAR(4)
);

CREATE TABLE tb_matakuliah (
mk_id CHAR(3) PRIMARY KEY,
mk_kode CHAR(5),
mk_sks CHAR(1),
mk_nama VARCHAR(50)
);

CREATE TABLE tb_mahasiswa_nilai (
mhs_nilai_id CHAR(3),
mhs_id CHAR(3),
mk_id CHAR(3),
nilai INT
);

INSERT INTO tb_mahasiswa VALUES
('1','20180001',"Jono",'2018'),
('2','20180002',"Taufik",'2018'),
('3','20180003',"Maria",'2018'),
('4','20190001',"Sari",'2019'),
('5','20190002',"Bambang",'2019');

INSERT INTO tb_matakuliah VALUES
('1','MK202','3',"OOP"),
('2','MK303','2',"Basis Data");

INSERT INTO tb_mahasiswa_nilai VALUES
('1','1','1',70),
('2','1','2',76),
('3','2','1',82),
('4','2','2',74),
('5','4','1',78),
('6','4','2',80),
('7','5','1',60);

CREATE VIEW NilaiTertinggiMK303 AS
SELECT tb_mahasiswa.mhs_id, tb_mahasiswa.mhs_nama , tb_matakuliah.mk_kode, tb_matakuliah.mk_nama, MAX(tb_mahasiswa_nilai.nilai)
FROM tb_mahasiswa, tb_mahasiswa_nilai, tb_matakuliah
WHERE tb_matakuliah.mk_kode ='MK303';

SELECT * FROM NilaiTertinggiMK303;