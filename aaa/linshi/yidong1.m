function [wo]=yidong1

% dizhi_x='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-name.txt';
% dizhi_z='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-ticket.txt';
% dizhi_y='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-others.txt';
% dizhi_w='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-cabin.txt';

dizhi_x='C:\Users\admini\Desktop\NEWB\survivor\shiyan\test-name.txt';
dizhi_z='C:\Users\admini\Desktop\NEWB\survivor\shiyan\test-cabin.txt';
dizhi_y='C:\Users\admini\Desktop\NEWB\survivor\shiyan\test-others.txt';
dizhi_w='C:\Users\admini\Desktop\NEWB\survivor\shiyan\test-cabin.txt';

x=textread(dizhi_x,'%s','headerlines',0); 
z=textread(dizhi_z,'%s','headerlines',0); 
y=load(dizhi_y);
w=textread(dizhi_w,'%s','headerlines',0); 
a=zeros(length(x),70);
aa=a;
bb=zeros(size(y));

 for n=1:length(x)
     zaiti=int8(x{n});
     a(n,:)=[zeros(1,size(a,2)-length(zaiti)) zaiti];
  
 end
 for m=1:size(a,2)
    if(sum(a(:,m))~=0)
         aa(:,m)=a(:,m)/max(a(:,m));
    end
 end
 
 for n=1:size(y,2)
     if(sum(y(:,n))~=0)
         bb(:,n)=y(:,n)/max(y(:,n));
     end
 end

 c=zeros(length(z),25);
 for n=1:length(z)
     zaiti=int8(z{n});
     c(n,:)=[zeros(1,size(c,2)-length(zaiti)) zaiti];
  
 end
 
 cc=zeros(size(c));
 for m=1:size(c,2)
    if(sum(c(:,m))~=0)
         cc(:,m)=c(:,m)/max(c(:,m));
    end
 end
 
  d=zeros(length(w),25);
 for n=1:length(w)
     zaiti=int8(w{n});
     d(n,:)=[zeros(1,size(d,2)-length(zaiti)) zaiti];
  
 end
 
 dd=zeros(size(d));
 for m=1:size(d,2)
    if(sum(d(:,m))~=0)
         dd(:,m)=d(:,m)/max(d(:,m));
    end
 end
   wo=[aa bb cc dd];
%   
%  for n=1:length(x)
%     for m=1:100
%        b{n,m}=dec2bin(a(n,m));
%     end
%  end
end
        