function qiefenwendang 
%�Թ���ѧ���û��ķ����У��ĵ�����uid�ֱ���кϲ�
%%%%%%%%%%%��ʼ�з��ĵ�%%%%%%
dizhi_uid1 = 'C:\Users\admini\Desktop\aaaaa\depression\stuty����hit����students\hit_uid.txt';%Դ�ļ���uid
dizhi_uid2 = 'C:\Users\admini\Desktop\aaaaa\depression\stuty����hit����students\hit_userinfor_uid.txt';%��ʱ�䡢�ı�˳���Ӧ��uid
dizhi_time = 'C:\Users\admini\Desktop\aaaaa\depression\stuty����hit����students\hit_userinfor_time.txt';%ʱ��
dizhi_text = 'C:\Users\admini\Desktop\aaaaa\depression\stuty����hit����students\hit_userinfor_text.txt';%�ı�

uid = textread(dizhi_uid1);

for m = 1:length(uid)
    str = num2str(uid(m));
    dizhi_time_mubiao = strcat('C:\Users\admini\Desktop\aaaaa\depression\stuty����hit����students\new1\time-',num2str(m),'.txt');
    dizhi_text_mubiao = strcat('C:\Users\admini\Desktop\aaaaa\depression\stuty����hit����students\new1\text-',num2str(m),'.txt');
%     clear str;
    uid_qiuweizhi = textread(dizhi_uid2);%
    weizhi = find(uid_qiuweizhi==uid(m));%��uid�������ݵ�λ��
    weizhi_ = weizhi;
    clear uid_qiuweizhi;%�������
    
    [time1 time2]= textread(dizhi_time,'%s%s','headerlines',0);
    for jishuqi = 1:length(weizhi)%��ȡ��uid��ʱ��
       time_dangqian1{jishuqi,:} = time1{weizhi_(jishuqi)};
       time_dangqian2{jishuqi,:} = time2{weizhi_(jishuqi)};
    end
    clear time;
    
    text = textread(dizhi_text,'%s','headerlines',0);
    for jishuqi = 1:length(weizhi)
       text_dangqian{jishuqi} = text{weizhi_(jishuqi)};
    end%��ȡ��uid���ı�
    clear text;
    
%      fid=fopen(dizhi_time_mubiao','wt');
%      for n=1:length(weizhi)   
%          fprintf(fid,'%s %s',time_dangqian1{n},time_dangqian2{n}); 
%          fprintf(fid,'\n');
%      end
%      fclose(fid);
%  
%       fid=fopen(dizhi_text_mubiao','wt');
%  for n=1:length(weizhi)
%      fprintf(fid,'%s',text_dangqian{n});
%      fprintf(fid,'\n');
%  end
%  fclose(fid);
 fprintf('di %d \n',m);
 save C:\Users\admini\Desktop\aaaaa\depression\stuty����hit����students\asd.txt -utf8 text_dangqian;
end
%%%%%%%%%%�з��ĵ�����%%%%%%%%%%%%



end