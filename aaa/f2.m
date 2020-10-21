function w=f2(x)
s=x(:,1);
diyitian=x(1);
tianshu=1;
riqi(1)=x(1);
for jishuqi=1:length(x)
    if(diyitian==x(jishuqi))
        diyitian=diyitian;
    else diyitian=x(jishuqi);
        riqi(tianshu)=x(jishuqi);
        tianshu=tianshu+1;
    end
end
zhongchang=1440*tianshu;

for jishuqi=1:length(x)
    if x(jishuqi)==riqi(tianshu)
        

w=tianshu;
end     