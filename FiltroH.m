% Esta funcion no solo aplica el filtrado a la señales sino tambien calcula su espectro
function [yf,Yfp,Xfp,f]=FiltroH(xf,fc,fc1,fc2,tmax,tmin,tipo)
         n=length(xf); %xf voltaje de datos extraidos desde Digilent Waveforms
                       %n es el tamaño del vector de datos  
         Dt=tmax-tmin; %tmax=max(t) y tmin=min(t) en segundos y t extraido desde digilent waveform)
         fs=n/Dt;      %Freceuncia de muestreo de los datos que se muestreo en Digilent Waveforms
        
         
         f=linspace(-fs/2,fs/2,n); %Vector de frecuencias
           
          
         if tipo=="pasabajo"       %Si el filtro es tipo pasabajo

            [yf]=LP(xf,fc,fs);     %Entonces se le aplica un pasabajos LP (funcion de otro modulo)
            

            Xf=fft(xf);            %Espectro de la señal original 
            Xfp=fftshift(abs(Xf)); %Lo mismo que en la linea anterior pero en valor absoluto
            Yfp=fftshift(abs(fft(yf))); %Espectro de la señal filtrada con un pasabajos

               
            
         elseif tipo=="pasaalto" % O si es un pasaalto
         
            [yf]=HP(xf,fc,fs);  %Entonces se le aplica un pasalto HP (funcion de otro modulo)
            
           Xf=fft(xf);          %Espectro de la señal original 
           Xfp=fftshift(abs(Xf));      %Lo mismo que en la linea anterior pero en valor absoluto
           Yfp=fftshift(abs(fft(yf))); %Espectro de la señal filtrada con un pasaalto

             
         elseif tipo=="pasabanda" % O si es un pasabanda     
             [yf]=BP(xf,fc1,fc2,fs); %Entonces se le aplica un pasbanda BP (funcion de otro modulo)

             Xf=fft(xf);             %Espectro de la señal original 
             Xfp=fftshift(abs(Xf));   %Lo mismo que en la linea anterior pero en valor absoluto
             Yfp=fftshift(abs(fft(yf))); %Espectro de la señal filtrada con un pasabanda

             
          

         end            
end