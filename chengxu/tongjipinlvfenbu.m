function pinlvfenbu=tongjipinlvfenbu(x)%统计一个数列中，各水平的样本数量
zhouqishu=40;%周期数
buchang=100;%步长。补偿和周期数决定每段的范围和横轴的长度
pinlvfenbu=zeros(zhouqishu,1);
for m=1:zhouqishu
    for n=1:length(x)
        if(x(n)>=(m-1)*buchang&&x(n)<m*buchang)
           pinlvfenbu(m)=pinlvfenbu(m)+1;
        end
    end
end
end