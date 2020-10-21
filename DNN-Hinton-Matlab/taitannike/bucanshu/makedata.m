xx=zeros(size(x));
for m=1:6
    xx(:,m)=x(:,m)/max(x(:,m));
end
ji=eye(101);
mubiao=zeros(length(y),101);
for m=1:length(y)
    mubiao(m,:)=ji(fix(y(m)),:);
end
batchdata=zeros(10,6,70);
batchtargets=zeros(10,101,70);
for m=1:70
batchdata(:,:,m)=x((1+(m*10-10)):10*m,:);
batchtargets(:,:,m)=mubiao((1+(m*10-10)):10*m,:);
end

testbatchdata=zeros(1,6,8);
testbatchtargets=zeros(1,101,8);
for m=701:708
testbatchdata(:,:,m)=x(m,:);
testbatchtargets(:,:,m)=mubiao(m,:);
end
