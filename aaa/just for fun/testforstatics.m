%统计学实验
function [out touxiang] = testforstatics(num)
touxiang=0;
pinci = zeros(1,400);
   for m = 1:num    
       temp = clock;
       temp = sum(temp(4:6))*sum(temp(2:3));
       temp = round(temp/10);
       normrnd('seed',temp);
       out(m) = normrnd(0,1);
%        for n = -200:199%概率直方图
%            if (out(m)>=n/100&&out(m)<n/100+0.01)
%                pinci(1,n+201) = pinci(1,n+201)+1;
%            end
%        end
     if (out(m)>0)
         touxiang = touxiang+1;
     end
   end
end