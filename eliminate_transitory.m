%Esta función se encarga de eliminar efectos transitorios producidos por la
%la funcion filter aplicada en el filtrado de señales. Como entrada se le
%ingresa la variable y que es la señal original y t el tiempo. Devolviendo
%como salida la señal z y el tiempo tz que son las variables de la misma señal con el
%con la ventana del efecto transitorio eliminado. Esto se realiza cortando
%el primer segundo de la señal
function [z,tz]=eliminate_transitory(y,t)        
       
        Index=find(t);
        %Del vector t devuelve todos sus índices
        tz=t(1000<=Index);
        %Se selecciona t para que recorra desde los indices mayores a 1000, 
        % que corresponde a 1 segundo hasta el indice final, y luego se lo
        % guarde en una variable tz.
        %Sabiendo que del tiempo 0 a 1 segundo es donde es más probable que
        %ocurra el efecto transitorio
        z=y(1000<=Index); 
        %Este recorte se lo aplica en la señal y, para luego guardarselo en
        %la señal z
        



end