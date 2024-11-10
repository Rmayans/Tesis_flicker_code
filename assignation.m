function ta=assignation(t)
       n=length(t);
       taux=[];
       for i=1:n
           ti=t(i);
           if ti<=0
              tai=abs(ti);

                
                    

           else
              tai=ti+max(t);  
           end

          taux=cat(1,taux,tai);
          ta=linspace(min(taux),max(taux),n);

       end 
end