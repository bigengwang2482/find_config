function [ output ] = block_config(input )
%BLOCK_CONFIG Summary of this function goes here
%   Detailed explanation goes here

block_size=4;
col=2;
num_block=floor(size(input,1)/block_size);
size(input)
input(num_block*block_size+1 : size(input,1),:)=[];

size(input)
output=reshape(transpose(input), [col block_size num_block] );
%output= mat2cell(input,block_size, col);


size(output)




end

