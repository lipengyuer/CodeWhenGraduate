% 
% clear all
% close all
% 
% maxepoch=20; 
% numhid=200; numpen=500; numpen2=100; %numpen3=200;%500 500 2000
% taitannikeclassify;
% wolege=yidong2;
% yiyangfou;
%  ermubiaoout;
%  save dahezi ermubiaoout;
% 
% clear all
% close all
% 
% maxepoch=30;
% numhid=200; numpen=500; numpen2=100; %numpen3=200;%500 500 2000
% taitannikeclassify;
% wolege=yidong2;
% yiyangfou;
% save dahezi1 ermubiaoout;
% 
% clear all
% close all
% maxepoch=20; 
% numhid=1000; numpen=500; numpen2=100; %numpen3=200;%500 500 2000
% taitannikeclassify;
% wolege=yidong2;
% yiyangfou;
% save dahezi2 ermubiaoout;
% 
% 
% clear all
% close all
% maxepoch=30; 
% numhid=1000; numpen=500; numpen2=100; %numpen3=200;%500 500 2000
% taitannikeclassify;
% wolege=yidong2;
% yiyangfou;
% save dahezi3 ermubiaoout;
% 
% 
% clear all
% close all
% maxepoch=10; 
% numhid=200; numpen=100; numpen2=50; %numpen3=200;%500 500 2000
% taitannikeclassify;
% wolege=yidong2;
% yiyangfou;
% save dahezi4 ermubiaoout;
% 
% 
% clear all
% close all
% maxepoch=20; 
% numhid=200; numpen=2000; numpen2=100; %numpen3=200;%500 500 2000
% taitannikeclassify;
% wolege=yidong2;
% yiyangfou;
% save dahezi5 ermubiaoout;
% M=20;
% success=0;
M=20;
success=0;
% while ~success && M > 0%success为1或M《=0时停止
%       try
%         M = M - 1;  % count epochs?!不管怎么样M是要减一的
%        
%         if M==15&&success==1, end%isnan是什么：将f3中的nan换为1，其他换为0。isinf将inf换为1，其他0
% %         success = 1;
%       catch                                % catch any error which occured in f
%        fprintf('awefwfawf');                             % bisect and try again
%       end
% end
x=0;
  M=1;    
if x>1,y=M+1;z=x-M;end