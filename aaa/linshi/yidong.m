function [y]=yidong(x)
 
%  ji1=eye(4);
%  ji2=eye(3);
%  ji3=eye(101);
%  ji4=eye(11);
%  ji5=eye(11);
%  ji6=eye(1001);
%  ji7=eye(4);
%  
%  z=zeros(891,4+3+101+11+11+1001+3);
%      for n=1:891
%       z(n,1:4)=ji1(x(n,1)+1,:);    
%      end
%       for n=1:891
%       z(n,5:7)=ji2(x(n,2)+1,:);    
%       end
%       for n=1:891
%       z(n,8:108)=ji3(x(n,3)+1,:);    
%       end
%       for n=1:891
%       z(n,109:119)=ji4(x(n,4)+1,:);    
%       end
%       for n=1:891
%       z(n,120:130)=ji5(x(n,5)+1,:);    
%       end
%       for n=1:891
%       z(n,131:1131)=ji6(x(n,6)+1,:);    
%       end
%       for n=1:891
%       z(n,1132:1135)=ji7(x(n,7)+1,:);    
%       end 
ji=eye(10);
y=[];
for m=1:length(x)
    y(m,:)=ji(x+1);
end
    
end
