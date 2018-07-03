name2=sprintf('./new_config.txt');
fp = fopen(name2, 'rt');
tmp=fscanf(fp,'%f');
fclose(fp);

num_configs=length(tmp)/2;
new_config=reshape(tmp,2, num_configs);
new_config=transpose(new_config);
exact=[];
for i=1:num_configs
    
    if new_config(i,2)==2
        
        exact=[exact, new_config(i,1)];
        
    end
    
    
end