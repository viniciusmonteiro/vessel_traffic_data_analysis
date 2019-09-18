docker run --name marinecadastre_postgis -p 5432:5432 -e POSTGRES_PASSWORD=postgres 	\
 -v ~/data/volume:/volume 	\
 -v ~/data/postgresql:/var/lib/postgresql/data 	\
 -v ~/data/backups:/postgresql_backups 	\
 -d marinecadastre_postgis_img