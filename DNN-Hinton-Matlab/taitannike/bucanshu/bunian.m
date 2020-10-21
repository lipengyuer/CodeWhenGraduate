maxepoch=50; 
numhid=1000; numpen=500; numpen2=20;
makedata;
fprintf(1,'Pretraining a deep autoencoder. \n');
fprintf(1,'The Science paper used 50 epochs. This uses %3i \n', maxepoch);


[numcases numdims numbatches]=size(batchdata);

fprintf(1,'Pretraining Layer 1 with RBM: %d-%d \n',numdims,numhid);
restart=1;
rbmnian;
hidrecbiases=hidbiases; 
save mnistvhclassify vishid hidrecbiases visbiases;

fprintf(1,'\nPretraining Layer 2 with RBM: %d-%d \n',numhid,numpen);
batchdata=batchposhidprobs;
numhid=numpen;
restart=1;
rbmnian;
hidpen=vishid; penrecbiases=hidbiases; hidgenbiases=visbiases;
save mnisthpclassify hidpen penrecbiases hidgenbiases;

fprintf(1,'\nPretraining Layer 3 with RBM: %d-%d \n',numpen,numpen2);
batchdata=batchposhidprobs;
numhid=numpen2;
rbmnian;
rbm1;%ѵ������
hidpen2=vishid; penrecbiases2=hidbiases; hidgenbiases2=visbiases;
save mnisthp2classify hidpen2 penrecbiases2 hidgenbiases2;

% fprintf(1,'\nPretraining Layer 4 with RBM: %d-%d \n',numpen,numpen3);
% batchdata=batchposhidprobs;
% numhid=numpen3;
% restart=1;
% rbm1;
% hidpen3=vishid; penrecbiases3=hidbiases; hidgenbiases3=visbiases;
% save mnisthp3classify hidpen3 penrecbiases3 hidgenbiases3;

nianbackpropclassify; %����

