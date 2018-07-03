function [ count, cost, red, newc_slp, newc_ext] = redundant_num( old, new )
%REDUNDANT Summary of this function goes here
%   Detailed explanation goes here

    sz=size(old)
    sz2=size(new)
    count=0;
    cost=0;
    red=0;
    newc_slp=0;
    newc_ext=0;
    for i=1:size(new,1)
        
       if new(i,2) ~= old(i,2)
          count=count+1 
          [new(i,1) old(i,1)]
          if old(i,2)==1
              red=red+1;
          end
          if old(i,2)==0
              if new(i,2)==1
              newc_slp=newc_slp+1;
              end
              
              if new(i,2)==2
              newc_ext=newc_ext+1;
              end
          end
          cost=cost + new(i,2)
       end
        
       
    end




end

