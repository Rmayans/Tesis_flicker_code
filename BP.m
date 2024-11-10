function  [y]=BP(x,fc1,fc2,fs)
          
       
         [b,a]=butter(4,[fc1,fc2]/(fs/2),'bandpass');
              
     
         y=filter(b,a,x);  


end