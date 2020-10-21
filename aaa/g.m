function w=g(x)
x=x';

b=zeros(1,288)';

       for m=0:23
          for n=0:11
             for a=1:length(x)
                
                 if x(a)>=(m+0.05*n)&&x(a)<(m+0.05*n+0.05)
                  b(m*12+n+1)=b(m*12+n+1)+1;
              
                 end
             end
          end
       end
w=b;
end     