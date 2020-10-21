function x = shiyan_renwuduilie
time_fangzhenshichang = 1000;
x = 0;
count = 1;
houxuanrenwushu = 10;
for m = 1:time_fangzhenshichang
    for n = 1:houxuanrenwushu 
        t_alp = normrnd(0,1);
        if(t_alp>0) 
            x(count) = rand; 
            y(count) = t_alp;
            count = count + 1;
        end
    end
    x(x==max(x)) = [];
    count = length(x) + 1;
end
end
        