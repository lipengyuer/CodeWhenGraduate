function [hezi z geshu]=piliangzonghet_jiayuanfashijian%�������������z������΢���Ĵ������ߣ���hezi�������벢��͵Ľ����
jilutianshu=5;
z=zeros(13,144*jilutianshu,1);
geshu=zeros(13,1);
hezi=zeros(144*jilutianshu,13);
wenjianjiadizhi={'C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time7\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time10\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time11\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time12\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time13\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time14\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time15\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time16\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time17\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time18\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time20\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time21\','C:\Users\admini\Desktop\aaaaa\dataaaaaa\Time22\'};
middizhi={'C:\Users\admini\Desktop\aaaaa\pengyu\7mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\10mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\11mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\12mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\13mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\14mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\15mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\16mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\17mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\18mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\20mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\21mid.txt','C:\Users\admini\Desktop\aaaaa\pengyu\22mid.txt'};
for m=1:13
    mid=textread(middizhi{m},'%s','headerlines',0);
    for n=1:length(mid)
        if(exist((strcat(wenjianjiadizhi{m},mid{n},'fu.txt')),'file'))%txt�ļ����ķ�Χ
           s=strcat(wenjianjiadizhi{m},mid{n},'fu.txt');%�����ַ������ļ�������txt�ļ�����--��ַ
           w=load(s);
           fprintf('m=%d,n=%d\n',m,n);
           if ~isempty(w)
               [jieguo]=piliangzht(w);%piliangzht(w);û�з�˿����
               geshu(m)=geshu(m)+1;
               clear w;
               hezi(:,m)=hezi(:,m)+jieguo;
               z(m,:,n)=jieguo;
           end
        else z(m,:,n)=zeros(144*jilutianshu,1);
        end
    end
end