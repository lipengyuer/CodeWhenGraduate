function fengzhi = qiufengzhi
x = 0:0.01:100;
y = x.*sin(x);
count = 1;
zheshifengzhi = [];
for m = 2:length(x)-1
    
    if(y(m)>=y(m-1)&&y(m)>=y(m+1))
        zheshifengzhi(count,:)=[x(m) y(m)];
        count = count +1;
    end
end
if(y(1)>max(y)-0.01)
    zheshifengzhi = [zheshifengzhi;x(1) y(1)];
end
if(y(end)>max(y)-0.01)
    zheshifengzhi = [zheshifengzhi;x(end) y(end)];
end
fengzhi = zheshifengzhi;
end