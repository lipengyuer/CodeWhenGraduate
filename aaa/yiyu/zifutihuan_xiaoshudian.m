function [e aa21]=zifutihuan_xiaoshudian(a1,a2)%对较多文件的内容进行修改（字符之类）
 
%         ss=strcat(s,'.txt');
%     [a1,a2]=textread(s,'%s%s','headerlines',0); 从文件中读取数据 
if(~isempty(a1))
    a1=strrep(a1,'-',' ');%分割年月日
    a2=strrep(a2,':',' ');%分割时分秒
  count=0;  
     for kg=1:length(a1)%计数，到微博总数
       aa2(kg,:)=str2num(a2{kg});
       if(aa2(kg,2)>=10)
           a21{kg,1}=num2str(aa2(kg,1));
           a21{kg,2}=num2str(aa2(kg,2));
       else
      a21{kg,1}=num2str(aa2(kg,1));
      a21{kg,2}=strcat('0',num2str(aa2(kg,2)));
     
%       a21{kg,2}=strcat('0',a21{kg,2});
       end
        aa21{kg}=strcat(a21{kg,1},'.',a21{kg,2});
       count=count+1;
     end
     
%     aa21=strrep(a21i,'   ','.');


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
else e = [1 1 1 1];
end
%     fid=fopen(ss,'r+');
%     for w=1:length(a1)
%     
%     fprintf(fid,'%d ',e(w,1));
%      fprintf(fid,'%d ',e(w,2));
%       fprintf(fid,'%d ',e(w,3));
%        fprintf(fid,'%d\n',e(w,4));
%        
%     end
%      fclose(fid);   
end