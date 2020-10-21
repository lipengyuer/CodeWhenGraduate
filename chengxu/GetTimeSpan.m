function daysSpan = GetTimeSpan(t1,t2)
for i = 1:size(t1,1)
T1=datenum(t1(i,:));
T2=datenum(t2(i,:));
daysSpan(i,1)=T1-T2;
end
end