%Esta función realiza una limpieza de datos para valores faltantes
%(Missing data) y para de valores atípicos (Outliers) 
function datos_limpio=Limpieza_Datos(datos)    
   
    
    % Identificar y manejar valores faltantes
    datos(isnan(datos)) = 0; 
    % Reemplazar los valores faltantes con ceros, por ejemplo
    
    % Identificar y manejar outliers
    
    Q1 = prctile(datos, 5); % Primer cuartil
    Q3 = prctile(datos, 95); % Tercer cuartil
    IQR = Q3 - Q1;
    % Calcular el rango intercuartil (IQR)
    
    limite_inferior = Q1 - 0.05* IQR;
    limite_superior = Q3 + 0.02 * IQR;
    % Definir el límite inferior y superior para identificar outliers
    % Reemplazar los valores outliers con NaN
    datos(datos < limite_inferior | datos > limite_superior) = NaN;
    
    % Realizar la limpieza de datos para valores faltantes y outliers
    datos_limpio = fillmissing(datos, 'linear'); 
    % Reemplazar los valores faltantes utilizando interpolación lineal
    
  
end    
