function qiefenwendang 
%对工大学生用户的分析中，文档按照uid分别进行合并
%%%%%%%%%%%开始切分文档%%%%%%
dizhi_uid1 = 'C:\Users\admini\Desktop\aaaaa\depression\stuty——hit——students\hit_uid.txt';%源文件，uid
dizhi_uid2 = 'C:\Users\admini\Desktop\aaaaa\depression\stuty——hit——students\hit_userinfor_uid.txt';%与时间、文本顺序对应的uid
dizhi_time = 'C:\Users\admini\Desktop\aaaaa\depression\stuty——hit——students\hit_userinfor_time.txt';%时间
dizhi_text = 'C:\Users\admini\Desktop\aaaaa\depression\stuty——hit——students\hit_userinfor_text.txt';%文本

uid = textread(dizhi_uid1);

for m = 1:length(uid)
    str = num2str(uid(m));
    dizhi_time_mubiao = strcat('C:\Users\admini\Desktop\aaaaa\depression\stuty——hit——students\new1\time-',num2str(m),'.txt');
    dizhi_text_mubiao = strcat('C:\Users\admini\Desktop\aaaaa\depression\stuty——hit——students\new1\text-',num2str(m),'.txt');
%     clear str;
    uid_qiuweizhi = textread(dizhi_uid2);%
    weizhi = find(uid_qiuweizhi==uid(m));%与uid符合内容的位置
    weizhi_ = weizhi;
    clear uid_qiuweizhi;%清除变量
    
    [time1 time2]= textread(dizhi_time,'%s%s','headerlines',0);
    for jishuqi = 1:length(weizhi)%读取该uid的时间
       time_dangqian1{jishuqi,:} = time1{weizhi_(jishuqi)};
       time_dangqian2{jishuqi,:} = time2{weizhi_(jishuqi)};
    end
    clear time;
    
    text = textread(dizhi_text,'%s','headerlines',0);
    for jishuqi = 1:length(weizhi)
       text_dangqian{jishuqi} = text{weizhi_(jishuqi)};
    end%读取该uid的文本
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
 save C:\Users\admini\Desktop\aaaaa\depression\stuty——hit——students\asd.txt -utf8 text_dangqian;
end
%%%%%%%%%%切分文档结束%%%%%%%%%%%%



end