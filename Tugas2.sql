Nama : Muhammad Adnan Nafis
NIM : D0224030

--Memilih kolom id_provinsi, nama_provinsi, dan ibu_kota dari tabel provinsi di mana nilai id_provinsi lebih besar dari 110
MariaDB [indonesia]> SELECT id_provinsi, nama_provinsi,ibu_kota
    -> FROM provinsi WHERE id_provinsi > 110;
+-------------+---------------------+------------+
| id_provinsi | nama_provinsi       | ibu_kota   |
+-------------+---------------------+------------+
|         111 | Nusa Tenggara Barat | Mataram    |
|         112 | Papua               | Jayapura   |
|         113 | Maluku              | Ambon      |
|         114 | Aceh                | Banda Aceh |
|         115 | Banten              | Serang     |
+-------------+---------------------+------------+
5 rows in set (0.001 sec)

--Memilih kolom id_wisata, nama_wisata, dan jenis_wisata dari tabel wisata di mana nilai id_wisata berada di antara 504 dan 508
MariaDB [indonesia]> SELECT id_wisata, nama_wisata, jenis_wisata
    -> FROM wisata WHERE id_wisata BETWEEN 504 AND 508;
+-----------+---------------------------+--------------+
| id_wisata | nama_wisata               | jenis_wisata |
+-----------+---------------------------+--------------+
|       504 | Gunung Bromo              | Gunung       |
|       505 | Danau Toba                | Danau        |
|       506 | Jam Gadang                | Sejarah      |
|       507 | Istana Siak Sri Indrapura | Sejarah      |
|       508 | Pulau Derawan             | Pantai       |
+-----------+---------------------------+--------------+
5 rows in set (0.001 sec)

--Memilih kolom nama_provinsi dan ibu_kota dari tabel provinsi di mana nilai nama_provinsi berada secara alfabetis di antara 'Jawa Barat' dan 'Sumatera Utara'
MariaDB [indonesia]> SELECT nama_provinsi, ibu_kota
    -> FROM provinsi WHERE nama_provinsi BETWEEN 'Jawa Barat' AND 'Sumatera Utara';
+---------------------+-----------+
| nama_provinsi       | ibu_kota  |
+---------------------+-----------+
| Jawa Barat          | Bandung   |
| Jawa Tengah         | Semarang  |
| Jawa Timur          | Surabaya  |
| Sumatera Utara      | Medan     |
| Sumatera Barat      | Padang    |
| Riau                | Pekanbaru |
| Kalimantan Timur    | Samarinda |
| Sulawesi Selatan    | Makassar  |
| Nusa Tenggara Barat | Mataram   |
| Papua               | Jayapura  |
| Maluku              | Ambon     |
+---------------------+-----------+
11 rows in set (0.000 sec)

MariaDB [indonesia]>
