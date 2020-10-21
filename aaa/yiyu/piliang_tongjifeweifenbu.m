function [zhenheji tianshu weiboshu zhenshitianshu nian2013faweitongji firstday lastday]=piliang_tongjifeweifenbu
% dizhi = 'C:\Users\admini\Desktop\aaaaa\depression\stuty！！hit！！students\new_time\time-';
% dizhi = 'C:\Users\admini\Desktop\aaaaa\depression\a2\time2\';
dizhi = 'C:\Users\admini\Desktop\aaaaa\depression\student\time\time\';
uid=load('C:\Users\admini\Desktop\aaaaa\depression\student\uid_student1502.txt');

% dizhi = 'C:\Users\admini\Desktop\aaaaa\depression\stuty！！hit！！students\data\time\time1\';
% uid=load('C:\Users\admini\Desktop\aaaaa\depression\stuty！！hit！！students\data\hit_uid_part1and2.txt');
% fprintf('%d\n',uid(1));
% zhenheji = zeros(144,length(uid));
% for m = 1:length(uid)
%     dizhi1 = strcat(dizhi,num2str(uid(m)),'.txt');
%     fprintf('%d\n',m);
%     x = load(dizhi1);
%     weiboshu(m)=size(x,1);
%     if(size(x,1)>=20)
%         [heji tianshu(m)] = tongjifaweifenbu_yiyu(x);
%            for n = 1:tianshu(m)
%                zhenheji(:,m) = zhenheji(:,m) + heji((n-1)*144+1:n*144);    
%         end   
%     end
%     heji = 0;
% end

zhenheji = zeros(24,length(uid));
for m = 1:length(uid)
    dizhi1 = strcat(dizhi,num2str(uid(m)),'.txt');
    fprintf('%d\n',m);
    x = load(dizhi1);
    weiboshu(m)=size(x,1);
    if(size(x,1)>=20)
        [heji tianshu(m) zhenshitianshu(m) nian2013faweitongji(m,:) firstday(m,:) lastday(m,:)] = tongjifaweifenbu_yiyu_1(x);
           for n = 1:tianshu(m)
               zhenheji(:,m) = zhenheji(:,m) + heji((n-1)*24+1:n*24);    
       
           end   
    end
    heji = 0;
end
end