Instrucciones:

-Ejecutar el script Calculo_flicker_todos.m en el programa de computo MATLAB u Octave. Desde alli se calcularan los Dm (explicados en el documento de tesis) entre otras variables, para cada lampara LED y por cada tipo de dimmer. Tener en cuenta que si se ejecuta enteramente el codigo puede llegar a demorar aproximadamente 2 horas, esto es debido a la cantidad de datos que se maneja. Por eso se recomienda comentar las lineas de codigo que no se utilizaran en el momento y ejecutar solo las de interes. De esta manera se podra obtener momentaneamente algunos resultados pero con mayor rapidez. 
Y luego seguir asi sucesivamente hasta tener todos los resultados de las lineas de codigo ejecutadas.

-Luego de obtener todos los resultados del script comentado anteriormente, estos quedaran guardados en el espacio de trabajo de MATLAB u Octave. Con estos resultados se esta en condiciones de poder realizar las graficas de dispersion (grafica los Dm) sobrepuestas con 
las de barra (proporciones de usuarios que percibieron flicker). Para esto se tiene que ejecutar un script que grafica para una cierta lampara LED un tipo de dimmer y son varios de estos. Por ejemplo para el script Graficas_de_puntos_Dimmer_LE_Vivion_Flicker_low_SC.m, 
donde se lee Vivion significa que grafica de laa lamapara marca Vivion y LE que lo realiza con el dimmer tipo Leading Edge. Son 8 scripts de estos y al ejecutarlos se obtendra una grafica de dispersion (Modulation Depth or Dm) sobrepuesto con unas graficas de 
barras(% Users perceive) en funcion del dutycycle. Ademas de realizar los graficos, estos script tambien devuelven los errores tipo II de las pruebas de hipotesis de proporciones, que se las realizan mediante la funcion Report_error_values escrita en el script Report_error_values.m.

-Aparte de lo comentado anteriormente, se puede ejecutar directamente el script LigthVsrateDimmer.m que realiza 3 graficos sobrepuesto que cada grafico de la misma figura representa cada tipo de dimmer (LE tipo Triac, LE tipo IGBT y TE tipo IGBT), que se a comando para la  lampara LED de la misma marca. Son 3 figuras de estas graficas ya se realiza por cada marca de lampara LED (iXED, Vivion y Eco_Friendly). Estas figuras graficas porcentaje intensidad relativa (en el documento de tesis explica su medicion) en funcion del dutycycle.

Aclaracion: Si se desea ejecutar este codigo,  en este repositorio se puede en encontrar una carpeta llamada con datos experimentales que se obtuvieron de un conjunto de 4 lamparas encendidas al mismo tiempo y comandadas con el dimmer Leading Edge. Este fue un caso extremo 
de flicker para un dutycycle del 5 %.
