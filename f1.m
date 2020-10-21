function w=f1(x)
b=zeros(1,1440)';
       for m=0:23
          for n=0:59
             for a=1:1:length(x)
                 if x(a)==m+0.01*n;
                  b(m*60+n+1)=b(m*60+n+1)+1;
                 end
             end
          end
       end
c=cumsum(b);       
w=[b c];
end     