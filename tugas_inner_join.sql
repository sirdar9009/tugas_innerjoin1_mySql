CREATE DATABASE day26;
USE day26;
CREATE TABLE tbl_barang(
id VARCHAR(100),
nama_barang VARCHAR(100),
harga DOUBLE,
id_jenis VARCHAR(100));

CREATE TABLE tbl_jenis(
id_jenis VARCHAR(100) PRIMARY KEY,
nama VARCHAR(100),
keterangan TEXT);
INSERT INTO tbl_jenis VALUE
('1','pecah belah', 'barang mudah pecah');

INSERT INTO tbl_barang VALUES
('12A','Gelas','5000','1');

SELECT
    `barang`.`nama_barang`
    , `barang`.`harga`
    , `barang`.`id`
    , `barang`.`id_jenis`
    , `id_jenis`.`id_jenis`
    , `id_jenis`.`nama`
    , `id_jenis`.`keterangan`
FROM
    `day26`.`barang`
    INNER JOIN `day26`.`id_jenis` 
        ON (`barang`.`id_jenis` = `id_jenis`.`id_jenis`);
        
