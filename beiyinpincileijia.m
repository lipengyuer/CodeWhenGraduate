function bypclj=beiyinpincileijia(x);
 m=length(x);
 sum=zeros(1,m);
 sum(1)=x(1);
 for a=2:m;
     sum(a)=sum(a-1)+x(a);
 end
 bypclj=sum';
end