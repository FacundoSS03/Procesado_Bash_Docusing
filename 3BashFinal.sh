#!/bin/bash
#Sírvase indicar la opción que mejor se adapte al objetivo de la cuenta que Uds. desea obtener:

sed -i 's/Apreciación del capital (>10% aprox. anualizado)/1/g' datos.csv
sed -i 's/Mantener el valor real del capital y obtener un rendimiento algo por encima de éste (inflación + 5% aprox.)/2/g' datos.csv
sed -i 's/Mantener el valor real del capital/3/g' datos.csv

#En términos porcentuales, ¿cuál es la relación entre el monto de la cuenta y el total de su patrimonio?

sed -i 's/0% - 33%/1/g' datos.csv
sed -i 's/34% - 67%/2/g' datos.csv
sed -i 's/68% - 100%/3/g' datos.csv

#Sírvase indicar el origen de fondos que más se adapte a su situación particular:

sed -i 's/Generados a partir de una actividad en relación de dependencia/1/g' datos.csv
sed -i 's/Generados a partir de una actividad independiente/2/g' datos.csv
sed -i 's/Herencia u otros similares/3/g' datos.csv

#En términos porcentuales, ¿cuál de las siguientes opciones describen mejor su necesidad de liquidez en el corto plazo?

sed -i 's/0 - 20% sobre el valor total de la cuenta/1/g' datos.csv
sed -i 's/20% - 60% sobre el valor total de la cuenta/2/g' datos.csv
sed -i 's/60% - 100% sobre el valor total de la cuenta/3/g' datos.csv

#cómo lo describiría su mejor amigo en relación con su toma de riesgos?

sed -i 's/Tomador de riesgos/1/g' datos.csv
sed -i 's/Precavido/2/g' datos.csv
sed -i 's/Evito riesgos/3/g' datos.csv
sed -i 's/Del 5% al 15%/2/g' datos.csv
sed -i 's/Del 0% al 15%/3/g' datos.csv


#¿Cuál es para Ud. el nivel de pérdida aceptable en el corto plazo?

sed -i 's/Más del 15%/1/g' datos.csv
sed -i 's/5% - 15%/2/g' datos.csv
sed -i 's/Del 0% al 5%/3/g' datos.csv

#¿Cuánto tiempo puede tolerar un entorno de mercado difícil en el que su cartera pierde valor o sigue recuperándolo?

sed -i 's/De 3 a 5 años/1/g' datos.csv
sed -i 's/De 1 a 3 años/2/g' datos.csv
sed -i 's/Menos de 1 año/3/g' datos.csv


#¿Con qué facilidad se adapta a los cambios financieros negativos e inesperados?

sed -i 's/No me adapto fácilmente/1/g' datos.csv
sed -i 's/Ni fácilmente ni con dificultad/2/g' datos.csv
sed -i 's/Me adapto fácilmente/3/g' datos.csv

#Cuándo Ud. piensa en la palabra riesgo, ¿cuál de las siguientes opciones reflejan con mayor exactitud su asociación?

sed -i 's/Oportunidad/1/g' datos.csv
sed -i 's/Incertidumbre/2/g' datos.csv
sed -i 's/Pérdida o amenaza/3/g' datos.csv

#Sírvase indicar el nivel de conocimiento general en materia de inversiones:

sed -i 's/Ninguno/1/g' datos.csv
sed -i 's/Poco/2/g' datos.csv
sed -i 's/Bueno/3/g' datos.csv
sed -i 's/Muy Bueno/4/g' datos.csv

#¿Qué tan cómodo se siente Ud. invirtiendo en acciones o fondos mutuos de acciones?

sed -i 's/Muy cómodo/1/g' datos.csv
sed -i 's/Cómodo/2/g' datos.csv
sed -i 's/Incómodo/3/g' datos.csv

#Teniendo en cuenta el mejor y el peor caso de rentabilidad, ¿cuál de las siguientes opciones Ud. preferiría?

sed -i 's/10% de ganancia en el mejor de los casos, y 5% de pérdida en el peor/1/g' datos.csv
sed -i 's/5% de ganancia en el mejor de los casos, y 2% de pérdida en el peor/2/g' datos.csv
sed -i 's/2% de ganancia en el mejor de los casos, y sin pérdida en el peor/3/g' datos.csv

#Si tuviera que invertir el 50% de su patrimonio, ¿cuál de las siguientes opciones de inversión le resultan más atractivas?

sed -i 's/10% en inversiones de riesgo bajo, 40% en inversiones de riesgo medio y 50% en inversiones de riesgo alto/1/g' datos.csv
sed -i 's/30% en inversiones de riesgo bajo, 40% en inversiones de riesgo medio y 30% en inversiones de riesgo alto/2/g' datos.csv
sed -i 's/60% en inversiones de riesgo bajo, 30% en inversiones de riesgo medio y 10% en inversiones de riesgo alto/3/g' datos.csv

#Sírvase indicar el nivel de experiencia previa en materia de inversiones:

sed -i 's/0 a 3 años/1/g' datos.csv
sed -i 's/Mas de 3 años/2/g' datos.csv

#Trabaja Ud. dentro del mercado financiero o en su labor utiliza derivados o futuros?

sed -i 's/Si/1/g' datos.csv
sed -i 's/No/2/g' datos.csv
echo "Todos los cambios fueron realizados exitosamente"

echo "ingrese el nombre del archivo a crear" 
read nombre

cp -a datos.csv $nombre.csv
rm -rf datos.csv
echo "se copiaron los datos al archivo $nombre"
