#!/bin/bash

sed -i 's/\s*,\s*/\,/g' datos.csv

LB_COLUMN_23=$(cut -d "," -f23 datos.csv | wc -l)
LB_COLUMN_24=$(cut -d "," -f24 datos.csv | wc -l)


if [ "$LB_COLUMN_23" -ne 0 ]; then
    echo "La columna 23 tiene  $LB_COLUMN_23 valores vacios"
fi

if [ "$LB_COLUMN_24" -ne 0 ]; then
    echo "la columna 24 tiene $LB_COLUMN_24 valores vacios"
fi

exit


echo "Quality control was performed successfully"

#codigo gpt /\
#codigo origian \/

for i in {1..24}; 
    do 
        export LB=$(cut -d "," -f${i} datos.csv | grep '^[[:space:]]*$' | wc -l) #cuenta si hay lineas vacias y cuantas por columna 
        
        if [ "$LB" -ne 0 ]; then
            echo "la columna numero $i tiene $LB valores vacios"
        fi







    done
    echo "el control de calidad fue realizado exitosamente"
exit

exit