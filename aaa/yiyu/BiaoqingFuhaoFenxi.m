% 频率分布
% Num_ganqingfuhao=load('C:\Users\admini\Desktop\aaaaa\depression\NLP\biaoqingfuhao\qingganfuhao.txt');
% Num_ganqingfuhao_100w=load('C:\Users\admini\Desktop\aaaaa\depression\NLP\biaoqingfuhao\BiaoqingFuhao100w.txt');
% Fenbu_ganqingduhao_dep=sum(Num_ganqingfuhao(1:110,:))./sum(sum(Num_ganqingfuhao(1:110,:)));
% Fenbu_ganqingduhao_notdep=sum(Num_ganqingfuhao(111:end,:))./sum(sum(Num_ganqingfuhao(111:end,:)));
% figure;
% plot(Fenbu_ganqingduhao_dep,'r');hold on,plot(Fenbu_ganqingduhao_notdep,'g');hold on,plot(Num_ganqingfuhao_100w/sum(Num_ganqingfuhao_100w));

%极性分布
NumofQingxiang_ganqingfuhao=load('C:\Users\admini\Desktop\aaaaa\depression\NLP\biaoqingfuhao\BiaoqingFuhaoTongji.txt');
a1=NumofQingxiang_ganqingfuhao(1:110,:)./repmat(NumofQingxiang_ganqingfuhao(1:110,1),1,4)+0.00001;
a2=NumofQingxiang_ganqingfuhao(111:end,:)./repmat(NumofQingxiang_ganqingfuhao(111:end,1),1,4)+0.00001;
% zhongxingbi1=Num_ganqingfuhao(1:110,3)./Num_ganqingfuhao(1:110,1)+0.000000001;
% zhongxingbi2=Num_ganqingfuhao(111:end,3)./Num_ganqingfuhao(111:end,1)+0.000000001;
% fuxiangbi1=Num_ganqingfuhao(1:110,4)./Num_ganqingfuhao(1:110,1)+0.000000001;
% fuxiangbi2=Num_ganqingfuhao(111:end,4)./Num_ganqingfuhao(111:end,1)+0.000000001;