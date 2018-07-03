clear all;

name=sprintf('./current_config.txt');
fp = fopen(name, 'rt');
tmp=fscanf(fp,'%f');
fclose(fp);

num_configs=length(tmp)/2;
current_config=reshape(tmp,2, num_configs);
current_config=transpose(current_config);
num_slp=nnz(current_config(:,2)==1);
num_ext=nnz(current_config(:,2)==2);
num_lft=length(current_config(:,1))-num_slp-num_ext;


disp(sprintf(strcat('The num of current sloppy is: ',num2str(num_slp), '\n')));
disp(sprintf(strcat('The num of current exact is: ',num2str(num_ext), '\n')));
disp(sprintf(strcat('The num of left is: ',num2str(num_lft), '\n')));

name2=sprintf('./new_config.txt');
fp = fopen(name2, 'rt');
tmp=fscanf(fp,'%f');
fclose(fp);

num_configs=length(tmp)/2;
new_config=reshape(tmp,2, num_configs);
new_config=transpose(new_config);




results=fom(current_config, new_config);



num_slp_new=nnz(new_config(:,2)==1);
num_ext_new=nnz(new_config(:,2)==2);
num_lft_new=length(new_config(:,1))-num_slp_new-num_ext_new;


disp(sprintf(strcat('The num of new sloppy is: ',num2str(num_slp_new), '\n')));
disp(sprintf(strcat('The num of new exact is: ',num2str(num_ext_new), '\n')));
disp(sprintf(strcat('The num of left is: ',num2str(num_lft_new), '\n')));