function shishi1=shiyishi1(t)
t1=[1:t];
sd1=zeros(t,1);
%sd2=zeros(t,1);
for a=1:t
    sd1(a)=-439.0783*exp(-0.0025*a)+-439.1013*exp(-0.0025*a)+846.8240*exp(-0.002*a);
end
%for a=1:t
 %   sd2(a)=-577.3787*exp(-0.00061963*a)-443.3341*exp(-0.00035622*a)+145.3631*exp(-0.00054063*a);
%end
plot(t1,sd1,'b');%hold on,plot(t1,sd2,'g')
shishi1=sd1;
end
