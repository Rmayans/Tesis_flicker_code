%Esta funcion recorre todos los archivo de un directorio
function Folders=ForToDirectory(directorio_principal)
    % Ruta del directorio principal
%     directorio_principal = 'ruta_del_directorio_principal';
    
    % Obtener una lista de todas las subcarpetas en el directorio principal
    subcarpetas = dir(directorio_principal);
    subcarpetas = subcarpetas([subcarpetas.isdir]);
    subcarpetas = subcarpetas(~ismember({subcarpetas.name}, {'.', '..'}));
    Folders='';
    % Recorrer cada subcarpeta y realizar alguna operación
    for i = 1:length(subcarpetas)
        subcarpeta_actual = fullfile(directorio_principal, subcarpetas(i).name);
        Folders= cat(2,Folders,{subcarpeta_actual});
        % Aquí puedes agregar el código que deseas ejecutar en cada subcarpeta
        % Por ejemplo, puedes leer archivos, procesar datos, etc.
        % ...
        
        % Puedes imprimir el nombre de la subcarpeta actual si deseas
        disp(['Subcarpeta actual: ' subcarpeta_actual]);
    end
