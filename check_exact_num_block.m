function [ count ] = check_exact_num_block( block )
%CHECK_EXACT_NUM_BLOCK Summary of this function goes here
%   Detailed explanation goes here
    size(block,3)
    count=0;
    for i=1:size(block,3)
        ct=0;
        
        for j=1:size(block,2)
           if block(2,j,i)==2
               ct=ct+1;
               block(1,j,i)
           end
           ct
        end
       if ct >= 3
           
       count=count+1;
       
       end
        
    end
    count

end

