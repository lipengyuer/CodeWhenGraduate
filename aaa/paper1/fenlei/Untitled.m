function xx=cunshushijian(nianshu,tianshu,yueshu,nian,x,tian,yue)
xx=zeros(50000,50);
for woqu=1:nianshu
  for a=1:tianshu
    
    for d=1:yueshu
        jishuqi=1;
      for c=1:q
        if(x(c,1)==nian(woqu)&&x(c,2)==yue(d)&&x(c,3)==tian(a))
           xx(jishuqi,a)=x(c,4);
           jishuqi=jishuqi+1;
        end
      end
    end
  end
end%�������ʱ�̴洢��һ������xx�Ĳ�ͬ����