% Version 1.000
%
% Code provided by Ruslan Salakhutdinov and Geoff Hinton
%
% Permission is granted for anyone to copy, use, modify, or distribute this
% program and accompanying programs and documents for any purpose, provided
% this copyright notice is retained and prominently displayed, along with
% a note saying that the original programs are available from our
% web page.
% The programs and documents are distributed without any warranty, express or
% implied.  As the programs were written for research purposes only, they have
% not been tested to the degree that would be advisable in any important
% application.  All use of these programs is entirely at the user's own risk.

% This program reads raw MNIST files available at 
% http://yann.lecun.com/exdb/mnist/ 
% and converts them to files in matlab format 
% Before using this program you first need to download files:
% train-images-idx3-ubyte.gz train-labels-idx1-ubyte.gz 
% t10k-images-idx3-ubyte.gz t10k-labels-idx1-ubyte.gz
% and gunzip them. You need to allocate some space for this.  

% This program was originally written by Yee Whye Teh 

% Work with test files first 
fprintf(1,'You first need to download files:\n train-images-idx3-ubyte.gz\n train-labels-idx1-ubyte.gz\n t10k-images-idx3-ubyte.gz\n t10k-labels-idx1-ubyte.gz\n from http://yann.lecun.com/exdb/mnist/\n and gunzip them \n'); 

f = fopen('t10k-images-idx3-ubyte','r');%һ��ȡ��ʽ�򿪣�����f��
[a,count] = fread(f,4,'int32');%��f�е���Ϣ�Ծ���int32�洢��a�У�cout��¼���ֵĸ�����?"4"ָʲô����-��ȡ��ǰ�ĸ���4�����ݹ������������浽a��a��l��acount��ûʹ�ã�Ӧ�������������Ƿ�ת���ɹ���ʧ�ܵĻ�freadʱ�ᱨ��
  
g = fopen('t10k-labels-idx1-ubyte','r');
[l,count] = fread(g,2,'int32');

fprintf(1,'Starting to convert Test MNIST images (prints 10 dots) \n'); %��ʼת��MNISTͼ�񣬲���ӡ10���㣨��������
n = 1000;%test mnist��1000��ͼƬ�����ɣ�;%60������ÿһ������1000������

Df = cell(1,10);%���Դ洢�κ��������ݵľ���
for d=0:9,
  Df{d+1} = fopen(['test' num2str(d) '.ascii'],'w');%��w����ʾ�򿪺�д�����ݣ���test0.ascii��test9.ascii�ֱ�浽Df��λ�ã�cellҲ��������ά�洢���ݣ�
end;
  
for i=1:10,%Ϊʲô�ظ�ʮ�Σ�������ʮ������10000�����������ݴ浽rawlables��
  fprintf('.');%������
  rawimages = fread(f,28*28*n,'uchar');%��ȡf��28*28*n�����ݵ�rawimages��������8λ�޷����ַ�
  rawlabels = fread(g,n,'uchar');%��ȡf��n�����ݵ�rawlables��������8λ�޷����ַ���������n��ͼƬ��Ӧ��ʮ�������֣�
  rawimages = reshape(rawimages,28*28,n);%��rawimages������״�ı�Ϊ28*28�У�n�У����ɾ���ʱ��һ���У�дʱ��һ���У�

  for j=1:n,
    fprintf(Df{rawlabels(j)+1},'%3d ',rawimages(:,j));%��rawimages�ĵ�j�д洢��Df�ĵڣ�rawlabels(j)+1����λ�ã�rawlables�洢����0-9���ʼ�1������ʾ����λ�ã�
    fprintf(Df{rawlabels(j)+1},'\n');%�ٸ�дһ�����з���һ����һ�е�д��.
  end;
end;

fprintf(1,'\n');
for d=0:9,
  fclose(Df{d+1});%�ر�Df{d+1}��ֹͣ��д״̬
  D = load(['test' num2str(d) '.ascii'],'-ascii');%��test' num2str(d) '.ascii��ascii��ʽ����D��
  fprintf('%5d Digits of class %d\n',size(D,1),d);
  save(['test' num2str(d) '.mat'],'D','-mat');%��D����Ϣ�洢Ϊ��mat�ļ���
end;


% Work with trainig files second  
f = fopen('train-images-idx3-ubyte','r');
[a,count] = fread(f,4,'int32');

g = fopen('train-labels-idx1-ubyte','r');
[l,count] = fread(g,2,'int32');

fprintf(1,'Starting to convert Training MNIST images (prints 60 dots)\n'); 
n = 1000;

Df = cell(1,10);
for d=0:9,
  Df{d+1} = fopen(['digit' num2str(d) '.ascii'],'w');
end;

for i=1:60,%why 60������
  fprintf('.');
  rawimages = fread(f,28*28*n,'uchar');
  rawlabels = fread(g,n,'uchar');
  rawimages = reshape(rawimages,28*28,n);

  for j=1:n,
    fprintf(Df{rawlabels(j)+1},'%3d ',rawimages(:,j));
    fprintf(Df{rawlabels(j)+1},'\n');
  end;
end;

fprintf(1,'\n');
for d=0:9,
  fclose(Df{d+1});
  D = load(['digit' num2str(d) '.ascii'],'-ascii');
  fprintf('%5d Digits of class %d\n',size(D,1),d);
  save(['digit' num2str(d) '.mat'],'D','-mat');%digit0�洢��������0��Ӧ������������Ϣ
end;

dos('rm *.ascii');
