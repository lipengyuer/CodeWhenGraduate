function piliang_zifutihuan_yiyu
dizhi ='C:\Users\admini\Desktop\aaaaa\depression\student\time\';
uid=load('C:\Users\admini\Desktop\aaaaa\depression\student\uid_student1502.txt');
% dizhi ='C:\Users\admini\Desktop\aaaaa\depression\a2\all\';
% uid=load('C:\Users\admini\Desktop\aaaaa\depression\uid_all2.txt');
% dizhi = 'C:\Users\admini\Desktop\aaaaa\depression\stuty！！hit！！students\data\time\';
% uid=load('C:\Users\admini\Desktop\aaaaa\depression\stuty！！hit！！students\data\hit_uid_part1and2.txt');
for m =1:length(uid)
    dizhi1 = strcat(dizhi,num2str(uid(m)),'.txt');
    fprintf('%d\n',m);
%      [a1,a2,a3,a4,a5,a6,a7]=textread(dizhi1,'%s%s%s%s%s%s%s','headerlines',0); 
     [a2,a3]=textread(dizhi1,'%s%s','headerlines',0); %hit方象
%     e = zifutihuan1(a2,a3);
    e=zifutihuan_xiaoshudian(a2,a3);
    
%     ss = strcat('C:\Users\admini\Desktop\aaaaa\depression\stuty！！hit！！students\data\time\time1\',num2str(uid(m)),'.txt');
ss = strcat('C:\Users\admini\Desktop\aaaaa\depression\student\time\time\',num2str(uid(m)),'.txt');
    fid=fopen(ss,'w+');
    for w=1:size(e,1)
    fprintf(fid,'%d ',e(w,1));
    fprintf(fid,'%d ',e(w,2));
    fprintf(fid,'%d ',e(w,3));
    fprintf(fid,'%d\n',e(w,4));
       
    end
     fclose(fid); 
end
end