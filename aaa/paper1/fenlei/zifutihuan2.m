function [e]=zifutihuan2(a1,a2)%对较多文件的内容进行修改（字符之类）

 
    %a1{1}='asd';
    a1=strrep(a1,'-',' ');
    a2=strrep(a2,':',' ');
  count=0;  
     for kg=1:length(a1)
       aa2(kg,:)=str2num(a2{kg});
       a21{kg,1}=num2str(aa2(kg,1:2));
       
%        if(strncmp(a21{kg},a2{kg},5)
%        else
%            
           
      
       count=count+1;
     end
    % aa21=strrep(a21,'    ','.');
    for kg=1:length(a21)
        if(aa2(kg,1)>=10&&aa2(kg,2)<10)
             aa21{kg,1}=strrep(a21{kg},'   ','.0');
        end
        
        if(aa2(kg,1)<10&&aa2(kg,2)<10)
             aa21{kg,1}=strrep(a21{kg},'  ','.0');
        end
        
        if(aa2(kg,1)>0&&aa2(kg,1)<10&&aa2(kg,2)>=10)
              aa21{kg,1}=strrep(a21{kg},'  ','.');
        end
        
        if(aa2(kg,1)==0)
            if(aa2(kg,2)<10)
                aa21{kg,1}=strrep(a21{kg},'  ','.0'); 
            else
                aa21{kg,1}=strrep(a21{kg},'  ','.'); 
            end
        end
        
        if(aa2(kg,1)>0&&aa2(kg,2)>=10)
             aa21{kg,1}=strrep(a21{kg},'  ','.');
        end
    end
       
            
%      aa21=strrep(aa21,' ','.');
    
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
    
%     fid=fopen(ss,'r+');
%     for w=1:length(a1)
%     
%     fprintf(fid,'%d ',e(w,1));
%      fprintf(fid,'%d ',e(w,2));
%       fprintf(fid,'%d ',e(w,3));
%        fprintf(fid,'%d\r\n',e(w,4));
%        
%     end
%      fclose(fid);   

 fprintf('wait a monment\n')
end