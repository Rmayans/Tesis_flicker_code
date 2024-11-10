
%Esta funcion calcula los errores tipo 2 de un test de hipotesis para
%proporciones. Este codigo es para validar la percepcion de los usuarios del flicker a medida
%que el dutycycle avanaza   
function [b]=Report_error_values(p1,p2,n,m,a,type)
    
    q1=1-p1;
    q2=1-p2;
    p=(m*p1+n*p2)/(m+n);
    q=(m*q1+n*q2)/(m+n);
    pd = makedist('Normal');
    z1=icdf(pd,1-a);
    z2=icdf(pd,1-a/2);
    o=sqrt((p1*q1)/m+(p2*q2)/n);
    
    if type==">"
       b=cdf(pd,(z1*(sqrt(p*q*(1/m+1/n)))-(p1-p2))/o); 
    elseif type=="<"
        b=1-cdf(pd,(-z1*(sqrt(p*q*(1/m+1/n)))-(p1-p2))/o); 
    elseif type=="!="       
        b=cdf(pd,(z2*(sqrt(p*q*(1/m+1/n)))-(p1-p2))/o)-cdf(pd,(-z2*(sqrt(p*q*(1/m+1/n)))-(p1-p2))/o);
    end
end