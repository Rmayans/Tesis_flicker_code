



%Esta funcion filtra la senal original y calcula todos los parametros asociados al flicker
function [Delta,ts1,ts2,Vs,Is,Ydnp,Xdnp,fd]=flicker_variables(t,V,tipo_flicker)
          
          tp=assignation(t);    
          %La funcion assignatio devuelve un tiempo tp de 0 a 8 segundos si se
          %le ingresa un tiempo t de -4 a 4 segundos
          %(esto es porque en Digilent Waveforms, cada vez que captura, toma tiempos de -4 a 4 segundos y
          %el tiempo real es una magnitud positiva), 
          R=10000;
          %Se le define una resistencia de 10k, que se utilizo en el opamp
          %inversor.
          Vd=V([find(tp==0),find(tp)])';
          %Desde la variable tp obtenida de la funcion assignation, se lo
          %reasigna al Voltaje V guardandolo en Vd. Esto significa que el
          %Volataje en Digilent Waveforms esta definido en tiempo de -4 a 4
          %segundos, por lo tanto es necesaro que al corregir dicho
          %intervalo de tiempo, se correja tambien en el voltaje para que
          %tambien este defino desde 0 a 8 segundos dicho voltaje. Y luego
          %transponer Vd para que resulte ser una vector columna.
         
         [Vs,ts1]=eliminate_transitory(Vd,tp); 

         %Elimina efectos transitorios en la señal Vd.
          
          if tipo_flicker=="Bajas_frecuencias"

            %Si se desea calcular parametros de flicker de bajas frecuencias  
            
            [Vdnf,Ydnp,Xdnp,fd]=FiltroH(Vd,40,0.2,40,max(tp),min(tp),'pasabajo');
            
            %se le aplica un filtro pasa bajo.

            Vs=Vdnf';
            
            %Se pasa a columnas la salida de voltaje filtrada de la funcion FiltroH
                
            If=(Vs)/R;

            %Se aplica la ley de Ohm con los 10k de resistencia para hayar
            %la corriente If que circula por el fotodiodo conectado en la
            %entrada del opamp inversor.

            Is1=Limpieza_Datos(If);    

            %Se le realiza la limpieza de datos a la corriente If y se devuelve como Is1.
           [Is,ts2]=eliminate_transitory(Is1,tp);

            %Se elimina los efectos transistorios de la señal filtrada


            Delta=(max(Is)-min(Is))/(max(Is)+min(Is));

            %ye le calcula el Dm. 

          elseif tipo_flicker=="Altas_frecuencias"
           [Vdnf,Ydnp,Xdnp,fd]=FiltroH(Vd,100,0.2,40,max(tp),min(tp),'pasaalto');

          
            If=(Vdnf)'/R;
            [Is1,ts2]=eliminate_transitory(If,tp);     
            Is=Limpieza_Datos(Is1);
 
            Delta=(max(Is)-min(Is))/(max(Is)+min(Is));

            %El mismo criterio que el anterior pero para el flicker de altas frecuencias se filtra la señal con un pasa altos 
          end  
       

end
