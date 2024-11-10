%Este script carga y grafica los datos experimentales del estudio de la energia
%aprovechada por los dimmers en la relacion a la almacenada a la lamparas
%LED. Se grafico intensidad relativa en funcion del dutycycle (esto lo
%explica detalladamente en la seccion 3.4 del capitulo 3 del documento de este proyecto).




Duty_cycle_1=[11;18;33;37;46;54;60;65;70];
Vout_1=[0.16;0.46;1.55;1.87;2.97;3.64;4.3;4.74;5.05];
Iout_1=Vout_1/10000;

Duty_cycle_2=[1;2;3;4;4.98;5;5.02;6;10;22;38;46;59;70;90];
Vout_2=[0.71;0.74;0.78;0.76;0.78;0.79;0.79;0.878;0.945;1.3;2.47;3.32;4.77;5.73;6.82];
Iout_2=Vout_2/10000;

Duty_cycle_3=[11;15;17;22;27;32;39;43;50;54;59;62];
Vout_3=[0.164;0.272;0.38;0.745;1.34;1.92;2.8;3.22;3.94;4.58;5.08;5.34];
Iout_3=Vout_3/10000;



Duty_cycle_4=[18;20;25;27;33;37;41;46;50;58];
Vout_4=[0.2;0.232;0.5;0.555;1.05;1.37;1.56;1.8;1.85;2.09];
Iout_4=Vout_4/10000;

Duty_cycle_5=[20;23;28;36;40;45;52;58;61;87];
Vout_5=[0.68;0.88;1.17;1.54;1.81;2.01;2.22;2.25;2.25;2.25];
Iout_5=Vout_5/10000;

Duty_cycle_6=[26;35;41;48;57;62;71;77;82];
Vout_6=[0.52;1.04;1.35;1.7;2.04;2.08;2.1;2.1;2.12];
Iout_6=Vout_6/10000;

Duty_cycle_7=[25;40;51;58;66;87];
Vout_7=[1;1.79;2;2.3;2.54;2.72];
Iout_7=Vout_7/10000;

Duty_cycle_8=[18;28;36;44;52;65;74;86;93];
Vout_8=[0.495;0.87;1.21;1.51;1.92;2.35;3;3.01;3.01];
Iout_8=Vout_8/10000;

Duty_cycle_9=[28;39;51;64;74;82];
Vout_9=[0.591;0.906;1.4;1.85;2.25;2.58];
Iout_9=Vout_9/10000;

% Duty_cycle_10=[25;40;51;58;66;87];
% Vout_10=[1;1.79;2;2.3;2.54;2.72];
% Iout_10=Vout_10/10000;
% 
% Duty_cycle_11=[18;30;38;43;51;61;70;83;91];
% Vout_11=[0.315;1.02;1.42;1.76;2.02;2.1;2.1;2.1;2.1];
% Iout_11=Vout_11/10000;
% 
% Duty_cycle_12=[12;26;36;45;56];
% Vout_12=[0.153;0.647;1.02;1.37;1.96];
% Iout_12=Vout_12/10000;

Vout_S3=6.87;
Vout_S2=2.25;
Vout_S1=3.32;
% Vout_SI=2.81;


Iout_S3=Vout_S3/10000;
Iout_S1=Vout_S1/10000;
Iout_S2=Vout_S2/10000;
% Iout_SI=Vout_SI/10000;


D_LE_1_3=(Iout_1/Iout_S3)*100;

D_LE_2_3=(Iout_2/Iout_S3)*100;

D_TE_3=(Iout_3/Iout_S3)*100;

D_LE_1_2=(Iout_4/Iout_S2)*100;

D_LE_2_2=(Iout_5/Iout_S2)*100;

D_TE_2=(Iout_6/Iout_S2)*100;

D_LE_1_1=(Iout_7/Iout_S1)*100;

D_LE_2_1=(Iout_8/Iout_S1)*100;

D_TE_1=(Iout_9/Iout_S1)*100;

% D_LE_1_I=(Iout_10/Iout_SI)*100;
% 
% D_LE_2_I=(Iout_11/Iout_SI)*100;
% 
% D_TE_I=(Iout_12/Iout_SI)*100;



% [ri1]=adjustment_curve(Duty_cycle_1',D_LE_1);
%     
% [ri2]=adjustment_curve(Duty_cycle_2',D_LE_2);
% 
% [ri3]=adjustment_curve(Duty_cycle_3',D_TE);

% subplot(1,5,5)
% P1=plot(Duty_cycle_1,D_LE_1_3,'Color','red','LineWidth',15);
% hold on;
% % T1=plot(Duty_cycle_1,ri1,"Color","black","Marker","*","MarkerSize",15,"LineWidth",4);
% % hold on
% P2=plot(Duty_cycle_2,D_LE_2_3,'Color','blue','LineWidth',15);
% hold on;
% % T2=plot(Duty_cycle_2,ri2,"Color","black","Marker","+","MarkerSize",15,"LineWidth",4);
% % hold on
% P3=plot(Duty_cycle_3,D_TE_3,'Color','green','LineWidth',15);
% % hold on;
% % T3=plot(Duty_cycle_3,ri3,"Color","black","Marker","o","MarkerSize",15,"LineWidth",4);
% 
% hAxesy=ylabel("Relative intensity (%)");
% 
% 
% 
% hAxesx=xlabel("Duty Cycle (%)");
% 
% 
% 
% 
% set(hAxesx, 'FontSize', 30);
% set(hAxesy, 'FontSize', 30);
% legend([P1,P2,P3],"LE 1 (IGBT)","LE 2 (TRIAC)","TE (IGBT)",'Location','southeast','FontSize',30);  
% 
% % Agrandar los números del eje x
% set(gca, 'FontSize', 30)
% 
% % Agrandar los números del eje y
% set(gca, 'FontSize', 30)
% 
% 
% title('Lamp #3 for dimmers Leading Edge 1, Leading Edge 2 and Trailing Edge');

% subplot(5,5,5)
% P1=plot(Duty_cycle_4,D_LE_1_2,'Color','red','LineWidth',15);
% hold on;
% % T1=plot(Duty_cycle_1,ri1,"Color","black","Marker","*","MarkerSize",15,"LineWidth",4);
% % hold on
% P2=plot(Duty_cycle_5,D_LE_2_2,'Color','blue','LineWidth',15);
% hold on;
% % T2=plot(Duty_cycle_2,ri2,"Color","black","Marker","+","MarkerSize",15,"LineWidth",4);
% % hold on
% P3=plot(Duty_cycle_6,D_TE_2,'Color','green','LineWidth',15);
% % hold on;
% % T3=plot(Duty_cycle_3,ri3,"Color","black","Marker","o","MarkerSize",15,"LineWidth",4);
% 
% hAxesy=ylabel("Relative intensity (%)");
% 
% 
% 
% hAxesx=xlabel("Duty Cycle (%)");
% 
% 
% 
% 
% set(hAxesx, 'FontSize', 30);
% set(hAxesy, 'FontSize', 30);
% legend([P1,P2,P3],"LE 1 (IGBT)","LE 2 (TRIAC)","TE (IGBT)",'Location','southeast','FontSize',30);  
% 
% % Agrandar los números del eje x
% set(gca, 'FontSize', 30)
% 
% % Agrandar los números del eje y
% set(gca, 'FontSize', 30)
% 
% 
% title('Lamp #2 for dimmers Leading Edge 1, Leading Edge 2 and Trailing Edge');

% 
% subplot(10,5,5)
% P1=plot(Duty_cycle_7,D_LE_1_1,'Color','red','LineWidth',15);
% hold on;
% % T1=plot(Duty_cycle_1,ri1,"Color","black","Marker","*","MarkerSize",15,"LineWidth",4);
% % hold on
% P2=plot(Duty_cycle_8,D_LE_2_1,'Color','blue','LineWidth',15);
% hold on;
% % T2=plot(Duty_cycle_2,ri2,"Color","black","Marker","+","MarkerSize",15,"LineWidth",4);
% % hold on
% P3=plot(Duty_cycle_9,D_TE_1,'Color','green','LineWidth',15);
% % hold on;
% % T3=plot(Duty_cycle_3,ri3,"Color","black","Marker","o","MarkerSize",15,"LineWidth",4);
% 
% hAxesy=ylabel("Relative intensity (%)");
% 
% 
% 
% hAxesx=xlabel("Duty Cycle (%)");
% 

% 
% 
% 
% set(hAxesx, 'FontSize', 30);
% set(hAxesy, 'FontSize', 30);
% legend([P1,P2,P3],"LE 1 (IGBT)","LE 2 (TRIAC)","TE (IGBT)",'Location','southeast','FontSize',30);  
% 
% % Agrandar los números del eje x
% set(gca, 'FontSize', 30)
% 
% % Agrandar los números del eje y
% set(gca, 'FontSize', 30)
% 
% 
% title('Lamp #1 for dimmers Leading Edge 1, Leading Edge 2 and Trailing Edge');
% % 
% subplot(15,5,5)
P1=plot(Duty_cycle_1,D_LE_1_3, '-o', 'MarkerFaceColor', 'r','MarkerSize',15,'Color','red','LineWidth',15);
hold on;
% T1=plot(Duty_cycle_1,ri1,"Color","black","Marker","*","MarkerSize",15,"LineWidth",4);
% hold on
P2=plot(Duty_cycle_2,D_LE_2_3, '-o', 'MarkerFaceColor', 'b','MarkerSize',15,'Color','blue','LineWidth',15);
hold on;
% T2=plot(Duty_cycle_2,ri2,"Color","black","Marker","+","MarkerSize",15,"LineWidth",4);
% hold on
P3=plot(Duty_cycle_3,D_TE_3, '-o', 'MarkerFaceColor', 'g','MarkerSize',15,'Color','green','LineWidth',15);
% hold on;
% T3=plot(Duty_cycle_3,ri3,"Color","black","Marker","o","MarkerSize",15,"LineWidth",4);

hAxesy=ylabel("Relative intensity (%)");
maxY = max(D_LE_2_2);
ylim([0,maxY+6]);


hAxesx=xlabel("Duty Cycle (%)");




set(hAxesx, 'FontSize', 30);
set(hAxesy, 'FontSize', 30);
legend([P1,P2,P3],"LE 1 (IGBT)","LE 2 (TRIAC)","TE (IGBT)",'Location','southeast','FontSize',30);  

% Agrandar los números del eje x
set(gca, 'FontSize', 30)

% Agrandar los números del eje y
set(gca, 'FontSize', 30)


title('Lamp #1, for dimmers Leading Edge 1, Leading Edge 2 and Trailing Edge');
% 
% % 
