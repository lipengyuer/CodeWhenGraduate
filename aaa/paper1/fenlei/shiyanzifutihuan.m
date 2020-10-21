function e=shiyanzifutihuan%对较多文件的内容进行修改（字符之类）
n=1
s=strcat('C:\Users\admini\Desktop\',int2str(n));%连接文件夹名和txt文件名
        ss=strcat(s,'.txt');
    [a1,a2]=textread(ss,'%s%s','headerlines',0);  
    %a1{1}='asd';
    a1=strrep(a1,'-',' ');
    a2=strrep(a2,':',' ');
  count=0;  
     for kg=1:length(a1)
         aa1(kg,:)=str2num(a1{kg});
         aa2(kg,:)=str2num(a2{kg});
       count=count+1;
     end

%     for w=1:length(a1)
%         str1=a1{w};
%         str2=a2{w};
%         c{w,1}=[str1 blanks(1) str2];
%     end
%     for w=1:length(a1)
%         e1(w,:)=str2num(c{w});
%     end
    e1=[aa1 aa2(:,1) aa2(:,2)];
    e=paixu1(e1);
    fid=fopen(ss,'r+');
    for w=1:length(e)
    
    fprintf(fid,'%d ',e(w,1));
    fprintf(fid,'%d ',e(w,2));
    fprintf(fid,'%d ',e(w,3));
    fprintf(fid,'%d ',e(w,4));
    fprintf(fid,'%d\r\n',e(w,5));
       
    end
     fclose(fid);   
end