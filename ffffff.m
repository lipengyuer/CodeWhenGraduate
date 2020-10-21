function w=ffffff(x);
x=x';
x1=x(1,:);
x2=x(2,:);
b=zeros(1,288)';
g=zeros(1,288)';
       for m=0:23
          for n=0:11
             for a=1:length(x1)
                
                 if x1(a)>=(m+0.05*n)&&x1(a)<(m+0.05*n+0.05)
                  b(m*12+n+1)=b(m*12+n+1)+1;
                  g(m*12+n+1)=g(m*12+n+1)+x2(a);
                 end
             end
          end
       end
w=[b g];
end     
      

 
   
    

