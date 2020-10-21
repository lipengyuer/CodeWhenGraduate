function [weizhi]=chuli_yiyu_%(s,maxnum)
% % % % % fid=fopen(s);
% % % % % zifuchuan={};
% % % % % jishuqi=1;
% % % % % jishuqi1=0;
% % % % % while jishuqi<=maxnum %(strcmp(fgetl(fid),'')==0)
% % % % %     a=fgetl(fid);
% % % % %      if isempty(a)
% % % % %          break;
% % % % %      end
% % % % %     a1=strrep(a,'   ','wolegequ');
% % % % %     a1=strrep(a1,'  ','wolegequ');
% % % % %     a1=strrep(a1,' ','wolegequ');
% % % % %      
% % % % % a1=strrep(a1,'kapukapukapukapu','kapukapuwolegequkapukapu'); 
% % % % %      a1=strrep(a1,'kapukapu','apukapu');
% % % % %      a2=regexp(a1,'apukapu','split');
% % % % %      if length(a2)==16
% % % % %        for m=1:15
% % % % %         zifuchuan{jishuqi,m}=a2{m};
% % % % %         if strfind(a2{m},'的')
% % % % %             jishuqi1=jishuqi1+1;
% % % % %         end
% % % % %        end
% % % % %      end
% % % % %      jishuqi=jishuqi+1;
% % % % % end
%  fid=fopen('C:\Users\admini\Desktop\aaaaa\depression\depressionTUserInfo1.txt','rt');
%  for m=1:30
%      for n=1:15
%          fprintf(fid,'%s',zifuchuan{m,n});
%      end
%      fprintf(fid,'\n');
%  end
%     
% 
% for m=1:length(zifuchuan)
%     if(strcmp(zifuchuan{m,3},'f'))
%         data(m,1)=1;
%     else data(m,1)=0;
%     end
%     
%     for n=6:12
%         data(m,n-4)=str2num(zifuchuan{m,n});
%     end
% end

x=textread('C:\Users\admini\Desktop\aaaaa\depression\uidbuyiyu_fuben.txt','%s','headerlines',0);
% 查看文件是否存在
for m=1:275%length(x)
      s=strcat('C:\Users\admini\Desktop\aaaaa\depression\a3\all\',x{m},'.txt'); 
%        s=strcat('C:\Users\admini\Desktop\aaaaa\depression\a1\all\',x{m},'.txt'); 
      if(exist(s,'file')==0)
          weizhi(m)=1;
      else weizhi(m)=0;
      end
end
