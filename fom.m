function [ f ] = fom( current, new )
%FOM Summary of this function goes here
%   Detailed explanation goes here



%Calculate factor 1?Evaulate Num of "distance"<=10

f1=distance(new);





%Calculate factor 2: Num of blocks with >= 3 exact

f2=check_exact_num_block(block_config(new));


%Calculate factor 3: Redundancy check

[f3 f4 f5 f6 f7]=redundant_num(current, new);


f=[f1 f2 f3 f4 f5 f6 f7];


%Get total




end

