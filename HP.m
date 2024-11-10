function  [y]=HP(x,fc,fs)
            
           [b,a]=butter(4,fc/(fs/2),'high');

           y=filter(b,a,x);
%          
%           
            
            




end