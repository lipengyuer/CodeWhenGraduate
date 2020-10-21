data_un=sum(data1(1:273,:))/273;
data_de=sum(data1(274:end,:))/(382-273);
xuhao=1:9192;
hezi_un=[data_un(1:9192);xuhao]';
hezi_de=[data_de(1:9192);xuhao]';
hezi_un1=sortrows(hezi_un,-1);
hezi_de1=sortrows(hezi_de,-1);
plot(data_un(1:9194),'g-');hold on,plot(data_de(1:9194),'r-');
