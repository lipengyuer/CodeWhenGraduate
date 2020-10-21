% jicun=[x1(133,:); x1(130,:);x1(118,:);x1(110,:);x1(92,:);x1(90,:);x1(76,:);x1(75,:);x1(74,:);x1(74,:);x1(71,:);x1(70,:);x1(68,:);x1(67,:);x1(66,:);x1(64,:);x1(60,:);x1(53,:);x1(52,:);x1(47,:);x1(46,:);x1(45,:);x1(39,:);x1(38,:);x1(37,:);x1(35,:);x1(28,:);x1(27,:);x1(25,:);x1(19,:);x1(18,:);x1(17,:);x1(13,:);x1(10,:);x1(8,:);x1(5,:);x1(3,:);x1(2,:)];
% x21=[x2;jicun];
% x11=x1;
%  x11(133,:)=[];
%  x11(130,:)=[];
%  x11(118,:)=[];
%  x11(110,:)=[];
%  x11(92,:)=[];
%  x11(90,:)=[];
%  x11(76,:)=[];
%  x11(75,:)=[];
%  x11(74,:)=[];
%  x11(74,:)=[];
%  x11(71,:)=[];
%  x11(70,:)=[];
%  x11(68,:)=[];
%  x11(67,:)=[];
%  x11(66,:)=[];
%  x11(64,:)=[];
%  x11(60,:)=[];
%  x11(53,:)=[];
%  x11(52,:)=[];
%  x11(47,:)=[];
%  x11(46,:)=[];
%  x11(45,:)=[];
%  x11(39,:)=[];
%  x11(38,:)=[];
%  x11(37,:)=[];
%  x11(35,:)=[];
%  x11(28,:)=[];
%  x11(27,:)=[];
%  x11(25,:)=[];
%  x11(19,:)=[];
%  x11(18,:)=[];
%  x11(17,:)=[];
%  x11(13,:)=[];
%  x11(10,:)=[];
%  x11(8,:)=[];
%  x11(5,:)=[];
%  x11(3,:)=[];
%  x11(2,:)=[];
data=all;
da(:,1)=data(:,1)/24;%用户名不超过24个字符
da(:,2:3)=data(:,4:5);
da(:,4)=data(:,7)/70;%自我介绍最多70个字

da(:,8:9)=data(:,9:10);
da(:,10:21)=data(:,11:22);
da(:,22)=data(:,23)/2000;
da(:,23)=data(:,24)/10000;
da(:,24)=data(:,25)/10000;
da(:,25)=data(:,26)/2000;
da(:,26:27)=data(:,27:28);

shixu=data(:,29:172);
for m=1:size(data,1)
    shixu_fft(m,:)=abs(real(fft(shixu(m,:))));
end
da(:,28:171)=shixu_fft./repmat(max(shixu_fft(:,1),2),1,144);

da(:,172)=data(:,174)./data(:,173);%平均每条微博被转发的次数
da(:,169)=data(:,175)./data(:,174);%平均每条微博被评论的  次数

meitianfaweishu(:,1)=data(:,173)./data(:,176);%每个客户端所发的微博数
ji_mei=eye(6);
for m=1:size(data,1)
if(meitianfaweishu(m)==0)
    meitianfaweishu_(m,:)=ji_mei(1,:);
elseif(meitianfaweishu(m)>0&&meitianfaweishu(m)<=5)
    meitianfaweishu_(m,:)=ji_mei(2,:);
elseif (meitianfaweishu(m)>5&&meitianfaweishu(m)<=10)
    meitianfaweishu_(m,:)=ji_mei(3,:);    
 elseif (meitianfaweishu(m)>10&&meitianfaweishu(m)<=20)
    meitianfaweishu_(m,:)=ji_mei(4,:);   
 elseif (meitianfaweishu(m)>20&&meitianfaweishu(m)<=40)
    meitianfaweishu_(m,:)=ji_mei(5,:); 
else meitianfaweishu_(m,:)=ji_mei(6,:);
end
end

% meigekehuduanfaweida(:,1)=data(:,169)./data(:,173);

da(:,177:182)=meitianfaweishu_;
da(:,183)=data(:,end)/100;
da1=min(da,1);
biao=[repmat([0 1],293,1);repmat([1 0],101,1)];
data1=[da(:,1:4) da(:,10:21) da(:,22:27)  da(:,28:68) da(:,172:174) da(:,177:182) da(:,183) biao];
