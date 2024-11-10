%Este script carga todos los archivos de una carpeta especifica devolviendo
%dos vectores de datos
function [Datos_1,Datos_2]=Cargar_Datos(carpeta)

   archivos = dir(carpeta);
   n=length(archivos);
   Datos_1 = cell(n, 1);
   Datos_2 = cell(n, 1);
   for i = 1:length(archivos)
    % Verifica si el archivo es un archivo de texto
        if ~archivos(i).isdir && endsWith(archivos(i).name, '.csv')
        % Construye la ruta completa del archivo
            ruta_archivo = fullfile(carpeta, archivos(i).name);
        
        % Lee el contenido del archivo de texto
            contenido = readmatrix(ruta_archivo);
        
        % Obtén el tamaño del contenido
            m = size(contenido,1);
        
        % Agrega los primeros m elementos a la celda correspondiente
            Datos_1{i} = contenido(1:m, 1);
            Datos_2{i} = contenido(1:m, 2);
          
           
        
        end
   end
end