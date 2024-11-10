%Este script calcula y devuelve todas las variables necesarias para la
%caracterizacion empirica de cada carpeta especifica.

function [Flicker_dutyC,Time1,Time2,Vd,Current_y,Especter_y,Especter_x,Frecuency]=Flicker_Folder_Type(Folder, Type)    
    %Devuelve tiempo y voltaje de dicho archivo
    [tD,VD]=Cargar_Datos(Folder);
    %Inicializa las variables
    n=size(tD,1);
    Flicker_dutyC=cell(n,1);
    Time1=cell(n,1);
    Time2=cell(n,1);
    Current_y=cell(n,1);
    Especter_x=cell(n,1);
    Especter_y=cell(n,1);
    Frecuency=cell(n,1);
    Vd=cell(n,1);
    %Recorre cada variable electrica para calcular las variables que tienen
    %informacion aceca del flicker
    for i=3:n-1
    
      [flicker,time1,time2,vd,current_y,especter_y,especter_x,frecuency]=flicker_variables(tD{i,1},VD{i,1},Type);
      mt1=length(time1);
      mt2=length(time2);
      mc=length(current_y);
      mey=length(especter_y);
      mex=length(especter_x);
      mf=length(frecuency);
      mv=length(vd);
      Flicker_dutyC{i}=flicker;
      Time1{i}=time1(1:mt1);
      Time2{i}=time2(1:mt2);
      Vd{i}=vd(1:mv);
      Current_y{i}=current_y(1:mc);
      Especter_y{i}=especter_y(1:mey);
      Especter_x{i}=especter_x(1:mex);
      Frecuency{i}=frecuency(1:mf);
%       Current_x=cat(1,current_x,Current_x);
    % 
    
    end
end    