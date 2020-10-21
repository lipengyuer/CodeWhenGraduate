function Gailvmidufenbu
x=load('C:\Users\admini\Desktop\aaaaa\depression\dataof376\粉丝和关注数.txt');
x1=x(:,1);
x2=x(:,2);
% x1min=min(x1);
% x1max=max(x1);
% x1p=linspace(x1min,x1max,20);
% f1=ksdensity(x1,x1p);
% figure;
% plot(x1p,f1,'*');
%  
% x2min=min(x2);
% x2max=max(x2);
% x2p=linspace(x2min,x2max,20);
% f2=ksdensity(x2,x2p);
% figure;
figure;
% plot(x2p,f2,'*');
ShowKsDensity(x1(1:142),'*-');hold on,ShowKsDensity(x1(143:end),'o-');
figure;
ShowKsDensity(x2(1:142),'*-');hold on,ShowKsDensity(x2(143:end),'o-');
end

function ShowKsDensity(x,string)
xmin=min(x);
 xmax=max(x);
 xp=linspace(xmin,xmax,20);
 f=ksdensity(x,xp);
 fprintf('%f',sum(f));
 plot(xp,f,string);
% x = normrnd(0,1,1,1000);
% 
% [f, xc] = ecdf(x); % 调用ecdf函数计算xc处的经验分布函数值f
% 
% xx = linspace(min(x),max(x),50);
% 
% y = [];
% 
% for i=1:length(xx)
%     
%     id = find(xc <= xx(i));
%     if ~isempty(id)
%         
%         y(i) = f(id(end));
%         
%     else
%         y(i) = 0;
%         
%     end
% end
% stairs(xc,f);
% hold on
% plot(xx,y,'.r');

end

