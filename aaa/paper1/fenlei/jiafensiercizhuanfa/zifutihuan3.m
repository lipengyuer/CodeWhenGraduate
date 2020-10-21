function [e1]=zifutihuan3(a1,a2,a3,a4)%对较多文件的内容进行修改（字符之类）

 
    %a1{1}='asd';
    a1=strrep(a1,'-',' ');
    a2=strrep(a2,':',' ');
    aa3=zeros(length(a1),1);
    aa4=zeros(length(a1),1);
  count=0;  
     for kg=1:length(a1)
       aa2(kg,:)=str2num(a2{kg});
       a21{kg,1}=num2str(aa2(kg,1:2));
       aa3(kg,1)=str2num(a3{kg});
        aa4(kg,1)=str2num(a4{kg});

      fprintf('3\r\n');
       count=count+1;
     end
   
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
        fprintf('4\r\n');
    end
       
            
  
    for w=1:length(a1)
        str1=a1{w};
        str2=aa21{w};
        c{w,1}=[str1 blanks(1) str2];
        fprintf('5\r\n');
    end
   
    for w=1:length(a1)
        e(w,:)=str2num(c{w});
        fprintf('6\r\n');
    end
    e1=[e aa3 aa4];

 
end