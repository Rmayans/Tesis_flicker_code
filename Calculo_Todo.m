%Esta funcion   devuelve todos los parametros asociados al flicker y todas
%sus variables electricas
%de todos los archivos de un directorio seleccionado
function  [F_L,F_H,T_L_1,T_L_2,T_H_1,T_H_2,V_L,V_H,C_yL,C_yH,E_yL,E_yH,E_xL,E_xH,f_L,f_H]=Calculo_Todo(Folders_Nc)
    %Inicializa todas las variables
    n=length(Folders_Nc);
    F_L=cell(n,1);
    T_L_1=cell(n,1);
    T_L_2=cell(n,1);
    C_yL=cell(n,1);
    E_xL=cell(n,1);
    E_yL=cell(n,1);
    f_L=cell(n,1);
    F_H=cell(n,1);
    T_H_1=cell(n,1);
    T_H_2=cell(n,1);
    C_yH=cell(n,1);
    E_xH=cell(n,1);
    E_yH=cell(n,1);
    f_H=cell(n,1);
    V_L=cell(n,1);
    V_H=cell(n,1);
    %Recorre todo el directorio y realiza todos los calculos en cada bucle
   
    for i=1:n
        
        [FlickerL,TimeL_1,TimeL_2,Volt_L,Current_yL,Especter_yL,Especter_xL,FrecuencyL]=Flicker_Folder_Type(Folders_Nc{1,i},'Bajas_frecuencias');
        [FlickerH,TimeH_1,TimeH_2,Volt_H,Current_yH,Especter_yH,Especter_xH,FrecuencyH]=Flicker_Folder_Type(Folders_Nc{1,i},'Altas_frecuencias');
        F_L{i}=FlickerL;
        T_L_1{i}=TimeL_1;
        T_L_2{i}=TimeL_2;
        C_yL{i}=Current_yL;
        E_xL{i}=Especter_xL;
        E_yL{i}=Especter_yL;
        f_L{i}=FrecuencyL;
        F_H{i}=FlickerH;
        T_H_1{i}=TimeH_1;
        T_H_2{i}=TimeH_2;
        C_yH{i}=Current_yH;
        E_xH{i}=Especter_xH;
        E_yH{i}=Especter_yH;
        f_H{i}=FrecuencyH;
        V_L{i}=Volt_L;
        V_H{i}=Volt_H;
    end    