function [wo]=yidong2

% dizhi_x='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-name.txt';
% dizhi_z='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-ticket.txt';
% dizhi_y='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-others.txt';
% dizhi_w='C:\Users\admini\Desktop\NEWB\survivor\shiyan\train-cabin.txt';
dizhi_y='C:\Users\admini\Desktop\NEWB\survivor\shiyan\test-others.txt';



y=load(dizhi_y);
 
 for n=1:size(y,2)
     if(sum(y(:,n))~=0)
         bb(:,n)=y(:,n)/max(y(:,n));
     end
 end

 

   wo=[bb];
%   
%  for n=1:length(x)
%     for m=1:100
%        b{n,m}=dec2bin(a(n,m));
%     end
%  end
end
        