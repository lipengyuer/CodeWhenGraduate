count=0;
count1=0;
weizhi=zeros(1,9192);
bu=sum(pincibuyiyu_quan)/274;
yi=sum(pinciyiyu_quan)/110;
for m=1:9192
    if(bu(m)>0&&yi(m)>0)
        count=count+1;
        bi(m)=yi(m)/bu(m);
    else bi(m)=-1;
    end
    fprintf('di %d\n',m);
end
for m=1:9192
    if((bi(m)>1.2||bi(m)<5/6)&&bu(m)>1)
        count1=count1+1;
        weizhi(m)=1;
        fprintf('%d\n',m);
    else weizhi(m)=0;
    end
%     fprintf('di %d\n',m);
end