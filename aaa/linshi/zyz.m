function zyz(x,y)
% a(1,1)=zeros(3);
% a(1,1)=shuru(1:3,1:3);
% a(2,1)=shuru(4:6,1:3);
% a(3,1)=shuru(7:9,1:3);
% a(1,2)=shuru(1:3,4:6);
% a(2,2)=shuru(4:6,4:6);
% a(3,2)=shuru(7:9,4:6);
% a(1,3)=shuru(1:3,7:9);
% a(2,3)=shuru(4:6,7:9);
% a(3,3)=shuru(7:9,7:9);
% 
% b(1)=paijiu(a(1,1),y);
% b(2)=paijiu(a(2,1),y);
% b(3)=paijiu(a(3,1),y);
% b(4)=paijiu(a(1,2),y);
% b(5)=paijiu(a(2,2),y);
% b(6)=paijiu(a(3,2),y);
% b(7)=paijiu(a(1,3),y);
% b(8)=paijiu(a(2,3),y);
% b(9)=paijiu(a(3,3),y);
% 
% bb(1,1)=[paijiu(a(1,1),1:3);paijiu(a(1,1),4:6);paijiu(a(1,1),7:9)]';
% bb(2,1)=[paijiu(a(2,1),1:3);paijiu(a(2,1),4:6);paijiu(a(2,1),7:9)]';
% bb(3,1)=[paijiu(a(3,1),1:3);paijiu(a(3,1),4:6);paijiu(a(3,1),7:9)]';
% bb(1,2)=[paijiu(a(1,1),1:3);paijiu(a(1,1),4:6);paijiu(a(1,1),7:9)]';
% bb(2,2)=[paijiu(a(2,1),1:3);paijiu(a(2,1),4:6);paijiu(a(2,1),7:9)]';
% bb(3,2)=[paijiu(a(3,1),1:3);paijiu(a(3,1),4:6);paijiu(a(3,1),7:9)]';
% bb(1,3)=[paijiu(a(1,1),1:3);paijiu(a(1,1),4:6);paijiu(a(1,1),7:9)]';
% bb(2,3)=[paijiu(a(2,1),1:3);paijiu(a(2,1),4:6);paijiu(a(2,1),7:9)]';
% bb(3,3)=[paijiu(a(3,1),1:3);paijiu(a(3,1),4:6);paijiu(a(3,1),7:9)]';

% shuliang=[length(b1) length(b2) length(b3) length(b4) length(b5) length(b6) length(b7) length(b8) length(b9)];
% weizhi=find(shuliang==min(shuliang));
% 
% m=fix(weizhi/3);
% n=weizhi-m;
% 
% for c=1:length(b(weizhi))
%     if()
%     
for m=1:24
    figure;
    plot(x(:,m),y,'g*');
end
end




