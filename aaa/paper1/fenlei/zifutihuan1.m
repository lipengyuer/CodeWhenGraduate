function [e a21]=zifutihuan1(a1,a2)%�Խ϶��ļ������ݽ����޸ģ��ַ�֮�ࣩ
 
%         ss=strcat(s,'.txt');
%     [a1,a2]=textread(s,'%s%s','headerlines',0); ���ļ��ж�ȡ���� 
if(~isempty(a1))
    a1=strrep(a1,'-',' ');%�ָ�������
    a2=strrep(a2,':',' ');%�ָ�ʱ����
  count=0;  
     for kg=1:length(a1)%��������΢������
       aa2(kg,:)=str2num(a2{kg});
       a21{kg,1}=num2str(aa2(kg,1:2));
      
       count=count+1;
     end
     
    aa21=strrep(a21,'   ','.');
    aa21=strrep(aa21,'  ','.');

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