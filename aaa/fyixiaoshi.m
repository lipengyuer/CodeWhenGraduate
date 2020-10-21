function w=fyixiaoshi(x)
b=zeros(1,24)';
       for m=0:23
          for a=1:1:length(x)
                 if ((x(a)>=m)&&(x(a)<(m+1)));
                  b(m+1)=b(m+1)+1;
                 end
             end
       end
c=cumsum(b);       
w=[b c];
end     