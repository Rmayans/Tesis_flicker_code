%Esta funcion grafica un scatter con cruces rojas manteniedo la figura para grafica otro
%scatter 

function  Fli=Grafica_punto_distinguido(Duty_cycle,Flicker)
 n=length(Flicker);
 S=[];
 for i=1:n
       F = Flicker(i);
       
            
       Fli=scatter(Duty_cycle,F,'xr','LineWidth',40);
       hold on
       S=cat(2,F,S);
           
       
   
 end



       
end