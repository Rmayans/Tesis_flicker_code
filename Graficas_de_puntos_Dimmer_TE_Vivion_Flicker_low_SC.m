%Este script realiza una grafica de dispersion de todos los Dm (en el
%capitulo 2 habla de como se calculan que estan vinculados con el flicker)
%40 veces por dutycycle a su vez tiene superpuesto barras que representa el
%porcentaje de individuos que percibieron flicker por cada dutycycle.
%Tambien calcula los errores tipos 2 de dichas proporciones utilizando la
%funcion del script Report_error_values.m. Este script grafica los
%resultado empiricos para la lampara LED  de marca
%Vivion, comandada con el dimmer Trailing
%Edge
N=100;
n20p=26;
n40p=24;
n60p=8;
n70p=16;


D=[5;10;20;40;60;70];
p=[n20p/N;n40p/N;n60p/N;n70p/N];
B=bar(D,p*100);
[b11]=Report_error_values(p(1),p(2),N,N,0.025,'>');
[b21]=Report_error_values(p(2),p(3),N,N,0.025,'>');
[b31]=Report_error_values(p(3),p(4),N,N,0.025,'>');

[b12]=Report_error_values(p(1),p(2),N,N,0.025,'<');
[b22]=Report_error_values(p(2),p(3),N,N,0.025,'<');
[b32]=Report_error_values(p(3),p(4),N,N,0.025,'<');


hAxesz=ylabel("% Users perceive (%)"); 
ylim([0,p1(1)]); 
yyaxis right;



F=Grafica_punto(20,cell2mat(F_L_4_A{2,1})*100);
L=Grafica_punto_distinguido(20,mean(cell2mat(F_L_4_A{2,1}))*100);

Grafica_punto(40,cell2mat(F_L_4_A{3,1})*100);
Grafica_punto_distinguido(40,mean(cell2mat(F_L_4_A{3,1}))*100);

Grafica_punto(60,cell2mat(F_L_4_A{4,1})*100);
Grafica_punto_distinguido(60,mean(cell2mat(F_L_4_A{4,1}))*100);

Grafica_punto(70,cell2mat(F_L_4_A{5,1})*100);
Grafica_punto_distinguido(70,mean(cell2mat(F_L_4_A{5,1}))*100);

xticks([5,10, 20, 40, 60, 70]);
xticklabels({'5','10', '20', '40', '60', '70'});
% 
hAxesx=xlabel("Duty Cycle (%)");
% 
hAxesy=ylabel("Modulation Depth or Dm (%)");

% % % Configurar el eje izquierdo como el eje principal
% % 
% % % Configurar el eje derecho como el eje secundario
% % 
% % 
legend([B,F,L],"%Users perceive","Dm","Dm average",'LineWidth',3,'FontSize',30);  

% % % Modificar el tamaño de las etiquetas del eje x e y
set(hAxesx, 'FontSize', 30);

set(hAxesy, 'FontSize', 30);

% 
%  % Agrandar los números del eje x
 set(gca, 'FontSize', 30)
    
 % Agrandar los números del eje y
 set(gca, 'FontSize', 30)
%     
% %     
title("Modulation Depth for lamps #1, Dimmer TE");





