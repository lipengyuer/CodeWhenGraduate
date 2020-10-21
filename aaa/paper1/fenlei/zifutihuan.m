function [c e]=zifutihuan%对较多文件的内容进行修改（字符之类）
% fid=open('C:\Users\admini\Desktop\aaaaa\qwe\1.txt','r');
% [a b c]=textread(fid,'d% d% d%');
% fclose(fid);
  %s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\',int2str(n));%连接字符串
    %r=load(strcat(s,'.txt'));
%      w=strcat('y',int2str(n));
%      w=load(strcat(s,'.txt'));
   % y(n)=eval(s);
     
     %hezi=hezi+piliangzht(load(strcat(s,'.txt')));
    % w=load(strcat(s,'.txt'));
  for n=1:200%txt文件名的范围
        s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',int2str(n));%连接文件夹名和txt文件名
        ss=strcat(s,'.txt');
    [a1,a2]=textread(ss,'%s%s','headerlines',0);  
    %a1{1}='asd';
    a1=strrep(a1,'-',' ');
    a2=strrep(a2,':',' ');
    fprintf('%d\n',n);
  count=0;  
     for kg=1:length(a1)
       aa2(kg,:)=str2num(a2{kg});
       a21{kg,1}=num2str(aa2(kg,1:2));
      
       count=count+1;
     end
    % aa21=strrep(a21,'    ','.');
    aa21=strrep(a21,'   ','.');
    aa21=strrep(aa21,'  ','.');
%       aa21=strrep(a21,' ','.');
%     for kg=1;length(a2)
%         aaa2{kg}=strcat(aa2(kg,1),'.');
% %         aaaa2{kg}=strcat(aaa2{kg},aa2{kg,2});
%     end
%     d=a2;
%     d=strrep(d,'',' ');
    % u=num2str(w);
%     b1=cell2mat(a1);
%     b2=cell2mat(a2);
%     d=blanks(length(b1));
%     d=cell2mat(d)';
    %c1=mat2
    %c=[b1 d b2];
    for w=1:length(a1)
        str1=a1{w};
        str2=aa21{w};
        c{w,1}=[str1 blanks(1) str2];
    end
%     e=str2num(c);
%     f=str2num(c);
    for w=1:length(a1)
        e(w,:)=str2num(c{w});
    end
    
    fid=fopen(ss,'r+');
    for w=1:length(a1)
    
    fprintf(fid,'%d ',e(w,1));
     fprintf(fid,'%d ',e(w,2));
      fprintf(fid,'%d ',e(w,3));
       fprintf(fid,'%d\r\n',e(w,4));
       
    end
     fclose(fid);   
  end
end