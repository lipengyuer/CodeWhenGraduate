function count=uid_chachong(x)
jishu=1;
count=0;
for m=1:length(x)
    jishu=jishu+1;
    for n=jishu:length(x)
        if(x(m)==x(n))
            count=count+1;
        end
    end
end
end