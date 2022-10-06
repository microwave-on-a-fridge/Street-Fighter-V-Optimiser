#!/bin/bash

read -r -p "Welcome to the Street Fighter V Optimiser! Is SFV installed in the default Steam directory? (Y/N):" response
if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" || $response == "YES" ]]
then cp -r ./source/~mods ~/.steam/steam/steamapps/common/StreetFighterV/StreetFighterV/Content/Paks
echo Installation complete.
exit 0

elif [[ $response == "n" || $response == "N" || $response == "no" || $response == "No" || $response == "NO" ]]
then read -r -p "Please input the full file path for your Steam library (e.g. steamapps) folder where GGST is installed:" path
cp -r ./source/~mods $path/common/StreetFighterV/StreetFighterV/Content/Paks
echo Installation complete.
exit 0

else 
echo Invalid response. Please try again.
fi
