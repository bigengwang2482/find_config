function [count] = distance( config )
%DISTANCE Summary of this function goes here
%   Detailed explanation goes here
    tmp_pre=0;
    count=0;
    for i=1:size(config,1)
     
       dist=0;
       
       if config(i,2)==2
           [config(i,1) tmp_pre]
          % if tmp_pre ~=0 
           dist=config(i,1)-tmp_pre;
          % end
           
           if abs(dist) <= 10
              count=count+1
           end
       
          tmp_pre=config(i,1);
          
           
           
       end
        
    end
    
    count
end

