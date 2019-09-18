createdb marinecadastre;

create table ais_data (
	MMSI integer, 
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
	Status varchar(50),
	"Length" numeric,
	Width numeric,
	Draft numeric,
	Cargo integer
);

CREATE EXTENSION postgis;

alter table ais_data add geom geometry;