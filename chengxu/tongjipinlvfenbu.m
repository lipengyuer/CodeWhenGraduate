function pinlvfenbu=tongjipinlvfenbu(x)%ͳ��һ�������У���ˮƽ����������
zhouqishu=40;%������
buchang=100;%����������������������ÿ�εķ�Χ�ͺ���ĳ���
pinlvfenbu=zeros(zhouqishu,1);
for m=1:zhouqishu
    for n=1:length(x)
        if(x(n)>=(m-1)*buchang&&x(n)<m*buchang)
           pinlvfenbu(m)=pinlvfenbu(m)+1;
        end
    end
end
end