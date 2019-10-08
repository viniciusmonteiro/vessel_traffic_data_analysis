#!/bin/bash
# Run => su -c "bash /volume/import_data.sh" - postgres
# p1 ($1) => year
# p2 ($2) => month

echo '### execute as postgres user >>>: su -c "bash /scripts/import_data.sh" - postgres';


# create the database
# createdb marinecadastre

echo ">>>> import "$2$1" <<<<"
psql -d marinecadastre -c 'create schema m'$2$1

# create the table to import
psql -d marinecadastre -c '
CREATE TABLE m'$2$1'.ais_data (
	MMSI varchar(50), 
	BaseDateTime varchar(50),
	LAT numeric,
	LON numeric,
	SOG	numeric,
	COG	numeric,
	Heading	numeric,
	VesselName varchar(500),
	IMO	 varchar(500),
	CallSign  varchar(500),
	VesselType integer,
	Status varchar(200),
	"Length" numeric,
	Width numeric,
	Draft numeric,
	Cargo integer
);
';

M="01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20"
for i in $M
do
   echo "/volume/csv/AIS_ASCII_by_UTM_Month/'$1'/AIS_"$1"_"$2"_Zone"$i".csv"
   psql -d marinecadastre -c "COPY m"$2""$1".ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/"$1"/AIS_"$1"_"$2"_Zone"$i".csv'  DELIMITER ',' CSV HEADER;"
#    psql -d marinecadastre -c "COPY m"$2""$1".ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/"$1"/AIS_"$1"_"$2"_Zone"$i".csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
   wait
done


# postgis extension
# psql -d marinecadastre -c 'CREATE EXTENSION postgis;'
# psql -d marinecadastre -c 'alter table ais_data add geom geometry;'
# psql -d marinecadastre -c 'update ais_data set geom = ST_Point(lat, lon);'
# psql -d marinecadastre -c 'CREATE INDEX ais_data_idx ON ais_data USING GIST (geom);'

