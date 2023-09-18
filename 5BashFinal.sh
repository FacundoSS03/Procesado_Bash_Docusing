#!/bin/bash
#export LN=`wc -l datos.csv | cut -d " " -f1`
clear
cut -d "," -f1 datos.csv | grep ^\s*$ | wc -l

yad --title="Procesado datos docusing"\
    --height=200\
    --width=600\
    --text-aling=center\
    --text="* Tener instalado bash \n *El formato del archivo tiene que ser .csv \n *El archivo tiene que estar en la misma carpeta que el bash \n *La carpeta tiene que estar creada en el escritorio"\


archivo=$(yad --file \
              --title="Procesado datos docusing" \
              --height=200 \
              --width=600 \
              --center \
              --text="Selecciona un archivo:" \
              --file-filter="files | *.csv")
ans=$?
if [ $ans -eq 0 ]
then
    files=$(echo $archivo | awk -F/ '{print $6}')       ##para separar los datos de la variable 
    echo $files
    echo "Has elegido este archivo: ${files}"           ## que archivo eligio
    echo "3" | sleep 0.5s | echo "2" | sleep 0.5s | echo "1" 

else
    echo "No has elegido ningún archivo"
fi

#Sírvase indicar la opción que mejor se adapte al objetivo de la cuenta que Uds. desea obtener:

sed -i 's/Apreciación del capital (>10% aprox. anualizado)/1/g' ${files}
sed -i 's/Mantener el valor real del capital y obtener un rendimiento algo por encima de éste (inflación + 5% aprox.)/2/g' ${files}
sed -i 's/Mantener el valor real del capital/3/g' ${files}

#En términos porcentuales, ¿cuál es la relación entre el monto de la cuenta y el total de su patrimonio?

sed -i 's/0% - 33%/1/g' ${files}
sed -i 's/34% - 67%/2/g' ${files}
sed -i 's/68% - 100%/3/g' ${files}

#Sírvase indicar el origen de fondos que más se adapte a su situación particular:

#no dar bola \/

#sed -i 's/Generados a partir de una actividad en relación de dependencia/1/g' datos.csv
#sed -i 's/Generados a partir de una actividad independiente/2/g' datos.csv
#sed -i 's/Herencia u otros similares/3/g' datos.csv

#En términos porcentuales, ¿cuál de las siguientes opciones describen mejor su necesidad de liquidez en el corto plazo?

sed -i 's/0 - 20% sobre el valor total de la cuenta/1/g' ${files}
sed -i 's/20% - 60% sobre el valor total de la cuenta/2/g' ${files}
sed -i 's/60% - 100% sobre el valor total de la cuenta/3/g' ${files}

#cómo lo describiría su mejor amigo en relación con su toma de riesgos?

sed -i 's/Tomador de riesgos/1/g' ${files}
sed -i 's/Precavido/2/g' ${files}
sed -i 's/Evito riesgos/3/g' ${files}
sed -i 's/Del 5% al 15%/2/g' ${files}
sed -i 's/Del 0% al 15%/3/g' ${files}


#¿Cuál es para Ud. el nivel de pérdida aceptable en el corto plazo?

sed -i 's/Más del 15%/1/g' ${files}
sed -i 's/5% - 15%/2/g' ${files}
sed -i 's/Del 0% al 5%/3/g' ${files}

#¿Cuánto tiempo puede tolerar un entorno de mercado difícil en el que su cartera pierde valor o sigue recuperándolo?

sed -i 's/De 3 a 5 años/1/g' ${files}
sed -i 's/De 1 a 3 años/2/g' ${files}
sed -i 's/Menos de 1 año/3/g' ${files}


#¿Con qué facilidad se adapta a los cambios financieros negativos e inesperados?

sed -i 's/No me adapto fácilmente/1/g' ${files}
sed -i 's/Ni fácilmente ni con dificultad/2/g' ${files}
sed -i 's/Me adapto fácilmente/3/g' ${files}

#Cuándo Ud. piensa en la palabra riesgo, ¿cuál de las siguientes opciones reflejan con mayor exactitud su asociación?

sed -i 's/Oportunidad/1/g' ${files}
sed -i 's/Incertidumbre/2/g' ${files}
sed -i 's/Pérdida o amenaza/3/g' ${files}

#Sírvase indicar el nivel de conocimiento general en materia de inversiones:

sed -i 's/Ninguno/1/g' ${files}
sed -i 's/Poco/2/g' ${files}
sed -i 's/Bueno/3/g' ${files}
sed -i 's/Muy bueno/4/g' ${files}

#¿Qué tan cómodo se siente Ud. invirtiendo en acciones o fondos mutuos de acciones?

sed -i 's/Muy cómodo/1/g' ${files}
sed -i 's/Cómodo/2/g' ${files}
sed -i 's/Incómodo/3/g' ${files}

#Teniendo en cuenta el mejor y el peor caso de rentabilidad, ¿cuál de las siguientes opciones Ud. preferiría?

sed -i 's/10% de ganancia en el mejor de los casos, y 5% de pérdida en el peor/1/g' ${files}
sed -i 's/5% de ganancia en el mejor de los casos, y 2% de pérdida en el peor/2/g' ${files}
sed -i 's/2% de ganancia en el mejor de los casos, y sin pérdida en el peor/3/g' ${files}

#Si tuviera que invertir el 50% de su patrimonio, ¿cuál de las siguientes opciones de inversión le resultan más atractivas?

sed -i 's/10% en inversiones de riesgo bajo, 40% en inversiones de riesgo medio y 50% en inversiones de riesgo alto/1/g' ${files}
sed -i 's/30% en inversiones de riesgo bajo, 40% en inversiones de riesgo medio y 30% en inversiones de riesgo alto/2/g' ${files}
sed -i 's/60% en inversiones de riesgo bajo, 30% en inversiones de riesgo medio y 10% en inversiones de riesgo alto/3/g' ${files}

#Sírvase indicar el nivel de experiencia previa en materia de inversiones:
#no dar bola \/
#sed -i 's/0 a 3 años/1/g' datos.csv
#sed -i 's/Mas de 3 años/2/g' datos.csv

#Trabaja Ud. dentro del mercado financiero o en su labor utiliza derivados o futuros?
#no dar bola \/
#sed -i 's/Si/1/g' datos.csv
#sed -i 's/No/2/g' datos.csv

clear
echo "Todos los cambios fueron realizados exitosamente"

##########################################################################################################################################################

sed -i 's/\s*,\s*/\,/g' ${files}

            (
sleep 1
echo "1"; echo "# 1%"; sleep 0.1; echo "3"; echo "# 3%"; sleep 0.1; echo "5"; echo "# 5%"; sleep 0.1;
echo "7"; echo "# 7%"; sleep 0.1; echo "10"; echo "# 10%"; sleep 1; echo "15"; echo "# 15%"; sleep 0.1;
echo "17"; echo "# 17%"; sleep 0.1; echo "19"; echo "# 19%"; sleep 0.1; echo "23"; echo "# 23%"; sleep 0.1;
echo "27"; echo "# 27%"; sleep 0.1; echo "30"; echo "# 30%"; sleep 0.1; echo "32"; echo "# 32%"; sleep 0.1;
echo "35"; echo "# 35%"; sleep 0.1; echo "38"; echo "# 38%"; sleep 0.1; echo "43"; echo "# 43%"; sleep 0.1;
echo "50"; echo "# 50%"; sleep 0.1; echo "55"; echo "# 55%"; sleep 0.1; echo "67"; echo "# 67%"; sleep 0.1;
echo "70"; echo "# 70%"; sleep 0.1; echo "74"; echo "# 74%"; sleep 0.5s; echo "87"; echo "# 87%"; sleep 0.1;
echo "90"; echo "# Finalizando 90%"; sleep 0.1; echo "91"; echo "# Finalizando 91%"; sleep 1; echo "92";
echo "# Finalizando 92%"; sleep 0.1; echo "94"; echo "# Finalizando 94%"; sleep 1; echo "96"; echo "# Finalizando 96%"; sleep 0.1;
echo "97"; echo "# Finalizando 98%"; sleep 0.1; echo "98"; echo "# Finalizando 99%"; sleep 0.2; echo "99"; echo "# Terminado"; echo "100";
) | 
yad --title="Procesado datos docusing"\
        --height=150\
        --width=400\
        --progress\

for i in {1..24}; 
    do 
          
        export LB=$(cut -d "," -f${i} ${files} | grep '^[[:space:]]*$' | wc -l) #cuenta si hay lineas vacias y cuantas por columna 
        
        if [ "$LB" -ne 0 ]; then

            clear
            echo "la columna numero $i tiene $LB valores vacios">>texto.txt
            
        fi
    done



registros=`cat texto.txt`
            echo $registros
 echo "el control de calidad finalizado"
    yad --title="Procesado datos docusing"\
        --height=200\
        --width=600\
        --text-aling=center\
        --text="el control de calidad finalizado"\
        --text="${registros}"

rm texto.txt   
exit