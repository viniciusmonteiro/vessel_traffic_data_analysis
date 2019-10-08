#!/bin/bash
# Run => su -c "bash /volume/download_data.sh" - postgres
# p1 ($1) => year
# p2 ($2) => month

echo '### downloading';


M="01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20"
for i in $M
do
   echo "wget -P /volume/wget https://coast.noaa.gov/htdata/CMSP/AISDataHandler/"$1"/AIS_"$1"_"$2"_Zone"$i".zip"
   wget -P /volume/wget https://coast.noaa.gov/htdata/CMSP/AISDataHandler/$1/AIS_$1_$2_Zone$i.zip
   
   wait
done

