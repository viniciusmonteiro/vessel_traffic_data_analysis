# Marine Cadastre Vessel traffic Data

The idea of this project is to facilitate the gathering, extraction and importation of the data available on https://marinecadastre.gov/ais/ into a postgres database instance. This web site contains vessel traffic data, or Automatic Identification System (AIS) data. This data are collected by the U.S. Coast Guard through an onboard navigation safety device that transmits and monitors the location and characteristics of large vessels in U.S. and international waters in real time.

# Requirements: 
- Docker engine;


# How To Use:
1. Clone the project;
2. Execute the bash script "build.sh" inside the folder container;
3. Edit the bash script "run.sh" setting the proper directories on your server to bind the volumes of the containers. Afterwards, execute it;
4. Once the docker container is running, access it through the command: sudo docker exec -it marinecadastre_postgis bash
5. Navigate to the folder scripts, open the file "download_data.sh" and add manually the month and zones that you may be interested to download.
6. Once the files have been dowloaded, execute the file: "unzip_data.sh" to extract all the files.
7. To import all the csv to the postgres database, execute "import_data.sh".


