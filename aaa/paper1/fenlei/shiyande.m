function shiyande
for n=1:200
    e=shiyanzifutihuan(n);
   for m=1:length(e)
       if(e(m,2)==1||e(m,2)==3||e(m,2)==5||e(m,2)==7||e(m,2)==8||e(m,2)==10||e(m,2)==12)
           xushu(m)=e(m,5)+60*e(m,4)+60*24*e(m,3)+60*24*31*e(m,2);
       elseif(e(m,2)==2)
           xushu(m)=e(m,5)+60*e(m,4)+60*24*e(m,3)+60*24*28*e(m,2);
       else
            xushu(m)=e(m,5)+60*e(m,4)+60*24*e(m,3)+60*24*30*e(m,2);