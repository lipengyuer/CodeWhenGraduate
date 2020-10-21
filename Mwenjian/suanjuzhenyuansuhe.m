function suan=suanjuzhenyuansuhe(a,b,c);
j=1;
sum=0;
for i=1:b;
  for j=1:c;
        sum=sum+a(i,j);
  end
end
suan=sum;
end