#!/bin/bash
#Sírvase indicar la opción que mejor se adapte al objetivo de la cuenta que Uds. desea obtener:

sed -i 's/Apreciación del capital (>10% aprox. anualizado)/Opcion 1/g' datos.csv
sed -i 's/Mantener el valor real del capital y obtener un rendimiento algo por encima de éste (inflación + 5% aprox.)/Opcion 2/g' datos.csv
sed -i 's/Mantener el valor real del capital/Opcion 3/g' datos.csv

#En términos porcentuales, ¿cuál es la relación entre el monto de la cuenta y el total de su patrimonio?

sed -i 's/0% - 33%/Opcion 1/g' datos.csv
sed -i 's/34% - 67%/Opcion 2/g' datos.csv
sed -i 's/68% - 100%/Opcion 3/g' datos.csv

#Sírvase indicar el origen de fondos que más se adapte a su situación particular:

sed -i 's/Generados a partir de una actividad en relación de dependencia/Opcion 1/g' datos.csv
sed -i 's/Generados a partir de una actividad independiente/Opcion 2/g' datos.csv
sed -i 's/Herencia u otros similares/Opcion 3/g' datos.csv

#En términos porcentuales, ¿cuál de las siguientes opciones describen mejor su necesidad de liquidez en el corto plazo?

sed -i 's/0 - 20% sobre el valor total de la cuenta/Opcion 1/g' datos.csv
sed -i 's/20% - 60% sobre el valor total de la cuenta/Opcion 2/g' datos.csv
sed -i 's/60% - 100% sobre el valor total de la cuenta/Opcion 3/g' datos.csv

#cómo lo describiría su mejor amigo en relación con su toma de riesgos?

sed -i 's/Tomador de riesgos/Opcion 1/g' datos.csv
sed -i 's/Precavido/Opcion 2/g' datos.csv
sed -i 's/Evito riesgos/Opcion 3/g' datos.csv
sed -i 's/Del 5% al 15%/Opcion 2/g' datos.csv
sed -i 's/Del 0% al 15%/Opcion 3/g' datos.csv


#¿Cuál es para Ud. el nivel de pérdida aceptable en el corto plazo?

sed -i 's/Más del 15%/Opcion 1/g' datos.csv
sed -i 's/5% - 15%/Opcion 2/g' datos.csv
sed -i 's/Del 0% - 5%/Opcion 3/g' datos.csv

#¿Cuánto tiempo puede tolerar un entorno de mercado difícil en el que su cartera pierde valor o sigue recuperándolo?

sed -i 's/De 3 a 5 años/Opcion 1/g' datos.csv
sed -i 's/De 1 a 3 años/Opcion 2/g' datos.csv
sed -i 's/Menos de 1 año/Opcion 3/g' datos.csv


#¿Con qué facilidad se adapta a los cambios financieros negativos e inesperados?

sed -i 's/No me adapto fácilmente/Opcion 1/g' datos.csv
sed -i 's/Ni fácilmente ni con dificultad/Opcion 2/g' datos.csv
sed -i 's/Me adapto fácilmente/Opcion 3/g' datos.csv

#Cuándo Ud. piensa en la palabra riesgo, ¿cuál de las siguientes opciones reflejan con mayor exactitud su asociación?

sed -i 's/Oportunidad/Opcion 1/g' datos.csv
sed -i 's/Incertidumbre/Opcion 2/g' datos.csv
sed -i 's/Pérdida o amenaza/Opcion 3/g' datos.csv

#Sírvase indicar el nivel de conocimiento general en materia de inversiones:

sed -i 's/Ninguno/Opcion 1/g' datos.csv
sed -i 's/Poco/Opcion 2/g' datos.csv
sed -i 's/Bueno/Opcion 3/g' datos.csv
sed -i 's/Muy Bueno/Opcion 4/g' datos.csv

#¿Qué tan cómodo se siente Ud. invirtiendo en acciones o fondos mutuos de acciones?

sed -i 's/Muy cómodo/Opcion 1/g' datos.csv
sed -i 's/Cómodo/Opcion 2/g' datos.csv
sed -i 's/Incómodo/Opcion 3/g' datos.csv

#Teniendo en cuenta el mejor y el peor caso de rentabilidad, ¿cuál de las siguientes opciones Ud. preferiría?

sed -i 's/10% de ganancia en el mejor de los casos, y 5% de pérdida en el peor/Opcion 1/g' datos.csv
sed -i 's/5% de ganancia en el mejor de los casos, y 2% de pérdida en el peor/Opcion 2/g' datos.csv
sed -i 's/2% de ganancia en el mejor de los casos, y sin pérdida en el peor/Opcion 3/g' datos.csv

#Si tuviera que invertir el 50% de su patrimonio, ¿cuál de las siguientes opciones de inversión le resultan más atractivas?

sed -i 's/10% en inversiones de riesgo bajo, 40% en inversiones de riesgo medio y 50% en inversiones de riesgo alto/Opcion 1/g' datos.csv
sed -i 's/30% en inversiones de riesgo bajo, 40% en inversiones de riesgo medio y 30% en inversiones de riesgo alto/Opcion 2/g' datos.csv
sed -i 's/60% en inversiones de riesgo bajo, 30% en inversiones de riesgo medio y 10% en inversiones de riesgo alto/Opcion 3/g' datos.csv

#Sírvase indicar el nivel de experiencia previa en materia de inversiones:

sed -i 's/0 a 3 años/Opcion 1/g' datos.csv
sed -i 's/Mas de 3 años/Opcion 2/g' datos.csv

#Trabaja Ud. dentro del mercado financiero o en su labor utiliza derivados o futuros?

sed -i 's/Si/Opcion 1/g' datos.csv
sed -i 's/No/Opcion 2/g' datos.csv
echo "Todos los cambios fueron realizados exitosamente"


