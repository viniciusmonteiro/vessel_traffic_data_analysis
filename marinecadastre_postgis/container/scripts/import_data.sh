#!/bin/bash
# Run => su -c "bash /volume/import_data.sh" - postgres
echo '### execute as postgres user >>>: su -c "bash /scripts/import_data.sh" - postgres';

# for test
# psql  -c ' DROP DATABASE marinecadastre'

# create the database
createdb marinecadastre

# create the table to import
psql -d marinecadastre -c '
CREATE TABLE ais_data (
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

## import data by directory... not working... =/
# echo "import 2015"
# cat /volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone*.csv | psql -d marinecadastre -c "COPY ais_data FROM stdin QUOTE '$' DELIMITER ',' CSV HEADER;"

# echo "import 2016"
# cat /volume/csv/AIS_ASCII_by_UTM_Month/2016/*.csv | psql -d marinecadastre -c "COPY ais_data FROM stdin QUOTE '$' DELIMITER ',' CSV HEADER;"

# echo "import 2017"
# cat /volume/csv/AIS_ASCII_by_UTM_Month/2017/*.csv | psql -d marinecadastre -c "COPY ais_data FROM stdin QUOTE '$' DELIMITER ',' CSV HEADER;"


# 2015.1
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone01.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone02.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone03.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone04.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone05.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone06.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone07.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone08.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone09.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone10.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone11.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone12.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone13.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone14.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone15.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone16.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone17.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone18.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone19.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_01_Zone20.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"

# 2015.2
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone01.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone02.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone03.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone04.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone05.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone06.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone07.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone08.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone09.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone10.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone11.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone12.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone13.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone14.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone15.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone16.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone17.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone18.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone19.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_02_Zone20.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"

# 2015.3
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone01.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone02.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone03.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone04.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone05.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone06.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone07.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone08.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone09.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone10.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone11.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone12.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone13.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone14.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone15.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone16.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone17.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone18.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone19.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"
psql -d marinecadastre -c "COPY ais_data FROM '/volume/csv/AIS_ASCII_by_UTM_Month/2015/AIS_2015_03_Zone20.csv' QUOTE '$' DELIMITER ',' CSV HEADER;"


# postgis extension
psql -d marinecadastre -c 'CREATE EXTENSION postgis;'
psql -d marinecadastre -c 'alter table ais_data add geom geometry;'
psql -d marinecadastre -c 'update ais_data set geom = ST_Point(lat, lon);'
psql -d marinecadastre -c 'CREATE INDEX ais_data_idx ON ais_data USING GIST (geom);'

