function [a1]=zifutihuan_jiayuanfashijian 
 uidcunfangdizhi='C:\Users\admini\Desktop\aaaaa\pengyu\15mid.txt';
 uidjihe=textread(uidcunfangdizhi,'%s','headerlines',1);
 for n=1:197%txt文件名的范围  
        s=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',uidjihe{n});%连接文件夹名和txt文件名
        ss=strcat(s,'.txt');
        if(exist(ss,'file')==2)
           [a1,a2,a3,a4,a5]=textread(ss,'%s%s%s%s%s','headerlines',0); 
           clear a3;
           if(length(a1)>40000)
              a1=[];
           end
       
           if ~isempty(a1);
             [w]=zifutihuan2(a1,a2);
             clear  a2;
             yuanfashijian=zifutihuan2(a4,a5);
             clear a4 a5;
             w=[yuanfashijian(1,:);w];
             clear w2;
             sss=strcat('C:\Users\admini\Desktop\aaaaa\qwe\qwer\',uidjihe{n});%连接文件夹名和txt文件名
             sss=strcat(sss,'fu.txt');
             fid=fopen(sss,'wt');  
             for m=1:length(w)
%                  fprintf('2\r\n');
                 fprintf(fid,'%d ',w(m,1)); 
                 fprintf(fid,'%d ',w(m,2)); 
                 fprintf(fid,'%d ',w(m,3));   
                 fprintf(fid,'%d\r\n',w(m,4));
             end        
             fclose(fid);
           end              
           fprintf('di %d ge wen jian\n',n);
        end     
        
 end
end
    