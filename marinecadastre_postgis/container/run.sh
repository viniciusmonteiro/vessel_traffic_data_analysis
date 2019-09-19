docker run --name marinecadastre_postgis -p 5432:5432 -e POSTGRES_PASSWORD=postgres 	\
 -v /data/master/volume:/volume 	\
 -v /data/master/postgresql/data:/var/lib/postgresql/data 	\
 -v /data/master/postgresql/backups:/postgresql_backups 	\
 -d marinecadastre_postgis_img
