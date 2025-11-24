Nama : Muhammad Adnan Nafis
NIM : D0224030

--Membuat Database
MariaDB [(none)]> CREATE DATABASE indonesia;
Query OK, 1 row affected (0.001 sec)
  
--Menggunakan database indonesia
MariaDB [(none)]> use indonesia;
Database changed

--Tabel 1: Pulau
MariaDB [indonesia]> CREATE TABLE pulau (
    -> id_pulau INT PRIMARY KEY,
    -> nama_pulau VARCHAR(50) NOT NULL
    -> );
Query OK, 0 rows affected (0.239 sec)

--Tabel 2: provinsi
MariaDB [indonesia]> CREATE TABLE provinsi (
    -> id_provinsi INT PRIMARY KEY,
    -> nama_provinsi VARCHAR(100) NOT NULL,
    -> ibu_kota VARCHAR(100) NOT NULL,
    -> id_pulau INT NOT NULL,
    -> FOREIGN KEY (id_pulau) REFERENCES pulau(id_pulau)
    -> );
Query OK, 0 rows affected (0.337 sec)

--Tabel 3: wisata
MariaDB [indonesia]> CREATE TABLE wisata (
    -> id_wisata INT PRIMARY KEY,
    -> nama_wisata VARCHAR(150) NOT NULL,
    -> jenis_wisata VARCHAR(50),
    -> id_provinsi INT NOT NULL,
    -> FOREIGN KEY (id_provinsi) REFERENCES provinsi(id_provinsi)
    -> );
Query OK, 0 rows affected (0.442 sec)

--Isi tabel pulau
MariaDB [indonesia]> INSERT INTO pulau (id_pulau, nama_pulau) VALUES
    -> (1, 'Jawa'),
    -> (2, 'Sumatra'),
    -> (3, 'Kalimantan'),
    -> (4, 'Sulawesi'),
    -> (5, 'Papua'),
    -> (6, 'Kepulauan Sunda Kecil'),
    -> (7, 'Kepulauan Maluku'),
    -> (8, 'Kepulauan Riau'),
    -> (9, 'Halmahera'),
    -> (10, 'Sumba'),
    -> (11, 'Flores'),
    -> (12, 'Lombok'),
    -> (13, 'Bangka Belitung'),
    -> (14, 'Nias'),
    -> (15, 'Weh');
Query OK, 15 rows affected (0.244 sec)
Records: 15  Duplicates: 0  Warnings: 0

--Isi tabel provinsi
MariaDB [indonesia]> INSERT INTO provinsi (id_provinsi, nama_provinsi, ibu_kota, id_pulau) VALUES
    -> (101, 'DKI Jakarta', 'Jakarta', 1),
    -> (102, 'Jawa Barat', 'Bandung', 1),
    -> (103, 'Jawa Tengah', 'Semarang', 1),
    -> (104, 'Jawa Timur', 'Surabaya', 1),
    -> (105, 'Sumatera Utara', 'Medan', 2),
    -> (106, 'Sumatera Barat', 'Padang', 2),
    -> (107, 'Riau', 'Pekanbaru', 2),
    -> (108, 'Kalimantan Timur', 'Samarinda', 3),
    -> (109, 'Sulawesi Selatan', 'Makassar', 4),
    -> (110, 'Bali', 'Denpasar', 6),
    -> (111, 'Nusa Tenggara Barat', 'Mataram', 6),
    -> (112, 'Papua', 'Jayapura', 5),
    -> (113, 'Maluku', 'Ambon', 7),
    -> (114, 'Aceh', 'Banda Aceh', 2),
    -> (115, 'Banten', 'Serang', 1);
Query OK, 15 rows affected (0.151 sec)
Records: 15  Duplicates: 0  Warnings: 0

--Isi tabel wisata
MariaDB [indonesia]> INSERT INTO wisata (id_wisata, nama_wisata, jenis_wisata, id_provinsi) VALUES
    -> (501, 'Monumen Nasional', 'Monumen', 101),
    -> (502, 'Kawah Putih', 'Gunung', 102),
    -> (503, 'Candi Borobudur', 'Sejarah', 103),
    -> (504, 'Gunung Bromo', 'Gunung', 104),
    -> (505, 'Danau Toba', 'Danau', 105),
    -> (506, 'Jam Gadang', 'Sejarah', 106),
    -> (507, 'Istana Siak Sri Indrapura', 'Sejarah', 107),
    -> (508, 'Pulau Derawan', 'Pantai', 108),
    -> (509, 'Pantai Losari', 'Pantai', 109),
    -> (510, 'Pura Tanah Lot', 'Candi', 110),
    -> (511, 'Gunung Rinjani', 'Gunung', 111),
    -> (512, 'Raja Ampat', 'Bahari', 112),
    -> (513, 'Pantai Ora', 'Pantai', 113),
    -> (514, 'Masjid Raya Baiturrahman', 'Sejarah', 114),
    -> (515, 'Ujung Kulon', 'Taman Nasional', 115);
Query OK, 15 rows affected (0.161 sec)
Records: 15  Duplicates: 0  Warnings: 0

--Menampilkan Tabel Pulau
MariaDB [indonesia]> select*from pulau;
+----------+-----------------------+
| id_pulau | nama_pulau            |
+----------+-----------------------+
|        1 | Jawa                  |
|        2 | Sumatra               |
|        3 | Kalimantan            |
|        4 | Sulawesi              |
|        5 | Papua                 |
|        6 | Kepulauan Sunda Kecil |
|        7 | Kepulauan Maluku      |
|        8 | Kepulauan Riau        |
|        9 | Halmahera             |
|       10 | Sumba                 |
|       11 | Flores                |
|       12 | Lombok                |
|       13 | Bangka Belitung       |
|       14 | Nias                  |
|       15 | Weh                   |
+----------+-----------------------+
15 rows in set (0.001 sec)

--Menampilkan Tabel Provinsi
MariaDB [indonesia]> select*from provinsi;
+-------------+---------------------+------------+----------+
| id_provinsi | nama_provinsi       | ibu_kota   | id_pulau |
+-------------+---------------------+------------+----------+
|         101 | DKI Jakarta         | Jakarta    |        1 |
|         102 | Jawa Barat          | Bandung    |        1 |
|         103 | Jawa Tengah         | Semarang   |        1 |
|         104 | Jawa Timur          | Surabaya   |        1 |
|         105 | Sumatera Utara      | Medan      |        2 |
|         106 | Sumatera Barat      | Padang     |        2 |
|         107 | Riau                | Pekanbaru  |        2 |
|         108 | Kalimantan Timur    | Samarinda  |        3 |
|         109 | Sulawesi Selatan    | Makassar   |        4 |
|         110 | Bali                | Denpasar   |        6 |
|         111 | Nusa Tenggara Barat | Mataram    |        6 |
|         112 | Papua               | Jayapura   |        5 |
|         113 | Maluku              | Ambon      |        7 |
|         114 | Aceh                | Banda Aceh |        2 |
|         115 | Banten              | Serang     |        1 |
+-------------+---------------------+------------+----------+
15 rows in set (0.001 sec)

--Menampilkan Tabel Wisata
MariaDB [indonesia]> select*from wisata;
+-----------+---------------------------+----------------+-------------+
| id_wisata | nama_wisata               | jenis_wisata   | id_provinsi |
+-----------+---------------------------+----------------+-------------+
|       501 | Monumen Nasional          | Monumen        |         101 |
|       502 | Kawah Putih               | Gunung         |         102 |
|       503 | Candi Borobudur           | Sejarah        |         103 |
|       504 | Gunung Bromo              | Gunung         |         104 |
|       505 | Danau Toba                | Danau          |         105 |
|       506 | Jam Gadang                | Sejarah        |         106 |
|       507 | Istana Siak Sri Indrapura | Sejarah        |         107 |
|       508 | Pulau Derawan             | Pantai         |         108 |
|       509 | Pantai Losari             | Pantai         |         109 |
|       510 | Pura Tanah Lot            | Candi          |         110 |
|       511 | Gunung Rinjani            | Gunung         |         111 |
|       512 | Raja Ampat                | Bahari         |         112 |
|       513 | Pantai Ora                | Pantai         |         113 |
|       514 | Masjid Raya Baiturrahman  | Sejarah        |         114 |
|       515 | Ujung Kulon               | Taman Nasional |         115 |
+-----------+---------------------------+----------------+-------------+
15 rows in set (0.000 sec)

MariaDB [indonesia]>
