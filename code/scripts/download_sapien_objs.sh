#!/bin/bash
# Define a string array as words separated by spaces
declare -a ModelNames=("3517" "3614" "3822" "4118" "4216" "9003" "8390" "8994" "9127" "9281" "885" "920" "167" "960" "1343" "7296" "7349" "101921" "101930" "101943" "102001" "102060" "102662" "102654" "102692" "103227" "102707" "3763" "4200" "4084" "3520" "3596" "3678"  "3990" "4314" "4043" "3933" "8867" "9035" "9065" "9410" "8897" "8903" "8936" "9288" "9277" "9164" "149" "168" "931" "148" "152" "153" "156" "912" "885" "1380" "7167" "7128" "7273" "101917" "101773" "102055" "101808" "101908" "101319" "101323" "102628" "102636" "102645" "100282" "100283" "103518" "103475" "103486" "103553"  "100845"  "100866"  "100971")
#declare -a links = ["
token="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Imcuc3VAY29sdW1iaWEuZWR1IiwiaXAiOiIxNzIuMjAuMC4xIiwicHJpdmlsZWdlIjoxLCJpYXQiOjE2Mzg4NDMwNjQsImV4cCI6MTYzODkyOTQ2NH0.qjFh5i65B82y9gDGPC28FeMSv2w_AXON41fvf0lGyoI"
# Iterate the string variable using for loop
for i in "${ModelNames[@]}"; do
    if [[ -d "/data/graceduansu/where2act/data/where2act_original_sapien_dataset/$val" ]]; then
        echo $i
        echo 'found'
    else
        echo $i
        wget -O "${ModelNames[$i]}.zip" "https://sapien.ucsd.edu/api/download/compressed/${ModelNames[$i]}.zip?token=$token"
        unzip "${ModelNames[$i]}.zip"
        mv "/data/graceduansu/where2act/data/where2act_original_sapien_dataset/${ModelNames[$i]}/mobility.urdf" "/data/graceduansu/where2act/data/where2act_original_sapien_dataset/${ModelNames[$i]}/mobility_vhacd.urdf"
    fi
done

