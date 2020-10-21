load C:\Users\admini\Desktop\aaaaa\depression\粉丝和关注数据.mat
x1=UserInfor_EcoNetworkDegree(:,1:2);
x2=econetwork1;
mean_fansnum_dep=mean(x1(1:108,:));
std_fansnum_dep=std(x1(1:108,:));
mean_fansnum_undep=mean(x1(109:end,:));
std_fansnum_undep=std(x1(109:end,:));
mean_fansnum_hit=mean(x2);
std_fansnum_hit=std(x2);

