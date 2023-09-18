#!/bin/bash
#sed -i 's/\,_,/\,,/g' datos.csv  #se pone \ para que se puedan leer los caracteres especiales

sed -i 's/\, ,/\,,/g' datos.csv #reemplaza los espacios vacios por nulos ( los transforma de " " a "" )

#cut -d "," -f1 datos.csv | grep ^\s*$ | wc -l # ^para marcar que es desde el inicio $ para marcar que es hasta el final

#for i in {1..7}; 
	#do 
		
		#export LB=`cut -d "," -f${i} datos.csv | grep ^\s*$ | wc -l`; #cuenta si hay lineas vacias
		#export LB=`cut -d "," -f${i} datos.csv | grep ^\s*$ | wc -l`;  #cuenta si hay lineas vacias
		#echo $LB
		#if [ "$LB" != "0" ]; then
			#echo "la columna numero $i tiene valores vacios"
			#statements

		#fi
	#done
#exit


#cut -d "," -f1 datos.csv | grep '^[[:space:]]*$' | wc -l

for i in {1..24}; 
    do 
        export LB=$(cut -d "," -f${i} datos.csv | grep '^[[:space:]]*$' | wc -l) #cuenta si hay lineas vacias y cuantas por columna 
        
        if [ "$LB" -ne 0 ]; then
            echo "la columna numero $i tiene $LB valores vacios"
        fi
    done
    echo "el control de calidad fue realizado exitosamente"
exit
