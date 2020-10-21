function [x jishu1 jishu2]=qiatouquwei(shuru)
fuben=flipud(shuru')';
jishu1=0;
jishu2=0;
for m=1:length(shuru)
    if(shuru(m)~=0)
        jishu1=m;
        break;
    end
end

for m=1:length(shuru)
    if(fuben(m)~=0)
        jishu2=m;
        break;
    end
end

x=shuru(jishu1:(length(shuru)-jishu2+1));