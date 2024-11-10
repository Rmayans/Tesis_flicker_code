%Este script realiza una grafica de dispersion de todos los Dm (en el
%capitulo 2 habla de como se calculan que estan vinculados con el flicker)
%40 veces por dutycycle a su vez tiene superpuesto barras que representa el
%porcentaje de individuos que percibieron flicker por cada dutycycle.
%Tambien calcula los errores tipos 2 de dichas proporciones utilizando la
%funcion del script Report_error_values.m. Este script grafica los
%resultado empiricos para el conjunto de lamparas LED Eco_Friendly,
%comandads con el dimmer Leading
%Edge

N=100;
n5p=42;
n10p=16;
n20p=15;
n40p=10;
n60p=9;
n70p=10;






D=[5;10;20;40;60;70];
p=[n5p/N;n10p/N;n20p/N;n40p/N;n60p/N;n70p/N];

[b11]=Report_error_values(p(1),p(2),N,N,0.025,'>');
[b21]=Report_error_values(p(2),p(3),N,N,0.025,'>');
[b31]=Report_error_values(p(3),p(4),N,N,0.025,'>');
[b41]=Report_error_values(p(4),p(5),N,N,0.025,'>');
[b51]=Report_error_values(p(5),p(6),N,N,0.025,'>');

[b12]=Report_error_values(p(1),p(2),N,N,0.025,'<');
[b22]=Report_error_values(p(2),p(3),N,N,0.025,'<');
[b32]=Report_error_values(p(3),p(4),N,N,0.025,'<');
[b42]=Report_error_values(p(4),p(5),N,N,0.025,'<');
[b52]=Report_error_values(p(5),p(6),N,N,0.025,'<');


B=bar(D,p*100,"yellow");

hAxesz=ylabel("% Users perceive (%)");

maxY = max(p*100);


ylim([0,maxY+3])
yyaxis right;

F=Grafica_punto(5,cell2mat(F_L_1_A{6,1})*100);
L=Grafica_punto_distinguido(5,mean(cell2mat(F_L_1_A{6,1}))*100);
Grafica_punto(10,cell2mat(F_L_1_A{1,1})*100);
Grafica_punto_distinguido(10,mean(cell2mat(F_L_1_A{1,1}))*100);
Grafica_punto(20,cell2mat(F_L_1_A{2,1})*100);
Grafica_punto_distinguido(20,mean(cell2mat(F_L_1_A{2,1}))*100);
Grafica_punto(40,cell2mat(F_L_1_A{3,1})*100);
Grafica_punto_distinguido(40,mean(cell2mat(F_L_1_A{3,1}))*100);
Grafica_punto(60,cell2mat(F_L_1_A{4,1})*100);
Grafica_punto_distinguido(60,mean(cell2mat(F_L_1_A{4,1}))*100);
Grafica_punto(70,cell2mat(F_L_1_A{5,1})*100);
Grafica_punto_distinguido(70,mean(cell2mat(F_L_1_A{5,1}))*100);


hAxesy=ylabel("Modulation Depth or Dm (%)");

maxY = max(cell2mat(F_L_1_A{6,1})*100);




ylim([0,maxY+6])


xticks([5, 10, 20, 40, 60, 70]);
xticklabels({'5', '10', '20', '40', '60', '70'});
hAxesx=xlabel("Duty Cycle (%)");


legend(B,'% Users perceive','LineWidth',3,'FontSize',30); 


Obtener los objetos de los ejes


Modificar el tamaño de las etiquetas del eje x e y
set(hAxesx, 'FontSize', 30);
set(hAxesy, 'FontSize', 30);
set(hAxesz, 'FontSize', 30);



Agrandar los números del eje x
set(gca, 'FontSize', 30)

Agrandar los números del eje y
set(gca, 'FontSize', 30)



title("Perception flicker for Lamp #2, Dimmer LE");
