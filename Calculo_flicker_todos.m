%Este script ejecuta todos parametros calculados
%del flicker y variables electricas de todos los archivos que contienen datos experimentales del proyecto
% contenido en cada  directorio.

%Aqui se cargan todos los directorios.
Folders1=ForToDirectory('C:\Users\mayun\OneDrive\Escritorio\Tesis\Medidas_Tesis_Abril\Sin_interferencia');
Folders2=ForToDirectory('C:\Users\mayun\OneDrive\Escritorio\Tesis\Medidas_Tesis_Abril\Con_interferencia');
Folders_1a=ForToDirectory(Folders1{1,1});
Folders_2a=ForToDirectory(Folders1{1,2});
Folders_3a=ForToDirectory(Folders1{1,3});
Folders_1c=ForToDirectory(Folders_1a{1,1});
Folders_2c=ForToDirectory(Folders_1a{1,2});
Folders_3c=ForToDirectory(Folders_2a{1,1});
Folders_4c=ForToDirectory(Folders_2a{1,2});
Folders_5c=ForToDirectory(Folders_3a{1,1});
Folders_6c=ForToDirectory(Folders_3a{1,2});
Folders_h=ForToDirectory(Folders2{1,1});
Folders_k1=ForToDirectory(Folders_h{1,1});
Folders_k2=ForToDirectory(Folders_h{1,2});


%Aqui se calculan todos los parametros y variables de todos archivos de
%de cada directorio

[F_L_1_A,F_H_1_A,T_L_1_A_1,T_L_1_A_2,T_H_1_A_1,T_H_1_A_2,V_L_1_A,V_H_1_A,C_yL_1_A,C_yH_1_A,E_yL_1_A,E_yH_1_A,E_xL_1_A,E_xH_1_A,f_L_1_A,f_H_1_A]=Calculo_Todo(Folders_1c);
[F_L_2_A,F_H_2_A,T_L_2_A_1,T_L_2_A_2,T_H_2_A_1,T_H_2_A_2,V_L_2_A,V_H_2_A,C_yL_2_A,C_yH_2_A,E_yL_2_A,E_yH_2_A,E_xL_2_A,E_xH_2_A,f_L_2_A,f_H_2_A]=Calculo_Todo(Folders_2c);
[F_L_3_A,F_H_3_A,T_L_3_A_1,T_L_3_A_2,T_H_3_A_1,T_H_3_A_2,V_L_3_A,V_H_3_A,C_yL_3_A,C_yH_3_A,E_yL_3_A,E_yH_3_A,E_xL_3_A,E_xH_3_A,f_L_3_A,f_H_3_A]=Calculo_Todo(Folders_3c);
[F_L_4_A,F_H_4_A,T_L_4_A_1,T_L_4_A_2,T_H_4_A_1,T_H_4_A_2,V_L_4_A,V_H_4_A,C_yL_4_A,C_yH_4_A,E_yL_4_A,E_yH_4_A,E_xL_4_A,E_xH_4_A,f_L_4_A,f_H_4_A]=Calculo_Todo(Folders_4c);
[F_L_5_A,F_H_5_A,T_L_5_A_1,T_L_5_A_2,T_H_5_A_1,T_H_5_A_2,V_L_5_A,V_H_5_A,C_yL_5_A,C_yH_5_A,E_yL_5_A,E_yH_5_A,E_xL_5_A,E_xH_5_A,f_L_5_A,f_H_5_A]=Calculo_Todo(Folders_5c);
[F_L_6_A,F_H_6_A,T_L_6_A_1,T_L_6_A_2,T_H_6_A_1,T_H_6_A_2,V_L_6_A,V_H_6_A,C_yL_6_A,C_yH_6_A,E_yL_6_A,E_yH_6_A,E_xL_6_A,E_xH_6_A,f_L_6_A,f_H_6_A]=Calculo_Todo(Folders_6c);

[F_L_B,F_H_B,T_L_B_1,T_L_B_2,T_H_B_1,T_H_B_2,V_L_B,V_H_B,C_yL_B,C_yH_B,E_yL_B,E_yH_B,E_xL_B,E_xH_B,f_L_B,f_H_B]=Calculo_Todo(Folders_k1);
[F_L_C,F_H_C,T_L_C_1,T_L_C_2,T_H_C_1,T_H_C_2,V_L_C,V_H_C,C_yL_C,C_yH_C,E_yL_C,E_yH_C,E_xL_C,E_xH_C,f_L_C,f_H_C]=Calculo_Todo(Folders_k2);
