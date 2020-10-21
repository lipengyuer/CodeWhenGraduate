dizhi_buyiyu='C:\Users\admini\Desktop\aaaaa\depression\uidbuyiyu_fuben.txt';
dizhi_yiyu='C:\Users\admini\Desktop\aaaaa\depression\uidyiyu_fuben.txt';
[uid1]=textread(dizhi_buyiyu,'%s','headerlines',0);
[uid2]=textread(dizhi_yiyu,'%s','headerlines',0);
uid=[uid1;uid2];
huaban=zeros(length(uid),24*6*30*12*5);
yitian=zeros(length(uid),144);
for m=1:length(uid)
    filename=strcat('C:\Users\admini\Desktop\aaaaa\depression\a2\all\',uid{m},'.txt');
    if(m~=43&&m~=56&&m~=70&&m~=76&&m~=85&&m~=96&&m~=97&&m~=172)
        [uidd a b]=textread(filename,'%s%s%s','headerlines',0);%如果只读其中几列，有可能出现读取错误，串行（东北话）了
        for n=1:length(a)/3
            aa{n}=a{(n-1)*3+1};
            bb{n}=b{(n-1)*3+1};
        end
        e=zifutihuan2(aa',bb');
        e=paixu_yiyu(e);
        [d_quan d_qutou d]=tongjifaweifenbu_zhanghushibie(e);
        huaban(m,:)=[d_quan' zeros(1,size(huaban,2)-length(d_quan))];
%     d_fuliye=qiatouquwei(d_quan);
       for jishu=1:size(huaban,2)/(24*6)
          yitian(m,:)=yitian(m,:)+huaban(m,(jishu-1)*24*6+1:jishu*24*6);
       end
       yitian(m,:)=yitian(m,:)/d;
%        yitian(m,:)=real(fft(yitian(m,:)));
    else [uidd a1 b1 wuyong1 wuyong2]=textread(filename,'%s%s%s%s%s','headerlines',0);%如果只读其中几列，有可能出现读取错误，串行（东北话）了
         for n=1:length(a1)/2
            aa1{n}=a1{(n-1)*2+1};
            bb1{n}=b1{(n-1)*2+1};
        end
        e=zifutihuan2(aa1',bb1');
        e=paixu_yiyu(e);
        [d_quan d_qutou d]=tongjifaweifenbu_zhanghushibie(e);
        huaban(m,:)=[d_quan' zeros(1,size(huaban,2)-length(d_quan))];
        for jishu=1:size(huaban,2)/(24*6)
          yitian(m,:)=yitian(m,:)+huaban(m,(jishu-1)*24*6+1:jishu*24*6);
        end
        yitian(m,:)=yitian(m,:)/d;
%         yitian(m,:)=real(fft(yitian(m,:)));
    end
end
