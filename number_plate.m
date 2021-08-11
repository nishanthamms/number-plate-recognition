%create image database
di=dir('Training\letters_numbers');
st={di.name};
nam=st(3:end);
imgfile=cell(2,length(nam));
for i=1:length(nam)
   imgfile(1,i)={imread(['Training\letters_numbers','\',cell2mat(nam(i))])};
   temp=cell2mat(nam(i));
   imgfile(2,i)={temp(1)};
end
save('imgdataset.mat','imgfile');
clear;
