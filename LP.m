%Esta función realiza un filtro pasabajos a la señal orginal, con su frecuencia de corte y de muestreo 
function  [y]=LP(x,fc,fs)

          
         [b,a]=butter(8,fc/(fs/2),'low'); %Se Diseña la transferencia del filtro tipo pasabajos de Butterworth de orden 8, con frecuencia de corte fc y muestreo fs
              
     
         y=filter(b,a,x);  %Se aplico dicho filtro a la señal x mediante la funcion filter. Observar en la documentación de MATLAB que filter toma en cuenta las condiciones iniciales, por lo tanto es importante tener en cuenta los efectos transitorios
      

end