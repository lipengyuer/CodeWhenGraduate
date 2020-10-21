function shuchu=zhao(shuru,y)
ku=zeros(9,362880);
for m=1:9
    for n1=1:3
        for n2=1:3
        if(shuru(m,n)~=0)
            for l=1:362880
                if (shuru(m,n)==y(l))
                   ku(m,l)=y(l);
                end
            end
        end
    end
end
shuchu=ku;
end
                