function [T RN RI EF]=piliangfit1(x)
shuru=[1:144*3];
wenjiangeshu=200;
cishu=50;

T=zeros(wenjiangeshu,2);
RN=zeros(wenjiangeshu,1);
RI=zeros(wenjiangeshu,144*3);


EF=zeros(wenjiangeshu,1);
   for m=1:wenjiangeshu
       T1=zeros(cishu,2);
       norm=zeros(cishu,1);
       ef=zeros(cishu,1);
%        res=zeros(cishu,);
     fprintf('computing %d\n',m);
      if (sum(x(m,:))~=0)
        %yy=[zeros(1,yanchi) y(1:(288-yanchi))];
       
%          xishu=[10*rand rand*1];
         y=[x(m,1:144*3)]/sum(x(m,:));
         r=shuru;  
         for n=1:cishu
             flag=1;
             fprintf('fitting %d of m=%d\n',n,m);
           while(ef(n)~=1&&ef(n)~=3)
                 fprintf('trying flag %d\n',flag);
                try
                 [a s d f]=fit_piliang(y,r);%lsqcurvefit(@fun1,xishu,r,y);
                 T1(n,:)=a;
                 norm(n)=s;
%                  res(n,:)=d;
                 ef(n)=f;
                 flag=flag+1;
%                  if(ef(n)==1||ef(n)==3)
%                      break;
%                  end
                catch
                 T1(m,:)=ones(1,2);
                 norm(n)=0;
                 res(n,:)=zeros(1,289);
                ef(n)=8;
                end
           end
         end
         
         for n=1:cishu
             if(norm(n)==min(norm))
                 T(m,:)=T1(n,:);
                 RN(m)=norm(n);
%                  RI(m,:)=res(n,:);
                 EF(m)=ef(n);
             end
         end
      end
 
  
   end
end