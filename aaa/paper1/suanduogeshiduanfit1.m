
for i=3
    x=reshape(wowo(i,:,:),720,200);
    [T RN RI EF]=piliangfit1(x');
    TT(i,:,:)=T;
    RRN(i,:)=RN';
    RRI(i,:,:)=RI;
    EEF(i,:)=EF';
    fprintf('di %d ge shi duan',i);
end