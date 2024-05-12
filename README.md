# proyek-dwh-si
Repositori proyek akhir mata kuliah data warehouse kelompok 4.

## Topik
Analisis sales buku toko Gravity Books.

## Sumber Dataset
[Gravity Books MySQL](https://github.com/bbrumm/databasestar/tree/main/sample_databases/sample_db_gravity/mysql)

## Penggunaan
### Database Sumber dan Data Warehouse
1. Buat database gravity_books di server MySQL/MariaDB
2. Jalankan semua kueri sql dari Sumber Dataset di gravity_books
3. Jalankan kueri sql sql-scripts/dataset-preload-config.sql di gravity_books
4. Jalankan kueri sql sql-scripts/data-warehouse-ddl.sql di server PostgreSQL

### Apache Hop
1. Buat proyek baru dalam Apache Hop dengan folder proyek ini sebagai direktorinya
2. Modifikasi path masing-masing pipeline dalam workflow (disesuaikan dengan file pipeline di direktori pipeline)
3. Jalankan workflow/gravity-books-workflow.hwf di Apache Hop

