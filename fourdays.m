function woqu=fourdays(x);
x1=x(:,1)';
x2=x(:,2)';
b=zeros(1,1152);
g=zeros(1,1152);

b1=zeros(4,288);
g1=zeros(4,288);
y1=zeros(4,1000000);
z1=zeros(4,1000000);
t=zeros(1,4);
yunzai=0;
kaitou=0;
e=1;
    for p=1:length(x1)
    if x1(p)>=24;break;end
       
        t(1,e)=t(1,e)+1;
        yunzai=yunzai+1;
    end
    p=1;
    for q=1:t(1,e);
    y1(e,q)=x1(p);
    z1(e,q)=x2(p);
    p=p+1;
    end
    
 e=2;
 kaitou=yunzai;
 for p=kaitou:length(x1)
    if x1(p)>=24;break;end
       
        t(1,e)=t(1,e)+1;
        yunzai=yunzai+1;
    end
    
       p=kaitou;
    for q=1:t(1,e);
    y1(e,q)=x1(p);
    z1(e,q)=x2(p);
    p=p+1;
    end
    
    e=3;
     kaitou=yunzai;
 for p=kaitou:length(x1)
    if x1(p)>=24;break;end
       
        t(1,e)=t(1,e)+1;
        yunzai=yunzai+1;
    end
   
       p=kaitou;
    for q=1:t(1,e);
    y1(e,q)=x1(p);
    z1(e,q)=x2(p);
    p=p+1;
    end
    
    e=4;
     kaitou=yunzai;
 for p=kaitou:length(x1)
    if x1(p)>=24;break;end
       
        t(1,e)=t(1,e)+1;
        yunzai=yunzai+1;
    end
    p=kaitou;
    for q=1:t(1,e);
    y1(e,q)=x1(p);
    z1(e,q)=x2(p);
    p=p+1;
    end
%fen ge%




%jisuan%
for e=1:4   
for m=0:23
          for n=0:11
             for q=1:t(1,e)
                
                 if y1(e,q)>=(m+0.05*n)&&y1(e,q)<(m+0.05*n+0.05)
                  b1(e,m*12+n+1)=b1(e,m*12+n+1)+1;
                  g1(e,m*12+n+1)=g1(e,m*12+n+1)+z1(e,q);
                 end
             end
          end
end

end
b=[b1(1,:) b1(2,:) b1(3,:) b1(4,:)];

g=[g1(1,:) g1(2,:) g1(3,:) g1(4,:)];

woqu=[b' g'];

 end     
      

 
   