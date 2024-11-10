%Esta funcion grafica un scatter con puntos azules manteniedo la figura para grafica otro
%scatter


function  Fli=Grafica_punto(Duty_cycle,Flicker)
 n=length(Flicker);
 S=[];
 for i=1:n
       F = Flicker(i);
       
            
       Fli=scatter(Duty_cycle,F,45,'bo','filled','SizeData',200);
       hold on
       S=cat(2,F,S);
           
       
   
 end



       
end